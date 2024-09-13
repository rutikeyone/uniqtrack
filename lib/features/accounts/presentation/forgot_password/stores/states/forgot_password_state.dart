part of 'states.dart';

@freezed
class ForgotPasswordState with _$ForgotPasswordState {
  const factory ForgotPasswordState({
    required Email email,
    required ForgotStatusState forgotStatusState,
    required bool canForgotPassword,
  }) = _ForgotPasswordState;
}
