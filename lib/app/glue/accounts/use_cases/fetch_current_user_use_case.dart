import 'dart:async';

import 'package:generic_usecase/generic_usecase.dart';
import 'package:uniqtrack/data/accounts/accounts_data_repository.dart';

class HasAuthenticationUseCase extends NoParamsUsecase<bool> {
  final AccountsDataRepository _accountsDataRepository;

  const HasAuthenticationUseCase({
    required AccountsDataRepository accountsDataRepository,
  })  : _accountsDataRepository = accountsDataRepository;

  @override
  FutureOr<bool> execute() {
    return _accountsDataRepository.hasAuthentication();
  }
}
