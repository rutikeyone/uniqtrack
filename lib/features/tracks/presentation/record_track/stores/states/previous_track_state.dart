part of 'states.dart';

@freezed
class PreviousTrackState with _$PreviousTrackState {
  const factory PreviousTrackState.empty() = _EmptyTrackState;

  const factory PreviousTrackState.hasData() =
      _HasDataTrackState;
}
