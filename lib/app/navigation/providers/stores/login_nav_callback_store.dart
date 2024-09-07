part of 'nav_callback_store.dart';

@immutable
@freezed
class LoginNavCallbackStore with _$LoginNavCallbackStore {
  const factory LoginNavCallbackStore({
    required VoidCallback navigateToRegister,
    required Function(String) navigateToForgotPassword,
  }) = _LoginNavCallbackStore;
}
