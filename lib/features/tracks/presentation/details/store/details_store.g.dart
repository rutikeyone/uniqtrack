// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'details_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$DetailsStore on _DetailsStore, Store {
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

  late final _$_DetailsStoreActionController =
      ActionController(name: '_DetailsStore', context: context);

  @override
  void animateCamera() {
    final _$actionInfo = _$_DetailsStoreActionController.startAction(
        name: '_DetailsStore.animateCamera');
    try {
      return super.animateCamera();
    } finally {
      _$_DetailsStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
trackDetailsStream: ${trackDetailsStream},
detailsMapState: ${detailsMapState},
actions: ${actions},
detailsSheetState: ${detailsSheetState},
animateShowEnabled: ${animateShowEnabled}
    ''';
  }
}
