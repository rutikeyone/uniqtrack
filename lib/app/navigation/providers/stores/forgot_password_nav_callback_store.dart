part of 'nav_callback_store.dart';

@immutable
@freezed
class ForgotPasswordNavCallbackStore with _$ForgotPasswordNavCallbackStore {
  const factory ForgotPasswordNavCallbackStore({
    required VoidCallback navigateBack,
  }) = _ForgotPasswordNavCallbackStore;
}
