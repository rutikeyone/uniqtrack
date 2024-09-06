import 'package:uniqtrack/data/accounts/accounts_data_repository.dart';
import 'package:uniqtrack/features/navigation/domain/auth_state_changes_use_case.dart';

class AuthStateChangesAdapterUseCase extends AuthStateChangesUseCase {
  final AccountsDataRepository _accountsDataRepository;

  AuthStateChangesAdapterUseCase({
    required AccountsDataRepository accountsDataRepository,
  }) : _accountsDataRepository = accountsDataRepository;

  @override
  Stream<bool> execute() {
    return _accountsDataRepository.authStateChanges().map((user) {
      return user != null;
    });
  }
}
