part of 'states.dart';

@freezed
class DetailsMapState with _$DetailsMapState {
  const factory DetailsMapState.empty() = _EmptyState;

  const factory DetailsMapState.data({
    required Track track,
    required bool firstTime,
  }) = _DataState;
}
