import 'package:dartz/dartz.dart';
import 'package:uniqtrack/core/common/exceptions/exceptions.dart';
import 'package:uniqtrack/data/accounts/parameters/parameters.dart';

abstract interface class AccountsDataRepository {
  Future<Either<AppError, void>> register(RegisterParameters parameters);

  Future<Either<AppError, void>> login(LoginParameters parameters);
}
