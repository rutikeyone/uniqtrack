import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_state.freezed.dart';

@freezed
class AuthState with _$AuthState {
  const AuthState._();

  bool get isPending => authStatus is _AuthPendingStatus;
  bool get isAuthenticated => authStatus is _AuthAuthenticatedStatus;
  bool get isNotAuthenticated => authStatus is _AuthNotAuthStatus;

  const factory AuthState({
    required bool firstTime,
    required AuthStatus authStatus,
  }) = _AuthState;
}

@freezed
class AuthStatus with _$AuthStatus {
  const factory AuthStatus.pending() = _AuthPendingStatus;
  const factory AuthStatus.authenticated() = _AuthAuthenticatedStatus;
  const factory AuthStatus.notAuth() = _AuthNotAuthStatus;
}
