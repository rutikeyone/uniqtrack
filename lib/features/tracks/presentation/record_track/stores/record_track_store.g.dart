// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'record_track_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$RecordTrackStore on _RecordTrackStore, Store {
  Computed<RecordTrackState>? _$stateComputed;

  @override
  RecordTrackState get state =>
      (_$stateComputed ??= Computed<RecordTrackState>(() => super.state,
              name: '_RecordTrackStore.state'))
          .value;

  late final _$previousTrackStreamAtom =
      Atom(name: '_RecordTrackStore.previousTrackStream', context: context);

  @override
  ObservableStream<TrackUI?>? get previousTrackStream {
    _$previousTrackStreamAtom.reportRead();
    return super.previousTrackStream;
  }

  bool _previousTrackStreamIsInitialized = false;

  @override
  set previousTrackStream(ObservableStream<TrackUI?>? value) {
    _$previousTrackStreamAtom.reportWrite(value,
        _previousTrackStreamIsInitialized ? super.previousTrackStream : null,
        () {
      super.previousTrackStream = value;
      _previousTrackStreamIsInitialized = true;
    });
  }

  late final _$recordTrackPermissionStateAtom = Atom(
      name: '_RecordTrackStore.recordTrackPermissionState', context: context);

  @override
  RecordTrackPermissionState get recordTrackPermissionState {
    _$recordTrackPermissionStateAtom.reportRead();
    return super.recordTrackPermissionState;
  }

  @override
  set recordTrackPermissionState(RecordTrackPermissionState value) {
    _$recordTrackPermissionStateAtom
        .reportWrite(value, super.recordTrackPermissionState, () {
      super.recordTrackPermissionState = value;
    });
  }

  late final _$userLocationStateAtom =
      Atom(name: '_RecordTrackStore.userLocationState', context: context);

  @override
  UserLocationState get userLocationState {
    _$userLocationStateAtom.reportRead();
    return super.userLocationState;
  }

  @override
  set userLocationState(UserLocationState value) {
    _$userLocationStateAtom.reportWrite(value, super.userLocationState, () {
      super.userLocationState = value;
    });
  }

  late final _$actionsAtom =
      Atom(name: '_RecordTrackStore.actions', context: context);

  @override
  Activity<RecordTrackActions>? get actions {
    _$actionsAtom.reportRead();
    return super.actions;
  }

  @override
  set actions(Activity<RecordTrackActions>? value) {
    _$actionsAtom.reportWrite(value, super.actions, () {
      super.actions = value;
    });
  }

  late final _$trackRecordStatusStateAtom =
      Atom(name: '_RecordTrackStore.trackRecordStatusState', context: context);

  @override
  TrackRecordStatusState get trackRecordStatusState {
    _$trackRecordStatusStateAtom.reportRead();
    return super.trackRecordStatusState;
  }

  @override
  set trackRecordStatusState(TrackRecordStatusState value) {
    _$trackRecordStatusStateAtom
        .reportWrite(value, super.trackRecordStatusState, () {
      super.trackRecordStatusState = value;
    });
  }

  late final _$bottomSheetStateAtom =
      Atom(name: '_RecordTrackStore.bottomSheetState', context: context);

  @override
  RecordTrackBottomSheetState get bottomSheetState {
    _$bottomSheetStateAtom.reportRead();
    return super.bottomSheetState;
  }

  @override
  set bottomSheetState(RecordTrackBottomSheetState value) {
    _$bottomSheetStateAtom.reportWrite(value, super.bottomSheetState, () {
      super.bottomSheetState = value;
    });
  }

  late final _$previousTrackStateAtom =
      Atom(name: '_RecordTrackStore.previousTrackState', context: context);

  @override
  PreviousTrackState get previousTrackState {
    _$previousTrackStateAtom.reportRead();
    return super.previousTrackState;
  }

  @override
  set previousTrackState(PreviousTrackState value) {
    _$previousTrackStateAtom.reportWrite(value, super.previousTrackState, () {
      super.previousTrackState = value;
    });
  }

  late final _$startTrackingAsyncAction =
      AsyncAction('_RecordTrackStore.startTracking', context: context);

  @override
  Future<void> startTracking() {
    return _$startTrackingAsyncAction.run(() => super.startTracking());
  }

  late final _$deleteMemoryAsyncAction =
      AsyncAction('_RecordTrackStore.deleteMemory', context: context);

  @override
  Future<void> deleteMemory(Memory? memory) {
    return _$deleteMemoryAsyncAction.run(() => super.deleteMemory(memory));
  }

  late final _$editMemoryAsyncAction =
      AsyncAction('_RecordTrackStore.editMemory', context: context);

  @override
  Future<void> editMemory(Memory? memory) {
    return _$editMemoryAsyncAction.run(() => super.editMemory(memory));
  }

  late final _$_saveAndFinishRecordTrackAsyncAction = AsyncAction(
      '_RecordTrackStore._saveAndFinishRecordTrack',
      context: context);

  @override
  Future<void> _saveAndFinishRecordTrack({bool closeDialog = false}) {
    return _$_saveAndFinishRecordTrackAsyncAction
        .run(() => super._saveAndFinishRecordTrack(closeDialog: closeDialog));
  }

  late final _$_finishRecordTrackAsyncAction =
      AsyncAction('_RecordTrackStore._finishRecordTrack', context: context);

  @override
  Future<void> _finishRecordTrack({bool closeDialog = false}) {
    return _$_finishRecordTrackAsyncAction
        .run(() => super._finishRecordTrack(closeDialog: closeDialog));
  }

  late final _$_RecordTrackStoreActionController =
      ActionController(name: '_RecordTrackStore', context: context);

  @override
  void onPopInvokedWithResult({bool? didPop, dynamic result}) {
    final _$actionInfo = _$_RecordTrackStoreActionController.startAction(
        name: '_RecordTrackStore.onPopInvokedWithResult');
    try {
      return super.onPopInvokedWithResult(didPop: didPop, result: result);
    } finally {
      _$_RecordTrackStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void pauseRecordTrack() {
    final _$actionInfo = _$_RecordTrackStoreActionController.startAction(
        name: '_RecordTrackStore.pauseRecordTrack');
    try {
      return super.pauseRecordTrack();
    } finally {
      _$_RecordTrackStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void stopRecordTrack() {
    final _$actionInfo = _$_RecordTrackStoreActionController.startAction(
        name: '_RecordTrackStore.stopRecordTrack');
    try {
      return super.stopRecordTrack();
    } finally {
      _$_RecordTrackStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void continueRecordTrack() {
    final _$actionInfo = _$_RecordTrackStoreActionController.startAction(
        name: '_RecordTrackStore.continueRecordTrack');
    try {
      return super.continueRecordTrack();
    } finally {
      _$_RecordTrackStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void addMemory() {
    final _$actionInfo = _$_RecordTrackStoreActionController.startAction(
        name: '_RecordTrackStore.addMemory');
    try {
      return super.addMemory();
    } finally {
      _$_RecordTrackStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void addMemoryWithData(AddOrEditMemoryResult? result) {
    final _$actionInfo = _$_RecordTrackStoreActionController.startAction(
        name: '_RecordTrackStore.addMemoryWithData');
    try {
      return super.addMemoryWithData(result);
    } finally {
      _$_RecordTrackStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void editMemoryWithData(AddOrEditMemoryResult? result) {
    final _$actionInfo = _$_RecordTrackStoreActionController.startAction(
        name: '_RecordTrackStore.editMemoryWithData');
    try {
      return super.editMemoryWithData(result);
    } finally {
      _$_RecordTrackStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void deleteRecordTrack() {
    final _$actionInfo = _$_RecordTrackStoreActionController.startAction(
        name: '_RecordTrackStore.deleteRecordTrack');
    try {
      return super.deleteRecordTrack();
    } finally {
      _$_RecordTrackStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void saveRecordTrack() {
    final _$actionInfo = _$_RecordTrackStoreActionController.startAction(
        name: '_RecordTrackStore.saveRecordTrack');
    try {
      return super.saveRecordTrack();
    } finally {
      _$_RecordTrackStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void showMemoryDetails(Memory memory) {
    final _$actionInfo = _$_RecordTrackStoreActionController.startAction(
        name: '_RecordTrackStore.showMemoryDetails');
    try {
      return super.showMemoryDetails(memory);
    } finally {
      _$_RecordTrackStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void showDetailsRecordingData() {
    final _$actionInfo = _$_RecordTrackStoreActionController.startAction(
        name: '_RecordTrackStore.showDetailsRecordingData');
    try {
      return super.showDetailsRecordingData();
    } finally {
      _$_RecordTrackStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void hideMemoryDetails() {
    final _$actionInfo = _$_RecordTrackStoreActionController.startAction(
        name: '_RecordTrackStore.hideMemoryDetails');
    try {
      return super.hideMemoryDetails();
    } finally {
      _$_RecordTrackStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void _initStreamPositions(
      {required String title,
      required String body,
      required Position position}) {
    final _$actionInfo = _$_RecordTrackStoreActionController.startAction(
        name: '_RecordTrackStore._initStreamPositions');
    try {
      return super
          ._initStreamPositions(title: title, body: body, position: position);
    } finally {
      _$_RecordTrackStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void _moveToUserPosition(Position position) {
    final _$actionInfo = _$_RecordTrackStoreActionController.startAction(
        name: '_RecordTrackStore._moveToUserPosition');
    try {
      return super._moveToUserPosition(position);
    } finally {
      _$_RecordTrackStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void animateCameraToRepeatTrack() {
    final _$actionInfo = _$_RecordTrackStoreActionController.startAction(
        name: '_RecordTrackStore.animateCameraToRepeatTrack');
    try {
      return super.animateCameraToRepeatTrack();
    } finally {
      _$_RecordTrackStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void _animateCameraByPositions(List<PositionData>? positions) {
    final _$actionInfo = _$_RecordTrackStoreActionController.startAction(
        name: '_RecordTrackStore._animateCameraByPositions');
    try {
      return super._animateCameraByPositions(positions);
    } finally {
      _$_RecordTrackStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void _handleTimeChanged(dynamic _) {
    final _$actionInfo = _$_RecordTrackStoreActionController.startAction(
        name: '_RecordTrackStore._handleTimeChanged');
    try {
      return super._handleTimeChanged(_);
    } finally {
      _$_RecordTrackStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
previousTrackStream: ${previousTrackStream},
recordTrackPermissionState: ${recordTrackPermissionState},
userLocationState: ${userLocationState},
actions: ${actions},
trackRecordStatusState: ${trackRecordStatusState},
bottomSheetState: ${bottomSheetState},
previousTrackState: ${previousTrackState},
state: ${state}
    ''';
  }
}
