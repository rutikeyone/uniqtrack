import 'package:dartz/dartz.dart';
import 'package:uniqtrack/core/common/exceptions/exceptions.dart';
import 'package:uniqtrack/data/repositories/accounts/parameters/register_parameters.dart';
import 'package:uniqtrack/data/repositories/accounts_data_repository.dart';

class AccountsDataRepositoryImpl implements AccountsDataRepository {
  @override
  Future<Either<AppError, void>> register(RegisterParameters parameters) async {
    final result = () {}.call();
    return Right(result);
  }
}
