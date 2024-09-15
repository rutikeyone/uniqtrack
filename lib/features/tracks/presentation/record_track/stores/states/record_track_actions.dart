part of 'states.dart';

@freezed
class RecordTrackActions with _$RecordTrackActions {
  const factory RecordTrackActions.initStreamPositions({
    required void Function(String, String) callback,
    required AppStrings title,
    required AppStrings body,
  }) = _InitStreamPositionsAction;

  const factory RecordTrackActions.moveToUserPosition({
    required Position position,
    required double zoom,
  }) = _UserPositionChangesAction;

  const factory RecordTrackActions.showDetailsRecordingData() =
      _ShowDetailsRecordingDataAction;

  const factory RecordTrackActions.hideDetailsRecordingData() =
      _HideDetailsRecordingDataAction;

  const factory RecordTrackActions.navigateBack() = _NavigateBackAction;

  const factory RecordTrackActions.navigateToAddMemory({
    required Position? position,
  }) = _NavigateToAddMemoryAction;

  const factory RecordTrackActions.navigateToAddRecordTrack({
    required Track track,
  }) = _NavigateToAddRecordTrackAction;

  const factory RecordTrackActions.showMemoryDetails({
    required Memory memory,
  }) = _ShowMemoryDetailsAction;

  const factory RecordTrackActions.hideMemoryDetails() =
      _HideMemoryDetailsAction;
}
