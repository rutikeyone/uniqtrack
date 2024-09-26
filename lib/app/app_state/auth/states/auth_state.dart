import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uniqtrack/core/common/activity.dart';
import 'package:uniqtrack/features/accounts/domain/entities/entities.dart';

part 'auth_state.freezed.dart';

@freezed
class AuthState with _$AuthState {
  const AuthState._();

  bool get isPending => authStatus is _AuthPendingStatus;

  bool get isAuthenticated => authStatus is _AuthAuthenticatedStatus;

  bool get isNotAuthenticated => authStatus is _AuthNotAuthStatus;

  String? get userId => authStatus.whenOrNull(
        authenticated: (user) => user.userId,
      );

  const factory AuthState({
    required bool firstTime,
    required Activity<bool> stateChanged,
    required AuthStatus authStatus,
  }) = _AuthState;
}

@freezed
class AuthStatus with _$AuthStatus {
  const factory AuthStatus.pending() = _AuthPendingStatus;

  const factory AuthStatus.authenticated({
    required User user,
  }) = _AuthAuthenticatedStatus;

  const factory AuthStatus.notAuth() = _AuthNotAuthStatus;
}
