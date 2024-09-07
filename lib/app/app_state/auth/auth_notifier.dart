import 'dart:async';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:uniqtrack/app/app_state/auth/states/auth_state.dart';
import 'package:uniqtrack/app/app_state/domain/auth_state_changes_use_case.dart';
import 'package:uniqtrack/app/app_state/domain/entities/user.dart';
import 'package:uniqtrack/app/app_state/domain/sign_out_use_case.dart';
import 'package:uniqtrack/app/app_state/providers/auth_state_changes_use_case_provider.dart';
import 'package:uniqtrack/app/app_state/providers/sign_out_use_case_provider.dart';

final authStateNotifierProvider =
    StateNotifierProvider.autoDispose<AuthStateNotifier, AuthState>(
  (ref) {
    final authStateChangesUseCase = ref.watch(authStateChangesUseCaseProvider);
    final signOutUseCase = ref.watch(signOutUseCaseProvider);

    final authStateNotifier = AuthStateNotifier(
      authStateChangesUseCase: authStateChangesUseCase,
      signOutUseCase: signOutUseCase,
    );

    return authStateNotifier;
  },
);

class AuthStateNotifier extends StateNotifier<AuthState> {
  final SignOutUseCase _signOutUseCase;
  late final StreamSubscription<User?> _authStateChangesSubscription;

  AuthStateNotifier({
    required AuthStateChangesUseCase authStateChangesUseCase,
    required SignOutUseCase signOutUseCase,
  })  : _signOutUseCase = signOutUseCase,
        super(
          const AuthState(
            firstTime: true,
            authStatus: AuthStatus.pending(),
          ),
        ) {
    _authStateChangesSubscription =
        authStateChangesUseCase.call().listen(_authStateChanged);
  }

  void _authStateChanged(User? user) {
    final previousState = state;

    final newStatus = _convertToAuthStatus(user);
    final newState = state.copyWith(
      firstTime: previousState.isPending,
      authStatus: newStatus,
    );

    state = newState;
  }

  void signOut() {
    _signOutUseCase.call();
  }

  @override
  void dispose() {
    _authStateChangesSubscription.cancel();
    super.dispose();
  }

  static AuthStatus _convertToAuthStatus(User? user) {
    final newStatus = switch (user) {
      User() => AuthStatus.authenticated(user: user),
      null => const AuthStatus.notAuth(),
    };

    return newStatus;
  }
}
