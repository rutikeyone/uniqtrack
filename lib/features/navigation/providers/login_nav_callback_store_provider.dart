import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'stores/login_nav_callback_store.dart';

final loginNavCallbackStoreProvider =
    Provider.autoDispose<LoginNavCallbackStore>(
  (ref) => throw UnimplementedError(),
);
