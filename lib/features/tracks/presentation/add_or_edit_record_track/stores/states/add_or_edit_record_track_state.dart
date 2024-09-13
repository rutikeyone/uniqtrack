part of 'states.dart';

@freezed
class AddOrEditRecordTrackState with _$AddOrEditRecordTrackState {
  const AddOrEditRecordTrackState._();

  const factory AddOrEditRecordTrackState({
    required AddOrEditRecordTrackModeState modeState,
    required TrackName trackName,
    required Comment comment,
    required FormzSubmissionStatus statusState,
    required bool canSave,
  }) = _AddOrEditRecordTrackState;
}
