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

  late final _$startTrackingAsyncAction =
      AsyncAction('_RecordTrackStore.startTracking', context: context);

  @override
  Future<void> startTracking() {
    return _$startTrackingAsyncAction.run(() => super.startTracking());
  }

  @override
  String toString() {
    return '''
recordTrackPermissionState: ${recordTrackPermissionState},
userLocationState: ${userLocationState},
actions: ${actions},
trackRecordStatusState: ${trackRecordStatusState},
state: ${state}
    ''';
  }
}
