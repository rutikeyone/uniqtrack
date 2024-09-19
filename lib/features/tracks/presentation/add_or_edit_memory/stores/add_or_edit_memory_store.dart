import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:formz/formz.dart';
import 'package:mobx/mobx.dart';
import 'package:uniqtrack/core/common/activity.dart';
import 'package:uniqtrack/core/common/common_ui/common_ui_delegate.dart';
import 'package:uniqtrack/core/common/exceptions/exceptions.dart';
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
  });
}

class AddOrEditMemoryStore = _AddOrEditMemoryStore with _$AddOrEditMemoryStore;

abstract class _AddOrEditMemoryStore with Store {
  final ImageRepository _imagesRepository;
  final CommonUIDelegate _commonUIDelegate;
  final Uuid _uuid;

  @observable
  AddOrEditMemoryModeState modeState;

  @observable
  Comment comment = Comment.pure();

  @observable
  MemoryName memoryName = MemoryName.pure();

  @observable
  FormzSubmissionStatus saveStatusState = FormzSubmissionStatus.initial;

  @MakeObservable(useDeepEquality: true)
  List<String> photos;

  @observable
  Activity<AddOrEditMemoryActions>? actions;

  @computed
  bool get canSaveChanges {
    final allInputs = <FormzInput>[memoryName];
    final isAllInputsValid = allInputs.every((item) => item.isValid);

    return modeState.when(
        pure: () => false,
        add: (_) =>
            isAllInputsValid &&
            saveStatusState != FormzSubmissionStatus.inProgress,
        edit: (memory) {
          final isDifferentNames = memoryName.value != memory.name;
          final isDifferentComment = comment.value != memory.comment;
          final isDifferentPhotos = !listEquals(photos, memory.photos);

          final isHasDifference =
              isDifferentNames || isDifferentComment || isDifferentPhotos;

          return isHasDifference &&
              isAllInputsValid &&
              saveStatusState != FormzSubmissionStatus.inProgress;
        });
  }

  _AddOrEditMemoryStore({
    required Uuid uuid,
    required ImageRepository imagesRepository,
    required CommonUIDelegate commonUIDelegate,
    required Position? position,
    required Memory? memory,
  })  : _imagesRepository = imagesRepository,
        _commonUIDelegate = commonUIDelegate,
        _uuid = uuid,
        modeState = _initialModeState(position, memory),
        memoryName = memory != null
            ? MemoryName.dirty(memory.name ?? '')
            : MemoryName.pure(),
        comment = memory != null &&
                memory.comment != null &&
                memory.comment?.isNotEmpty == true
            ? Comment.dirty(memory.comment ?? '')
            : Comment.pure(),
        photos = memory != null
            ? memory.photos ?? List<String>.empty()
            : List<String>.empty();

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
    final chooseImageResult = await _imagesRepository.chooseImageFromGallery();

    chooseImageResult.fold(
      (error) => _handleFailureChooseImage(
        error,
        callback: _chooseImageFromGallery,
      ),
      _handleSuccessChooseImage,
    );
  }

  @action
  Future<void> _chooseImageFromCamera() async {
    final chooseImageResult = await _imagesRepository.chooseImageFromCamera();
    chooseImageResult.fold(
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
      add: (position) {
        final memory = Memory(
          id: _uuid.v1(),
          name: memoryName.value,
          comment: comment.value,
          photos: photos,
          position: position,
        );

        final result = AddOrEditMemoryResult.add(memory: memory);
        final navigateWithResultAction =
            AddOrEditMemoryActions.navigateWithResult(result: result);
        actions = Activity(navigateWithResultAction);
      },
      edit: (memory) {
        final newMemory = memory.copyWith(
          name: memoryName.value,
          comment: comment.value,
          photos: photos,
        );

        final result = AddOrEditMemoryResult.edit(memory: newMemory);
        final navigateWithResultAction =
            AddOrEditMemoryActions.navigateWithResult(result: result);
        actions = Activity(navigateWithResultAction);
      },
    );
  }

  @action
  void deleteMemory() {
    modeState.whenOrNull(
      edit: (memory) {
        final result = AddOrEditMemoryResult.remove(memory: memory);
        final navigateWithResultAction =
            AddOrEditMemoryActions.navigateWithResult(result: result);
        actions = Activity(navigateWithResultAction);
      },
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
      (error) {
        final category = error.category;
        final header = category.header();
        final body = category.body();

        _commonUIDelegate.cupertinoDialog(
          header: header,
          body: body,
        );
      },
      (file) async {
        if (file == null) return;

        _commonUIDelegate.showLoader();

        final downloadImageResult = await _imagesRepository.downloadImage(file);

        downloadImageResult.fold(
          (error) {
            _commonUIDelegate.hideLoader();

            if (error.isCancelError) return;

            final header = error.header();
            final body = error.body();

            _commonUIDelegate.cupertinoDialog(
              header: header,
              body: body,
            );
          },
          (url) {
            _commonUIDelegate.hideLoader();

            final newPhotos = [...photos, url];
            photos = newPhotos;
          },
        );
      },
    );
  }

  void _handleFailureChooseImage(
    AppError l, {
    required VoidCallback callback,
  }) {
    if (l.isCancelError) return;

    final header = l.header();
    final body = l.body();
    final close = l.close();

    final activity = l.activity(
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

  static AddOrEditMemoryModeState _initialModeState(
      Position? position, Memory? memory) {
    if (memory != null) {
      return AddOrEditMemoryModeState.edit(memory: memory);
    } else if (position != null) {
      return AddOrEditMemoryModeState.add(position: position);
    } else {
      return AddOrEditMemoryModeState.pure();
    }
  }
}
