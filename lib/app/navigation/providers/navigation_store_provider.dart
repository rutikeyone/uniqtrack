import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:uniqtrack/app/navigation/providers/stores/nav_callback_store.dart';

part 'navigation_store_provider.g.dart';

@Riverpod(dependencies: [])
LoginNavCallbackStore loginNavCallbackStore(LoginNavCallbackStoreRef ref) {
  throw UnimplementedError();
}

@Riverpod(dependencies: [])
RegisterNavCallbackStore registerNavCallbackStore(
    RegisterNavCallbackStoreRef ref) {
  throw UnimplementedError();
}

@Riverpod(dependencies: [])
ForgotPasswordNavCallbackStore forgotPasswordNavCallbackStore(
    ForgotPasswordNavCallbackStoreRef ref) {
  throw UnimplementedError();
}
