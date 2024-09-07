import 'package:dartz/dartz.dart';
import 'package:uniqtrack/core/common/exceptions/exceptions.dart';
import 'package:uniqtrack/data/accounts/accounts_data_repository.dart';
import 'package:uniqtrack/features/forgot_password/domain/repositories/forgot_password_repository.dart';

class ForgotPasswordAdapterRepository implements ForgotPasswordRepository {
  final AccountsDataRepository _accountsDataRepository;

  const ForgotPasswordAdapterRepository({
    required AccountsDataRepository accountsDataRepository,
  }) : _accountsDataRepository = accountsDataRepository;

  @override
  Future<Either<AppError, void>> sendPasswordResetEmail({
    required String email,
  }) {
    return _accountsDataRepository.sendPasswordResetEmail(email: email);
  }
}
