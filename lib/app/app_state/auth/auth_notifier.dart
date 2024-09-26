import 'dart:async';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rxdart/rxdart.dart';
import 'package:uniqtrack/app/app_state/auth/states/auth_state.dart';
import 'package:uniqtrack/app/glue/accounts/providers/providers.dart';
import 'package:uniqtrack/core/common/activity.dart';
import 'package:uniqtrack/features/accounts/domain/entities/entities.dart';
import 'package:uniqtrack/features/accounts/domain/providers/providers.dart';
import 'package:uniqtrack/features/accounts/domain/sign_out_use_case.dart';
import 'package:uniqtrack/features/accounts/domain/user_changes_use_case.dart';

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

final _initialState = AuthState(
  firstTime: true,
  authStatus: AuthStatus.pending(),
  stateChanged: Activity(false),
);

class AuthStateNotifier extends StateNotifier<AuthState> {
  final SignOutUseCase _signOutUseCase;
  late final StreamSubscription<User?> _authStateChangesSubscription;

  final BehaviorSubject<AuthState> _authStateBehaviourSubject;

  AuthStateNotifier({
    required UserChangesUseCase userChangesUseCase,
    required SignOutUseCase signOutUseCase,
  })
      : _signOutUseCase = signOutUseCase,
        _authStateBehaviourSubject = BehaviorSubject(),
        super(_initialState) {
    if (!_authStateBehaviourSubject.isClosed) {
      _authStateBehaviourSubject.add(_initialState);
    }
    _authStateChangesSubscription =
        userChangesUseCase.call().listen(_authStateChanged);
  }

  void _authStateChanged(User? user) {
    final prevState = state;
    final prevStatus = state.authStatus;

    final newStatus = _convertToAuthStatus(user);
    final stateChanged = Activity(
        prevStatus.runtimeType != newStatus.runtimeType);

    final newState = state.copyWith(
      firstTime: prevState.isPending,
      stateChanged: stateChanged,
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
