import 'package:dartz/dartz.dart';
import 'package:uniqtrack/core/common/exceptions/exceptions.dart';
import 'package:uniqtrack/data/accounts/models/models.dart';
import 'package:uniqtrack/data/accounts/parameters/parameters.dart';

abstract interface class AccountsDataRepository {
  Stream<UserModel?> authStateChanges();

  Future<Either<AppError, void>> register(RegisterDataParameters parameters);

  Future<Either<AppError, void>> login(LoginDataParameters parameters);

  Future<Either<AppError, void>> sendPasswordResetEmail({
    required String email,
  });

  Future<Either<AppError, UserModel>> fetchUser(String uid);

  Future<Either<AppError, void>> signOut();

}
