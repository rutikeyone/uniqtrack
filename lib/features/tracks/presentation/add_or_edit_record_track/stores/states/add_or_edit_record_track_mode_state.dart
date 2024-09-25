part of 'states.dart';

@freezed
class AddOrEditRecordTrackModeState with _$AddOrEditRecordTrackModeState {
  const factory AddOrEditRecordTrackModeState.add({
    required Track? track,
}) = _AddRecordTrackModeState;
  const factory AddOrEditRecordTrackModeState.edit({
    required Track track,
}) = _EditRecordTrackModeState;
}