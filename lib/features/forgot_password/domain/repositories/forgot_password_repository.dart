import 'package:dartz/dartz.dart';
import 'package:uniqtrack/core/common/exceptions/exceptions.dart';

abstract interface class ForgotPasswordRepository {
  Future<Either<AppError, void>> sendPasswordResetEmail({
    required String email,
  });
}
