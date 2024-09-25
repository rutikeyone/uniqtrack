import 'package:dartz/dartz.dart';
import 'package:uniqtrack/core/common/exceptions/exceptions.dart';
import 'package:uniqtrack/data/accounts/models/models.dart';
import 'package:uniqtrack/data/accounts/parameters/parameters.dart';

abstract interface class AccountsDataRepository {
  Stream<UserModel?> authStateChanges();

  Future<Either<AppError, void>> register(
    RegisterDataParameters parameters,
  );

  Future<Either<AppError, void>> login(
    LoginDataParameters parameters,
  );

  Future<Either<AppError, void>> sendPasswordResetEmail(String email);

  Future<Either<AppError, UserModel?>> fetchUserByUid(String uid);

  Future<Either<AppError, void>> signOut();

  Future<UserModel?> fetchCurrentUser();

  bool hasAuthentication();
}
