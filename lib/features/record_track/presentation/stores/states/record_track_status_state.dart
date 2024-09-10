part of 'states.dart';

@freezed
class TrackRecordStatusState with _$TrackRecordStatusState {
  bool get isWithoutRecording => this is TrackRecordWithoutRecordingStatusState;
  bool get isRecording => this is TrackRecordingStatusState;

  const TrackRecordStatusState._();

  const factory TrackRecordStatusState.withoutRecording() =
      TrackRecordWithoutRecordingStatusState;

  const factory TrackRecordStatusState.recording({
    required List<Position> positions,
    required double distance,
    required int duration,
    required RecordTrackModeState mode,
  }) = TrackRecordingStatusState;
}
