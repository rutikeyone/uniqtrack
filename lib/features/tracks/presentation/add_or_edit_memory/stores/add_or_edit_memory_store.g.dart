// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_or_edit_memory_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$AddOrEditMemoryStore on _AddOrEditMemoryStore, Store {
  Computed<bool>? _$canAddPhotoComputed;

  @override
  bool get canAddPhoto =>
      (_$canAddPhotoComputed ??= Computed<bool>(() => super.canAddPhoto,
              name: '_AddOrEditMemoryStore.canAddPhoto'))
          .value;
  Computed<bool>? _$canSaveChangesComputed;

  @override
  bool get canSaveChanges =>
      (_$canSaveChangesComputed ??= Computed<bool>(() => super.canSaveChanges,
              name: '_AddOrEditMemoryStore.canSaveChanges'))
          .value;

  late final _$modeStateAtom =
      Atom(name: '_AddOrEditMemoryStore.modeState', context: context);

  @override
  AddOrEditMemoryModeState get modeState {
    _$modeStateAtom.reportRead();
    return super.modeState;
  }

  @override
  set modeState(AddOrEditMemoryModeState value) {
    _$modeStateAtom.reportWrite(value, super.modeState, () {
      super.modeState = value;
    });
  }

  late final _$commentAtom =
      Atom(name: '_AddOrEditMemoryStore.comment', context: context);

  @override
  Comment get comment {
    _$commentAtom.reportRead();
    return super.comment;
  }

  @override
  set comment(Comment value) {
    _$commentAtom.reportWrite(value, super.comment, () {
      super.comment = value;
    });
  }

  late final _$memoryNameAtom =
      Atom(name: '_AddOrEditMemoryStore.memoryName', context: context);

  @override
  MemoryName get memoryName {
    _$memoryNameAtom.reportRead();
    return super.memoryName;
  }

  @override
  set memoryName(MemoryName value) {
    _$memoryNameAtom.reportWrite(value, super.memoryName, () {
      super.memoryName = value;
    });
  }

  late final _$saveStatusStateAtom =
      Atom(name: '_AddOrEditMemoryStore.saveStatusState', context: context);

  @override
  FormzSubmissionStatus get saveStatusState {
    _$saveStatusStateAtom.reportRead();
    return super.saveStatusState;
  }

  @override
  set saveStatusState(FormzSubmissionStatus value) {
    _$saveStatusStateAtom.reportWrite(value, super.saveStatusState, () {
      super.saveStatusState = value;
    });
  }

  late final _$deleteStatusStateAtom =
      Atom(name: '_AddOrEditMemoryStore.deleteStatusState', context: context);

  @override
  FormzSubmissionStatus get deleteStatusState {
    _$deleteStatusStateAtom.reportRead();
    return super.deleteStatusState;
  }

  @override
  set deleteStatusState(FormzSubmissionStatus value) {
    _$deleteStatusStateAtom.reportWrite(value, super.deleteStatusState, () {
      super.deleteStatusState = value;
    });
  }

  late final _$downloadImageStatusAtom =
      Atom(name: '_AddOrEditMemoryStore.downloadImageStatus', context: context);

  @override
  FormzSubmissionStatus get downloadImageStatus {
    _$downloadImageStatusAtom.reportRead();
    return super.downloadImageStatus;
  }

  @override
  set downloadImageStatus(FormzSubmissionStatus value) {
    _$downloadImageStatusAtom.reportWrite(value, super.downloadImageStatus, () {
      super.downloadImageStatus = value;
    });
  }

  late final _$photosAtom =
      Atom(name: '_AddOrEditMemoryStore.photos', context: context);

  @override
  List<String> get photos {
    _$photosAtom.reportRead();
    return super.photos;
  }

  @override
  set photos(List<String> value) {
    _$photosAtom.reportWrite(value, super.photos, () {
      super.photos = value;
    });
  }

  late final _$actionsAtom =
      Atom(name: '_AddOrEditMemoryStore.actions', context: context);

  @override
  Activity<AddOrEditMemoryActions>? get actions {
    _$actionsAtom.reportRead();
    return super.actions;
  }

  @override
  set actions(Activity<AddOrEditMemoryActions>? value) {
    _$actionsAtom.reportWrite(value, super.actions, () {
      super.actions = value;
    });
  }

  late final _$_chooseImageFromGalleryAsyncAction = AsyncAction(
      '_AddOrEditMemoryStore._chooseImageFromGallery',
      context: context);

  @override
  Future<void> _chooseImageFromGallery() {
    return _$_chooseImageFromGalleryAsyncAction
        .run(() => super._chooseImageFromGallery());
  }

  late final _$_chooseImageFromCameraAsyncAction = AsyncAction(
      '_AddOrEditMemoryStore._chooseImageFromCamera',
      context: context);

  @override
  Future<void> _chooseImageFromCamera() {
    return _$_chooseImageFromCameraAsyncAction
        .run(() => super._chooseImageFromCamera());
  }

  late final _$_deleteMemoryWhenEditOnlineModeAsyncAction = AsyncAction(
      '_AddOrEditMemoryStore._deleteMemoryWhenEditOnlineMode',
      context: context);

  @override
  Future<void> _deleteMemoryWhenEditOnlineMode(Track track, Memory memory) {
    return _$_deleteMemoryWhenEditOnlineModeAsyncAction
        .run(() => super._deleteMemoryWhenEditOnlineMode(track, memory));
  }

  late final _$_AddOrEditMemoryStoreActionController =
      ActionController(name: '_AddOrEditMemoryStore', context: context);

  @override
  void updateMemoryName(String? value) {
    final _$actionInfo = _$_AddOrEditMemoryStoreActionController.startAction(
        name: '_AddOrEditMemoryStore.updateMemoryName');
    try {
      return super.updateMemoryName(value);
    } finally {
      _$_AddOrEditMemoryStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void updateComment(String? value) {
    final _$actionInfo = _$_AddOrEditMemoryStoreActionController.startAction(
        name: '_AddOrEditMemoryStore.updateComment');
    try {
      return super.updateComment(value);
    } finally {
      _$_AddOrEditMemoryStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void addPicture() {
    final _$actionInfo = _$_AddOrEditMemoryStoreActionController.startAction(
        name: '_AddOrEditMemoryStore.addPicture');
    try {
      return super.addPicture();
    } finally {
      _$_AddOrEditMemoryStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void saveChanges() {
    final _$actionInfo = _$_AddOrEditMemoryStoreActionController.startAction(
        name: '_AddOrEditMemoryStore.saveChanges');
    try {
      return super.saveChanges();
    } finally {
      _$_AddOrEditMemoryStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void deleteMemory() {
    final _$actionInfo = _$_AddOrEditMemoryStoreActionController.startAction(
        name: '_AddOrEditMemoryStore.deleteMemory');
    try {
      return super.deleteMemory();
    } finally {
      _$_AddOrEditMemoryStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void deletePhotoByIndex(int index) {
    final _$actionInfo = _$_AddOrEditMemoryStoreActionController.startAction(
        name: '_AddOrEditMemoryStore.deletePhotoByIndex');
    try {
      return super.deletePhotoByIndex(index);
    } finally {
      _$_AddOrEditMemoryStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
modeState: ${modeState},
comment: ${comment},
memoryName: ${memoryName},
saveStatusState: ${saveStatusState},
deleteStatusState: ${deleteStatusState},
downloadImageStatus: ${downloadImageStatus},
photos: ${photos},
actions: ${actions},
canAddPhoto: ${canAddPhoto},
canSaveChanges: ${canSaveChanges}
    ''';
  }
}
