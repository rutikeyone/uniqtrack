part of 'states.dart';

@freezed
class RecordTrackPermissionState with _$RecordTrackPermissionState {
  const RecordTrackPermissionState._();

  const factory RecordTrackPermissionState.pure() = _RecordTrackPermissionPureState;
  const factory RecordTrackPermissionState.pending() = _RecordTrackPermissionPendingState;
  const factory RecordTrackPermissionState.success() = _RecordTrackPermissionSuccessState;
  const factory RecordTrackPermissionState.denied() = _RecordTrackPermissionDeniedState;
  const factory RecordTrackPermissionState.permanentlyDenied() = _RecordTrackPermissionPermanentlyDeniedState;
}
