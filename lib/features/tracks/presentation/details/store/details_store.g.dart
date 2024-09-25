// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'details_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$DetailsStore on _DetailsStore, Store {
  late final _$mountedAtom =
      Atom(name: '_DetailsStore.mounted', context: context);

  @override
  bool get mounted {
    _$mountedAtom.reportRead();
    return super.mounted;
  }

  @override
  set mounted(bool value) {
    _$mountedAtom.reportWrite(value, super.mounted, () {
      super.mounted = value;
    });
  }

  late final _$trackDetailsStreamAtom =
      Atom(name: '_DetailsStore.trackDetailsStream', context: context);

  @override
  ObservableStream<TrackUI> get trackDetailsStream {
    _$trackDetailsStreamAtom.reportRead();
    return super.trackDetailsStream;
  }

  bool _trackDetailsStreamIsInitialized = false;

  @override
  set trackDetailsStream(ObservableStream<TrackUI> value) {
    _$trackDetailsStreamAtom.reportWrite(value,
        _trackDetailsStreamIsInitialized ? super.trackDetailsStream : null, () {
      super.trackDetailsStream = value;
      _trackDetailsStreamIsInitialized = true;
    });
  }

  late final _$memoryDetailsStreamAtom =
      Atom(name: '_DetailsStore.memoryDetailsStream', context: context);

  @override
  ObservableStream<MemoryUI?> get memoryDetailsStream {
    _$memoryDetailsStreamAtom.reportRead();
    return super.memoryDetailsStream;
  }

  bool _memoryDetailsStreamIsInitialized = false;

  @override
  set memoryDetailsStream(ObservableStream<MemoryUI?> value) {
    _$memoryDetailsStreamAtom.reportWrite(value,
        _memoryDetailsStreamIsInitialized ? super.memoryDetailsStream : null,
        () {
      super.memoryDetailsStream = value;
      _memoryDetailsStreamIsInitialized = true;
    });
  }

  late final _$detailsMapStateAtom =
      Atom(name: '_DetailsStore.detailsMapState', context: context);

  @override
  ObservableStream<DetailsMapState> get detailsMapState {
    _$detailsMapStateAtom.reportRead();
    return super.detailsMapState;
  }

  bool _detailsMapStateIsInitialized = false;

  @override
  set detailsMapState(ObservableStream<DetailsMapState> value) {
    _$detailsMapStateAtom.reportWrite(
        value, _detailsMapStateIsInitialized ? super.detailsMapState : null,
        () {
      super.detailsMapState = value;
      _detailsMapStateIsInitialized = true;
    });
  }

  late final _$actionsAtom =
      Atom(name: '_DetailsStore.actions', context: context);

  @override
  Activity<DetailsActions>? get actions {
    _$actionsAtom.reportRead();
    return super.actions;
  }

  @override
  set actions(Activity<DetailsActions>? value) {
    _$actionsAtom.reportWrite(value, super.actions, () {
      super.actions = value;
    });
  }

  late final _$detailsSheetStateAtom =
      Atom(name: '_DetailsStore.detailsSheetState', context: context);

  @override
  ObservableStream<DetailsSheetState> get detailsSheetState {
    _$detailsSheetStateAtom.reportRead();
    return super.detailsSheetState;
  }

  bool _detailsSheetStateIsInitialized = false;

  @override
  set detailsSheetState(ObservableStream<DetailsSheetState> value) {
    _$detailsSheetStateAtom.reportWrite(
        value, _detailsSheetStateIsInitialized ? super.detailsSheetState : null,
        () {
      super.detailsSheetState = value;
      _detailsSheetStateIsInitialized = true;
    });
  }

  late final _$animateShowEnabledAtom =
      Atom(name: '_DetailsStore.animateShowEnabled', context: context);

  @override
  ObservableStream<bool> get animateShowEnabled {
    _$animateShowEnabledAtom.reportRead();
    return super.animateShowEnabled;
  }

  bool _animateShowEnabledIsInitialized = false;

  @override
  set animateShowEnabled(ObservableStream<bool> value) {
    _$animateShowEnabledAtom.reportWrite(value,
        _animateShowEnabledIsInitialized ? super.animateShowEnabled : null, () {
      super.animateShowEnabled = value;
      _animateShowEnabledIsInitialized = true;
    });
  }

  late final _$mapDataUIAtom =
      Atom(name: '_DetailsStore.mapDataUI', context: context);

  @override
  ObservableStream<MapDataUI> get mapDataUI {
    _$mapDataUIAtom.reportRead();
    return super.mapDataUI;
  }

  bool _mapDataUIIsInitialized = false;

  @override
  set mapDataUI(ObservableStream<MapDataUI> value) {
    _$mapDataUIAtom.reportWrite(
        value, _mapDataUIIsInitialized ? super.mapDataUI : null, () {
      super.mapDataUI = value;
      _mapDataUIIsInitialized = true;
    });
  }

  late final _$onPopInvokedWithResultAsyncAction =
      AsyncAction('_DetailsStore.onPopInvokedWithResult', context: context);

  @override
  Future<void> onPopInvokedWithResult({bool? didPop, dynamic result}) {
    return _$onPopInvokedWithResultAsyncAction.run(
        () => super.onPopInvokedWithResult(didPop: didPop, result: result));
  }

  late final _$addTrackToFavouritesAsyncAction =
      AsyncAction('_DetailsStore.addTrackToFavourites', context: context);

  @override
  Future<void> addTrackToFavourites() {
    return _$addTrackToFavouritesAsyncAction
        .run(() => super.addTrackToFavourites());
  }

  late final _$removeTrackFromFavouritesAsyncAction =
      AsyncAction('_DetailsStore.removeTrackFromFavourites', context: context);

  @override
  Future<void> removeTrackFromFavourites() {
    return _$removeTrackFromFavouritesAsyncAction
        .run(() => super.removeTrackFromFavourites());
  }

  late final _$deleteTrackAsyncAction =
      AsyncAction('_DetailsStore.deleteTrack', context: context);

  @override
  Future<void> deleteTrack() {
    return _$deleteTrackAsyncAction.run(() => super.deleteTrack());
  }

  late final _$_deleteMemoryAsyncAction =
      AsyncAction('_DetailsStore._deleteMemory', context: context);

  @override
  Future<void> _deleteMemory(Memory value) {
    return _$_deleteMemoryAsyncAction.run(() => super._deleteMemory(value));
  }

  late final _$_DetailsStoreActionController =
      ActionController(name: '_DetailsStore', context: context);

  @override
  void animateCameraByTrack() {
    final _$actionInfo = _$_DetailsStoreActionController.startAction(
        name: '_DetailsStore.animateCameraByTrack');
    try {
      return super.animateCameraByTrack();
    } finally {
      _$_DetailsStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void animateCameraByMemory({Memory? memory}) {
    final _$actionInfo = _$_DetailsStoreActionController.startAction(
        name: '_DetailsStore.animateCameraByMemory');
    try {
      return super.animateCameraByMemory(memory: memory);
    } finally {
      _$_DetailsStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void _animateCameraByPositions(List<PositionData>? positions) {
    final _$actionInfo = _$_DetailsStoreActionController.startAction(
        name: '_DetailsStore._animateCameraByPositions');
    try {
      return super._animateCameraByPositions(positions);
    } finally {
      _$_DetailsStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void showMemoryDetails(Memory memory) {
    final _$actionInfo = _$_DetailsStoreActionController.startAction(
        name: '_DetailsStore.showMemoryDetails');
    try {
      return super.showMemoryDetails(memory);
    } finally {
      _$_DetailsStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void hideMemoryDetails() {
    final _$actionInfo = _$_DetailsStoreActionController.startAction(
        name: '_DetailsStore.hideMemoryDetails');
    try {
      return super.hideMemoryDetails();
    } finally {
      _$_DetailsStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void deleteMemory(Memory memory) {
    final _$actionInfo = _$_DetailsStoreActionController.startAction(
        name: '_DetailsStore.deleteMemory');
    try {
      return super.deleteMemory(memory);
    } finally {
      _$_DetailsStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void dispose() {
    final _$actionInfo = _$_DetailsStoreActionController.startAction(
        name: '_DetailsStore.dispose');
    try {
      return super.dispose();
    } finally {
      _$_DetailsStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
mounted: ${mounted},
trackDetailsStream: ${trackDetailsStream},
memoryDetailsStream: ${memoryDetailsStream},
detailsMapState: ${detailsMapState},
actions: ${actions},
detailsSheetState: ${detailsSheetState},
animateShowEnabled: ${animateShowEnabled},
mapDataUI: ${mapDataUI}
    ''';
  }
}
