import 'package:dartz/dartz.dart';
import 'package:uniqtrack/core/common/exceptions/exceptions.dart';
import 'package:uniqtrack/data/accounts/accounts_data_repository.dart';
import 'package:uniqtrack/data/accounts/parameters/parameters.dart';
import 'package:uniqtrack/features/login/domain/repositories/login_repository.dart';

class LoginAdapterRepository implements LoginRepository {
  final AccountsDataRepository _accountsDataRepository;

  const LoginAdapterRepository({
    required AccountsDataRepository accountsDataRepository,
  })  : _accountsDataRepository = accountsDataRepository;

  @override
  Future<Either<AppError, void>> signInWithEmailAndPassword({
    required String email,
    required String password,
  }) {
    final parameters = LoginParameters(
      email: email,
      password: password,
    );
    return _accountsDataRepository.login(parameters);
  }
}
