part of 'states.dart';

@freezed
class UserLocationState with _$UserLocationState {
  const factory UserLocationState.empty() = _UserLocationEmptyState;
  const factory UserLocationState.mark({
    required Position currentPosition,
    @Default([]) List<Position> positions,
}) = _UserLocationMarkState;
}