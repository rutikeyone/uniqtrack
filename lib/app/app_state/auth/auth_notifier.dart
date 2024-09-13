import 'dart:async';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rxdart/rxdart.dart';
import 'package:uniqtrack/app/app_state/auth/states/auth_state.dart';
import 'package:uniqtrack/app/glue/accounts/providers/providers.dart';
import 'package:uniqtrack/features/accounts/domain/user_changes_use_case.dart';
import 'package:uniqtrack/features/accounts/domain/sign_out_use_case.dart';
import 'package:uniqtrack/features/accounts/domain/entities/entities.dart';

final authStateNotifierProvider =
    StateNotifierProvider.autoDispose<AuthStateNotifier, AuthState>(
  (ref) {
    final userChangesUseCase = ref.watch(userChangesUseCaseProvider);
    final signOutUseCase = ref.watch(signOutUseCaseProvider);

    final authStateNotifier = AuthStateNotifier(
      userChangesUseCase: userChangesUseCase,
      signOutUseCase: signOutUseCase,
    );

    return authStateNotifier;
  },
);

final _initialState = const AuthState(
  firstTime: true,
  authStatus: AuthStatus.pending(),
);

class AuthStateNotifier extends StateNotifier<AuthState> {
  final SignOutUseCase _signOutUseCase;
  late final StreamSubscription<User?> _authStateChangesSubscription;

  final BehaviorSubject<AuthState> _authStateBehaviourSubject;

  AuthStateNotifier({
    required UserChangesUseCase userChangesUseCase,
    required SignOutUseCase signOutUseCase,
  })  : _signOutUseCase = signOutUseCase,
        _authStateBehaviourSubject = BehaviorSubject(),
        super(_initialState) {
    _authStateBehaviourSubject.add(_initialState);
    _authStateChangesSubscription =
        userChangesUseCase.call().listen(_authStateChanged);
  }

  void _authStateChanged(User? user) {
    final previousState = state;

    final newStatus = _convertToAuthStatus(user);
    final newState = state.copyWith(
      firstTime: previousState.isPending,
      authStatus: newStatus,
    );

    state = newState;
    _authStateBehaviourSubject.add(newState);
  }

  Stream<AuthState> listenAuthState() => _authStateBehaviourSubject.stream;

  void signOut() {
    _signOutUseCase.call();
  }

  @override
  void dispose() {
    _authStateBehaviourSubject.close();
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
