part of 'states.dart';

@freezed
class LoginActions with _$LoginActions {
  const LoginActions._();

  const factory LoginActions.hideFocus() = _LoginHideFocusAction;

  const factory LoginActions.navigateToForgotPassword({
    required String email,
  }) = _LoginNavigateToForgotPasswordAction;

  @override
  bool operator ==(Object other) => false;

  @override
  int get hashCode {
    return maybeMap(
      orElse: () => 0,
    );
  }
}
