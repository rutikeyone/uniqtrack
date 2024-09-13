part of 'states.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState({
    required Email email,
    required Password password,
    required LoginStatusState loginStateStatus,
    required bool canLogin,
  }) = _LoginState;
}
