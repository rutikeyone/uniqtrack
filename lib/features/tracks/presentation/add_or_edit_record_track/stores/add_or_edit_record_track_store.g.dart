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

  late final _$statusModeAtom =
      Atom(name: '_AddOrEditRecordTrackStore.statusMode', context: context);

  @override
  FormzSubmissionStatus get statusMode {
    _$statusModeAtom.reportRead();
    return super.statusMode;
  }

  @override
  set statusMode(FormzSubmissionStatus value) {
    _$statusModeAtom.reportWrite(value, super.statusMode, () {
      super.statusMode = value;
    });
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
  void save() {
    final _$actionInfo = _$_AddOrEditRecordTrackStoreActionController
        .startAction(name: '_AddOrEditRecordTrackStore.save');
    try {
      return super.save();
    } finally {
      _$_AddOrEditRecordTrackStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void deleteRecordTrack() {
    final _$actionInfo = _$_AddOrEditRecordTrackStoreActionController
        .startAction(name: '_AddOrEditRecordTrackStore.deleteRecordTrack');
    try {
      return super.deleteRecordTrack();
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
statusMode: ${statusMode},
canSave: ${canSave},
state: ${state}
    ''';
  }
}