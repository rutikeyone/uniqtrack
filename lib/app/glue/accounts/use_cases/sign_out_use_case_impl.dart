import 'dart:async';

import 'package:uniqtrack/features/accounts/domain/sign_out_use_case.dart';
import 'package:uniqtrack/data/accounts/accounts_data_repository.dart';

class SignOutUseCaseImpl extends SignOutUseCase {
  final AccountsDataRepository _accountsDataRepository;

  SignOutUseCaseImpl({
    required AccountsDataRepository accountsDataRepository,
  }) : _accountsDataRepository = accountsDataRepository;

  @override
  FutureOr<void> execute() {
    return _accountsDataRepository.signOut();
  }
}
