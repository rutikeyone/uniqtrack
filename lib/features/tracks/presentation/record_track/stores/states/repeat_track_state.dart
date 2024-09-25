part of 'states.dart';

@freezed
class RepeatTrackState with _$RepeatTrackState {
  const factory RepeatTrackState.noRepeat() = _$NoRepeatTrackState;

  const factory RepeatTrackState.repeat({
    required Track track,
  }) = _RepeatTrackState;
}
