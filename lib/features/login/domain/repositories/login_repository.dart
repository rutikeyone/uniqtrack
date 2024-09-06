import 'package:dartz/dartz.dart';
import 'package:uniqtrack/core/common/exceptions/exceptions.dart';

abstract interface class LoginRepository {
  Future<Either<AppError, void>> signInWithEmailAndPassword({
    required String email,
    required String password,
  });
}
