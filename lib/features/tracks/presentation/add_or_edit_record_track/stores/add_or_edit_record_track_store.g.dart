// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_or_edit_record_track_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$AddOrEditRecordTrackStore on _AddOrEditRecordTrackStore, Store {
  Computed<bool>? _$canSaveComputed;

  @override
  bool get canSave => (_$canSaveComputed ??= Computed<bool>(() => super.canSave,
          name: '_AddOrEditRecordTrackStore.canSave'))
      .value;
  Computed<bool>? _$canEditComputed;

  @override
  bool get canEdit => (_$canEditComputed ??= Computed<bool>(() => super.canEdit,
          name: '_AddOrEditRecordTrackStore.canEdit'))
      .value;
  Computed<AddOrEditRecordTrackState>? _$stateComputed;

  @override
  AddOrEditRecordTrackState get state => (_$stateComputed ??=
          Computed<AddOrEditRecordTrackState>(() => super.state,
              name: '_AddOrEditRecordTrackStore.state'))
      .value;

  late final _$modeStateAtom =
      Atom(name: '_AddOrEditRecordTrackStore.modeState', context: context);

  @override
  AddOrEditRecordTrackModeState get modeState {
    _$modeStateAtom.reportRead();
    return super.modeState;
  }

  @override
  set modeState(AddOrEditRecordTrackModeState value) {
    _$modeStateAtom.reportWrite(value, super.modeState, () {
      super.modeState = value;
    });
  }

  late final _$commentAtom =
      Atom(name: '_AddOrEditRecordTrackStore.comment', context: context);

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

  late final _$trackNameAtom =
      Atom(name: '_AddOrEditRecordTrackStore.trackName', context: context);

  @override
  TrackName get trackName {
    _$trackNameAtom.reportRead();
    return super.trackName;
  }

  @override
  set trackName(TrackName value) {
    _$trackNameAtom.reportWrite(value, super.trackName, () {
      super.trackName = value;
    });
  }

  late final _$saveStatusModeAtom =
      Atom(name: '_AddOrEditRecordTrackStore.saveStatusMode', context: context);

  @override
  FormzSubmissionStatus get saveStatusMode {
    _$saveStatusModeAtom.reportRead();
    return super.saveStatusMode;
  }

  @override
  set saveStatusMode(FormzSubmissionStatus value) {
    _$saveStatusModeAtom.reportWrite(value, super.saveStatusMode, () {
      super.saveStatusMode = value;
    });
  }

  late final _$editStatusModeAtom =
      Atom(name: '_AddOrEditRecordTrackStore.editStatusMode', context: context);

  @override
  FormzSubmissionStatus get editStatusMode {
    _$editStatusModeAtom.reportRead();
    return super.editStatusMode;
  }

  @override
  set editStatusMode(FormzSubmissionStatus value) {
    _$editStatusModeAtom.reportWrite(value, super.editStatusMode, () {
      super.editStatusMode = value;
    });
  }

  late final _$deleteStatusModeAtom = Atom(
      name: '_AddOrEditRecordTrackStore.deleteStatusMode', context: context);

  @override
  FormzSubmissionStatus get deleteStatusMode {
    _$deleteStatusModeAtom.reportRead();
    return super.deleteStatusMode;
  }

  @override
  set deleteStatusMode(FormzSubmissionStatus value) {
    _$deleteStatusModeAtom.reportWrite(value, super.deleteStatusMode, () {
      super.deleteStatusMode = value;
    });
  }

  late final _$actionsAtom =
      Atom(name: '_AddOrEditRecordTrackStore.actions', context: context);

  @override
  Activity<AddOrEditRecordTrackActions>? get actions {
    _$actionsAtom.reportRead();
    return super.actions;
  }

  @override
  set actions(Activity<AddOrEditRecordTrackActions>? value) {
    _$actionsAtom.reportWrite(value, super.actions, () {
      super.actions = value;
    });
  }

  late final _$memoriesAtom =
      Atom(name: '_AddOrEditRecordTrackStore.memories', context: context);

  @override
  List<Memory> get memories {
    _$memoriesAtom.reportRead();
    return super.memories;
  }

  @override
  set memories(List<Memory> value) {
    _$memoriesAtom.reportWrite(value, super.memories, () {
      super.memories = value;
    });
  }

  late final _$saveAsyncAction =
      AsyncAction('_AddOrEditRecordTrackStore.save', context: context);

  @override
  Future<void> save() {
    return _$saveAsyncAction.run(() => super.save());
  }

  late final _$editAsyncAction =
      AsyncAction('_AddOrEditRecordTrackStore.edit', context: context);

  @override
  Future<void> edit() {
    return _$editAsyncAction.run(() => super.edit());
  }

  late final _$deleteRecordTrackAsyncAction = AsyncAction(
      '_AddOrEditRecordTrackStore.deleteRecordTrack',
      context: context);

  @override
  Future<void> deleteRecordTrack() {
    return _$deleteRecordTrackAsyncAction.run(() => super.deleteRecordTrack());
  }

  late final _$_AddOrEditRecordTrackStoreActionController =
      ActionController(name: '_AddOrEditRecordTrackStore', context: context);

  @override
  void updateComment(String? value) {
    final _$actionInfo = _$_AddOrEditRecordTrackStoreActionController
        .startAction(name: '_AddOrEditRecordTrackStore.updateComment');
    try {
      return super.updateComment(value);
    } finally {
      _$_AddOrEditRecordTrackStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void updateTrackName(String? value) {
    final _$actionInfo = _$_AddOrEditRecordTrackStoreActionController
        .startAction(name: '_AddOrEditRecordTrackStore.updateTrackName');
    try {
      return super.updateTrackName(value);
    } finally {
      _$_AddOrEditRecordTrackStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void deleteMemory(Memory memory) {
    final _$actionInfo = _$_AddOrEditRecordTrackStoreActionController
        .startAction(name: '_AddOrEditRecordTrackStore.deleteMemory');
    try {
      return super.deleteMemory(memory);
    } finally {
      _$_AddOrEditRecordTrackStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
modeState: ${modeState},
comment: ${comment},
trackName: ${trackName},
saveStatusMode: ${saveStatusMode},
editStatusMode: ${editStatusMode},
deleteStatusMode: ${deleteStatusMode},
actions: ${actions},
memories: ${memories},
canSave: ${canSave},
canEdit: ${canEdit},
state: ${state}
    ''';
  }
}
