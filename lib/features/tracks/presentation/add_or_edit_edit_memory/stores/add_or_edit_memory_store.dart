import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:formz/formz.dart';
import 'package:mobx/mobx.dart';
import 'package:uniqtrack/core/common/activity.dart';
import 'package:uniqtrack/core/common/common_ui/common_ui_delegate.dart';
import 'package:uniqtrack/core/common/exceptions/exceptions.dart';
import 'package:uniqtrack/core/common/validation/entities/comment.dart';
import 'package:uniqtrack/core/common/validation/entities/memory_name.dart';
import 'package:uniqtrack/features/tracks/domain/entities/entities.dart';
import 'package:uniqtrack/features/tracks/domain/repositories/choose_image_repository.dart';
import 'package:uuid/uuid.dart';

import 'states/add_or_edit_memory_actions.dart';
import 'states/add_or_edit_memory_mode_state.dart';
import 'states/upload_photos_mode_state.dart';

part 'add_or_edit_memory_store.g.dart';

abstract interface class AddOrEditMemoryStoreBuilder {
  AddOrEditMemoryStore create(
    BuildContext context, {
    required Position? position,
  });
}

class AddOrEditMemoryStore = _AddOrEditMemoryStore with _$AddOrEditMemoryStore;

abstract class _AddOrEditMemoryStore with Store {
  final Position? position;

  final ChooseImageRepository _addOrEditMemoryRepository;
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

  @observable
  UploadPhotosModeState uploadPhotosModeState;

  @observable
  Activity<AddOrEditMemoryActions>? actions;

  @computed
  bool get canSaveChanges {
    final allInputs = <FormzInput>[memoryName, comment];
    final isAllInputsValid = allInputs.every((item) => item.isValid);

    return modeState.when(
      add: () =>
          isAllInputsValid &&
          saveStatusState != FormzSubmissionStatus.inProgress,
      edit: () => false,
    );
  }

  _AddOrEditMemoryStore({
    required Uuid uuid,
    required ChooseImageRepository addOrEditMemoryRepository,
    required CommonUIDelegate commonUIDelegate,
    required this.position,
  })  : _addOrEditMemoryRepository = addOrEditMemoryRepository,
        _commonUIDelegate = commonUIDelegate,
        _uuid = uuid,
        modeState = AddOrEditMemoryModeState.add(),
        uploadPhotosModeState = UploadPhotosModeState.add(
          photos: [],
        );

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
    final chooseImageResult =
        await _addOrEditMemoryRepository.chooseImageFromGallery();

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
    final chooseImageResult =
        await _addOrEditMemoryRepository.chooseImageFromCamera();
    chooseImageResult.fold(
      (error) => _handleFailureChooseImage(
        error,
        callback: _chooseImageFromCamera,
      ),
      _handleSuccessChooseImage,
    );
  }

  void _handleSuccessChooseImage(PermissionResult<Uint8List?> result) {
    result.fold(
      (error) {
        final category = error.category;
        final header = category.header();
        final body = category.body();

        _commonUIDelegate.cupertinoDialog(
          header: header,
          body: body,
        );
      },
      (file) {
        if (file == null) return;

        uploadPhotosModeState.map(
          add: (state) {
            final newImages = [...state.photos, file];
            final newUploadPhotosModeState = state.copyWith(photos: newImages);
            uploadPhotosModeState = newUploadPhotosModeState;
          },
          edit: (state) {
            final newImages = [...state.newPhotos, file];
            final newUploadPhotosModeState =
                state.copyWith(newPhotos: newImages);
            uploadPhotosModeState = newUploadPhotosModeState;
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

  @action
  void saveChanges() {
    if (!canSaveChanges) return;
    final uploadedPhotos = List<String>.empty();

    final photos = uploadPhotosModeState.map(
      add: (state) => state.photos,
      edit: (_) => null,
    );

    final memory = Memory(
      id: _uuid.v1(),
      name: memoryName.value,
      comment: comment.value,
      uploadedPhotos: uploadedPhotos,
      photos: photos,
      position: position,
    );

    final navigateWithResultAction =
        AddOrEditMemoryActions.navigateWithResult(memory: memory);
    actions = Activity(navigateWithResultAction);
  }

  @action
  void deleteMemory() {}

  @action
  void deletePhotoByIndex(int index) {
    uploadPhotosModeState.map(
      add: (state) {
        final oldPhotos = state.photos;
        final newPhotos = List.of(oldPhotos, growable: true)..removeAt(index);
        final newState = state.copyWith(photos: newPhotos);
        uploadPhotosModeState = newState;
      },
      edit: (state) {},
    );
  }
}
