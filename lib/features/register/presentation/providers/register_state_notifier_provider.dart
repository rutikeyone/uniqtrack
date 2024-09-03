import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:uniqtrack/features/register/presentation/providers/state/register_state.dart';

import 'register_state_notifier.dart';

final registerStateNotifierProvider =
    StateNotifierProvider.autoDispose<RegisterStateNotifier, RegisterState>(
  (ref) => RegisterStateNotifier(),
);
