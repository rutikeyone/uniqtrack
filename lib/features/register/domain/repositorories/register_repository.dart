import 'package:dartz/dartz.dart';
import 'package:uniqtrack/core/common/exceptions/exceptions.dart';
import 'package:uniqtrack/features/register/domain/entities/file.dart';
import 'package:uniqtrack/features/register/domain/entities/gender.dart';

abstract interface class RegisterRepository {
  Future<Either<AppError, File?>> chooseImageFromGallery();

  Future<Either<AppError, File?>> chooseImageFromCamera();

  Future<Either<AppError, void>> register({
    required String email,
    required String name,
    required String password,
    required Gender gender,
    required File? file,
  });
}
