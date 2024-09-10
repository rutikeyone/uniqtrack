part of 'states.dart';

@freezed
class RecordTrackModeState with _$RecordTrackModeState {
  const factory RecordTrackModeState.recording({
    required Position currentPosition,
}) = _RecordTrackRecordingModeState;
  const factory RecordTrackModeState.pause() = _RecordTrackPauseModeState;
  const factory RecordTrackModeState.stop() = _RecordTrackStopModeState;
}