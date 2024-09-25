import 'package:dartz/dartz.dart';
import 'package:uniqtrack/core/common/exceptions/exceptions.dart';
import 'package:uniqtrack/features/accounts/domain/entities/entities.dart';

abstract interface class AccountsRepository {
  Future<Either<AppError, void>> sendPasswordResetEmail(String email);

  Future<Either<AppError, void>> signInWithEmailAndPassword({
    required String email,
    required String password,
  });

  Future<Either<AppError, Either<AppPermissionError, File?>>>
      chooseImageFromGallery();

  Future<Either<AppError, Either<AppPermissionError, File?>>>
      chooseImageFromCamera();

  Future<Either<AppError, void>> register({
    required String email,
    required String name,
    required String password,
    required Gender gender,
    required File? file,
  });

  Future<Either<AppError, void>> signOut();
}
