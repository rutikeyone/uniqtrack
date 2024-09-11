part of 'states.dart';

@freezed
class RecordTrackState with _$RecordTrackState {
  const factory RecordTrackState({
    required RecordTrackPermissionState permissionState,
    required UserLocationState locationState,
    required TrackRecordStatusState trackRecordStatusState,
    required bool continueAvailable,
  }) = _RecordTrackState;
}
