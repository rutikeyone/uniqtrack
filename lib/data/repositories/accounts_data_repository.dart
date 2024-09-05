import 'package:dartz/dartz.dart';
import 'package:uniqtrack/core/common/exceptions/exceptions.dart';
import 'package:uniqtrack/data/repositories/accounts/parameters/register_parameters.dart';

abstract interface class AccountsDataRepository {
  Future<Either<AppError, void>> register(RegisterParameters parameters);
}
