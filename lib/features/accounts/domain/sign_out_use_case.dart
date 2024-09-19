import 'package:generic_usecase/generic_usecase.dart';
import 'package:uniqtrack/features/accounts/domain/accounts_repository.dart';

class SignOutUseCase extends NoParamsUsecase<void> {
  final AccountsRepository _accountsRepository;

  SignOutUseCase({
    required AccountsRepository accountsRepository,
  }) : _accountsRepository = accountsRepository;

  @override
  Future<void> execute() {
    return _accountsRepository.signOut();
  }
}
