import 'package:uniqtrack/app/app_state/auth/auth_notifier.dart';
import 'package:uniqtrack/app/app_state/auth/states/auth_state.dart';
import 'package:uniqtrack/features/accounts/domain/auth_state_changes_use_case.dart';

class AuthStateChangesUseCaseImpl extends AuthStateChangesUseCase {
  final AuthStateNotifier _authStateNotifier;

  AuthStateChangesUseCaseImpl({
    required AuthStateNotifier authStateNotifier,
  }) : _authStateNotifier = authStateNotifier;

  @override
  Stream<AuthState> execute() {
    return _authStateNotifier.listenAuthState();
  }
}
