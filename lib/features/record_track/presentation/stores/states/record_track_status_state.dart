part of 'states.dart';

@freezed
class TrackRecordStatusState with _$TrackRecordStatusState {
  bool get isWithoutRecording => this is TrackRecordWithoutRecordingStatusState;

  bool get isRecording => this is TrackRecordingStatusState;

  bool get isRecordingPause {
    return this.map(
      withoutRecording: (_) => false,
      recording: (state) {
        final mode = state.mode;

        return mode.maybeWhen(
          pause: () => true,
          orElse: () => false,
        );
      },
    );
  }

  const TrackRecordStatusState._();

  const factory TrackRecordStatusState.withoutRecording() =
      TrackRecordWithoutRecordingStatusState;

  const factory TrackRecordStatusState.recording({
    required List<Position> positions,
    required double distance,
    required int duration,
    required double averageSpeed,
    required double maxAltitude,
    required RecordTrackModeState mode,
    required bool isRecording,
  }) = TrackRecordingStatusState;
}
