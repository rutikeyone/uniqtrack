import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:uniqtrack/navigation/providers/stores/login_nav_callback_store.dart';

final loginNavCallbackStoreProvider =
    Provider.autoDispose<LoginNavCallbackStore>(
  (ref) => throw UnimplementedError(),
);
