part of 'states.dart';

@freezed
class LoginStatusState with _$LoginStatusState {
  const factory LoginStatusState.pure() = _$LoginPureStatusState;
  const factory LoginStatusState.pending() = _$LoginPendingStatusState;
  const factory LoginStatusState.success() = _$LoginSuccessStatusState;
  const factory LoginStatusState.failure() = _$LoginFailureStatusState;
}