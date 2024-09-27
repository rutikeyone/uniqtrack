part of 'states.dart';

@freezed
class UserLocationState with _$UserLocationState {
  const UserLocationState._();

  Position? get currentPosition => this.when(
        empty: () => null,
        mark: (data) => data,
      );

  const factory UserLocationState.empty() = _UserLocationEmptyState;

  const factory UserLocationState.mark({
    required Position currentPosition,
  }) = _UserLocationMarkState;
}
