import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:formz/formz.dart';
import 'package:generic_usecase/generic_usecase.dart';
import 'package:mobx/mobx.dart';
import 'package:uniqtrack/core/common/activity.dart';
import 'package:uniqtrack/core/common/common_ui/common_ui_delegate.dart';
import 'package:uniqtrack/core/common/exceptions/exceptions.dart';
import 'package:uniqtrack/core/common/strings/app_strings.dart';
import 'package:uniqtrack/core/common/validation/entities/comment.dart';
import 'package:uniqtrack/core/common/validation/entities/memory_name.dart';
import 'package:uniqtrack/features/tracks/domain/entities/entities.dart';
import 'package:uniqtrack/features/tracks/domain/image_repository.dart';
import 'package:uniqtrack/features/tracks/presentation/add_or_edit_memory/add_or_edit_memory_result.dart';
import 'package:uuid/uuid.dart';

import 'states/add_or_edit_memory_actions.dart';
import 'states/add_or_edit_memory_mode_state.dart';

part 'add_or_edit_memory_store.g.dart';

abstract interface class AddOrEditMemoryStoreBuilder {
  AddOrEditMemoryStore create(
    BuildContext context, {
    required Position? position,
    required Memory? memory,
    required Track? track,
  });
}

class AddOrEditMemoryStore = _AddOrEditMemoryStore with _$AddOrEditMemoryStore;

abstract class _AddOrEditMemoryStore with Store {
  final ImageRepository _imagesRepository;
  final CommonUIDelegate _commonUIDelegate;
  final Uuid _uuid;

  final Usecase<(Track, Memory), Either<AppError, void>>? _updateMemoryUseCase;
  final Usecase<(Track, Memory), Either<AppError, void>>? _removeMemoryUseCase;

  @observable
  AddOrEditMemoryModeState modeState;

  @observable
  Comment comment;

  @observable
  MemoryName memoryName;

  @observable
  FormzSubmissionStatus saveStatusState = FormzSubmissionStatus.initial;

  @observable
  FormzSubmissionStatus deleteStatusState = FormzSubmissionStatus.initial;

  @observable
  FormzSubmissionStatus downloadImageStatus = FormzSubmissionStatus.initial;

  @computed
  bool get canAddPhoto =>
      !downloadImageStatus.isInProgress &&
      !deleteStatusState.isInProgress &&
      !saveStatusState.isInProgress;

  @computed
  bool get canDelete =>
      !downloadImageStatus.isInProgress &&
      !deleteStatusState.isInProgress &&
      !saveStatusState.isInProgress;

  @MakeObservable(useDeepEquality: true)
  List<String> photos;

  @observable
  Activity<AddOrEditMemoryActions>? actions;

  @computed
  bool get canSaveChanges {
    return modeState.when(
      pure: _canSaveWhenPureMode,
      add: _canSaveWhenAddMode,
      edit: _canSaveWhenEditMode,
    );
  }

  _AddOrEditMemoryStore({
    required Uuid uuid,
    required ImageRepository imagesRepository,
    required CommonUIDelegate commonUIDelegate,
    required Usecase<(Track, Memory), Either<AppError, void>>?
        updateMemoryUseCase,
    required Usecase<(Track, Memory), Either<AppError, void>>?
        removeMemoryUseCase,
    required Position? position,
    required Memory? memory,
    required Track? track,
  })  : _imagesRepository = imagesRepository,
        _commonUIDelegate = commonUIDelegate,
        _uuid = uuid,
        _updateMemoryUseCase = updateMemoryUseCase,
        _removeMemoryUseCase = removeMemoryUseCase,
        modeState = _initialModeState(
          track: track,
          position: position,
          memory: memory,
        ),
        memoryName = _initialMemoryName(memory),
        comment = _initialComment(memory),
        photos = _initialPhotos(memory);

  @action
  void updateMemoryName(String? value) {
    if (value == null) return;

    final newMemoryName = MemoryName.dirty(value);
    memoryName = newMemoryName;
  }

  @action
  void updateComment(String? value) {
    if (value == null) return;

    final newComment = Comment.dirty(value);
    comment = newComment;
  }

  @action
  void addPicture() {
    final showImageSourceChooserAction =
        AddOrEditMemoryActions.showImageSourceChooser(
      chooseImageFromGallery: _chooseImageFromGallery,
      chooseImageFromCamera: _chooseImageFromCamera,
    );

    final activity = Activity(showImageSourceChooserAction);
    actions = activity;
  }

  @action
  Future<void> _chooseImageFromGallery() async {
    final result = await _imagesRepository.chooseImageFromGallery();

    result.fold(
      (error) {
        return _handleFailureChooseImage(
          error,
          callback: _chooseImageFromGallery,
        );
      },
      _handleSuccessChooseImage,
    );
  }

  @action
  Future<void> _chooseImageFromCamera() async {
    final result = await _imagesRepository.chooseImageFromCamera();

    result.fold(
      (error) => _handleFailureChooseImage(
        error,
        callback: _chooseImageFromCamera,
      ),
      _handleSuccessChooseImage,
    );
  }

  @action
  void saveChanges() {
    if (!canSaveChanges) return;

    modeState.whenOrNull(
      add: _saveChangesWhenAddMode,
      edit: _saveChangesWhenEditMode,
    );
  }

  @action
  void deleteMemory() {
    if(!canDelete) return;

    modeState.whenOrNull(
      edit: _deleteMemoryWhenEditMode,
    );
  }

  @action
  void deletePhotoByIndex(int index) {
    final oldPhotos = photos;
    final newPhotos = List.of(oldPhotos, growable: true)..removeAt(index);

    photos = newPhotos;
  }

  Future<void> _handleSuccessChooseImage(
      PermissionResult<Uint8List?> result) async {
    return result.fold(
      _handleChooseImageSuccessResult,
      _handleChooseImageFailureResult,
    );
  }

  void _handleFailureChooseImage(
    AppError error, {
    required VoidCallback callback,
  }) {
    if (error.isCancelError) return;

    final header = error.header();
    final body = error.body();
    final close = error.close();

    final activity = error.activity(
      requestPermissionAgain: callback,
      openSettings: _commonUIDelegate.openAppSettings,
    );

    _commonUIDelegate.cupertinoDialog(
      header: header,
      activity: activity,
      close: close,
      body: body,
    );
  }

  bool _canSaveWhenPureMode() {
    return false;
  }

  bool _canSaveWhenAddMode(Position position) {
    final allInputs = <FormzInput>[memoryName];

    final isAllInputsValid = allInputs.every(
      (item) => item.isValid,
    );

    return isAllInputsValid &&
        saveStatusState != FormzSubmissionStatus.inProgress &&
        downloadImageStatus != FormzSubmissionStatus.inProgress;
  }

  bool _canSaveWhenEditMode(EditMemorySource source) {
    return source.when(
      online: (_, memory) => _canSaveWhenEditLocalMode(memory),
      local: _canSaveWhenEditLocalMode,
    );
  }

  bool _canSaveWhenEditLocalMode(Memory memory) {
    final allInputs = <FormzInput>[memoryName];

    final isAllInputsValid = allInputs.every(
      (item) => item.isValid,
    );

    final isDifferentNames = memoryName.value != memory.name;
    final isDifferentComment = comment.value != memory.comment;
    final isDifferentPhotos = !listEquals(photos, memory.photos);

    final isHasDifference =
        isDifferentNames || isDifferentComment || isDifferentPhotos;

    return isHasDifference &&
        isAllInputsValid &&
        saveStatusState != FormzSubmissionStatus.inProgress &&
        downloadImageStatus != FormzSubmissionStatus.inProgress;
  }

  void _saveChangesWhenAddMode(Position position) {
    final memory = Memory(
      id: _uuid.v1(),
      creatorId: null,
      name: memoryName.value,
      comment: comment.value,
      photos: photos,
      position: position,
    );

    final result = AddOrEditMemoryResult.add(memory: memory);
    final navigateWithResultAction =
        AddOrEditMemoryActions.navigateWithResult(result: result);
    actions = Activity(navigateWithResultAction);
  }

  void _saveChangesWhenEditMode(EditMemorySource source) {
    source.when(
      online: _saveChangesWhenEditOnlineMode,
      local: _saveChangesWhenEditLocalMode,
    );
  }

  Future<void> _saveChangesWhenEditOnlineMode(
      Track track, Memory memory) async {
    if (_updateMemoryUseCase == null) return;

    final newMemory = memory.copyWith(
      name: memoryName.value,
      comment: comment.value,
      photos: photos,
    );

    saveStatusState = FormzSubmissionStatus.inProgress;

    final updateMemoryResult =
        await _updateMemoryUseCase.call((track, newMemory));

    updateMemoryResult.fold(
      _handleUpdateMemoryFailureResult,
      _handleUpdateMemorySuccessResult,
    );
  }

  void _handleUpdateMemoryFailureResult(AppError error) {
    saveStatusState = FormzSubmissionStatus.failure;

    final header = error.header();
    final body = error.body();

    _commonUIDelegate.cupertinoDialog(
      header: header,
      body: body,
    );
  }

  void _handleUpdateMemorySuccessResult(_) {
    final duration = const Duration(milliseconds: 300);

    saveStatusState = FormzSubmissionStatus.success;

    final navigateBack = AddOrEditMemoryActions.navigateBack();
    actions = Activity(navigateBack);

    Future.delayed(duration, () {
      final header = AppStrings.notification();
      final body = AppStrings.dataHasBeenSuccessfullyUpdated();

      _commonUIDelegate.cupertinoDialog(header: header, body: body);
    });
  }

  void _saveChangesWhenEditLocalMode(Memory memory) {
    final newMemory = memory.copyWith(
      name: memoryName.value,
      comment: comment.value,
      photos: photos,
    );

    final result = AddOrEditMemoryResult.edit(memory: newMemory);
    final navigateWithResultAction =
        AddOrEditMemoryActions.navigateWithResult(result: result);
    actions = Activity(navigateWithResultAction);
  }

  void _deleteMemoryWhenEditMode(EditMemorySource source) {
    source.whenOrNull(
      local: _deleteMemoryWhenEditLocalMode,
      online: _deleteMemoryWhenEditOnlineMode,
    );
  }

  void _deleteMemoryWhenEditLocalMode(Memory memory) {
    final result = AddOrEditMemoryResult.remove(memory: memory);

    final navigateWithResultAction =
        AddOrEditMemoryActions.navigateWithResult(result: result);
    actions = Activity(navigateWithResultAction);
  }

  @action
  Future<void> _deleteMemoryWhenEditOnlineMode(
      Track track, Memory memory) async {
    if (_removeMemoryUseCase == null) return;

    deleteStatusState = FormzSubmissionStatus.inProgress;

    final result = await _removeMemoryUseCase.call((track, memory));

    result.fold(
      _handleDeleteMemoryFailureResult,
      _handleDeleteMemorySuccessResult,
    );
  }

  void _handleDeleteMemoryFailureResult(AppError error) {
    deleteStatusState = FormzSubmissionStatus.failure;

    final header = error.header();
    final body = error.body();

    _commonUIDelegate.cupertinoDialog(header: header, body: body);
  }

  void _handleDeleteMemorySuccessResult(_) {
    final duration = const Duration(milliseconds: 300);

    deleteStatusState = FormzSubmissionStatus.success;

    final navigateBackAction = AddOrEditMemoryActions.navigateBack();
    actions = Activity(navigateBackAction);

    Future.delayed(duration, () {
      final header = AppStrings.notification();
      final body = AppStrings.memoryHasBeenSuccessfullyDeleted();

      _commonUIDelegate.cupertinoDialog(header: header, body: body);
    });
  }

  FutureOr<void> _handleChooseImageSuccessResult(AppPermissionError error) {
    final category = error.category;
    final header = category.header();
    final body = category.body();

    _commonUIDelegate.cupertinoDialog(
      header: header,
      body: body,
    );
  }

  FutureOr<void> _handleChooseImageFailureResult(Uint8List? file) async {
    if (file == null) return;

    downloadImageStatus = FormzSubmissionStatus.inProgress;

    final downloadImageResult = await _imagesRepository.downloadImage(file);

    downloadImageResult.fold(
      _handleDownloadImageFailureResult,
      _handleDownloadImageSuccessResult,
    );
  }

  void _handleDownloadImageFailureResult(AppError error) {
    downloadImageStatus = FormzSubmissionStatus.failure;

    if (error.isCancelError) return;

    final header = error.header();
    final body = error.body();

    _commonUIDelegate.cupertinoDialog(
      header: header,
      body: body,
    );
  }

  void _handleDownloadImageSuccessResult(String url) {
    downloadImageStatus = FormzSubmissionStatus.success;

    final newPhotos = [...photos, url];
    photos = newPhotos;
  }

  static AddOrEditMemoryModeState _initialModeState({
    required Track? track,
    required Position? position,
    required Memory? memory,
  }) {
    if (memory != null && track != null && track.id != null) {
      final onlineSource = EditMemorySource.online(
        track: track,
        memory: memory,
      );

      return AddOrEditMemoryModeState.edit(source: onlineSource);
    } else if (memory != null) {
      final localSource = EditMemorySource.local(memory: memory);
      return AddOrEditMemoryModeState.edit(source: localSource);
    } else if (position != null) {
      return AddOrEditMemoryModeState.add(position: position);
    }

    return AddOrEditMemoryModeState.pure();
  }

  static List<String> _initialPhotos(Memory? memory) {
    return memory != null
        ? memory.photos ?? List<String>.empty()
        : List<String>.empty();
  }

  static Comment _initialComment(Memory? value) {
    final memory = value;
    final comment = value?.comment;

    return memory != null && comment != null && comment.isNotEmpty == true
        ? Comment.dirty(comment)
        : Comment.pure();
  }

  static MemoryName _initialMemoryName(Memory? memory) {
    return memory != null
        ? MemoryName.dirty(memory.name ?? '')
        : MemoryName.pure();
  }
}
