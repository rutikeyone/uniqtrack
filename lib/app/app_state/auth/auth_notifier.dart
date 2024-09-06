import 'dart:async';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:uniqtrack/app/app_state/auth/states/auth_state.dart';
import 'package:uniqtrack/app/glue/navigation/providers/auth_state_changes_use_case_provider.dart';
import 'package:uniqtrack/features/navigation/domain/auth_state_changes_use_case.dart';

final authStateNotifierProvider =
    StateNotifierProvider.autoDispose<AuthStateNotifier, AuthState>((ref) {
  final authStateChangesUseCase = ref.watch(authStateChangesUseCaseProvider);
  final authStateNotifier =
      AuthStateNotifier(authStateChangesUseCase: authStateChangesUseCase);

  return authStateNotifier;
});

class AuthStateNotifier extends StateNotifier<AuthState> {
  late final StreamSubscription<bool> _authStateChangesSubscription;

  AuthStateNotifier({
    required AuthStateChangesUseCase authStateChangesUseCase,
  }) : super(
          const AuthState(
            firstTime: true,
            authStatus: AuthStatus.pending(),
          ),
        ) {
    _authStateChangesSubscription =
        authStateChangesUseCase.call().listen(_authStateChanged);
  }

  void _authStateChanged(bool event) {
    final previousState = state;

    final newStatus = _convertToAuthStatus(event);
    final newState = state.copyWith(
      firstTime: previousState.isPending,
      authStatus: newStatus,
    );

    state = newState;
  }

  @override
  void dispose() {
    _authStateChangesSubscription.cancel();
    super.dispose();
  }

  static AuthStatus _convertToAuthStatus(bool event) {
    final newStatus = switch (event) {
      true => const AuthStatus.authenticated(),
      false => const AuthStatus.notAuth(),
    };

    return newStatus;
  }
}
