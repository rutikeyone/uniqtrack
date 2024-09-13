part of 'states.dart';

@freezed
class AddOrEditRecordTrackModeState with _$AddOrEditRecordTrackModeState {
  const factory AddOrEditRecordTrackModeState.add() = _AddRecordTrackModeState;
  const factory AddOrEditRecordTrackModeState.edit() = _EditRecordTrackModeState;
}