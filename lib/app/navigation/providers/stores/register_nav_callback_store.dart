part of 'nav_callback_store.dart';

@immutable
@freezed
class RegisterNavCallbackStore with _$RegisterNavCallbackStore {
  const factory RegisterNavCallbackStore({
    required VoidCallback navigateBack,
}) = _RegisterNavCallbackStore;
}