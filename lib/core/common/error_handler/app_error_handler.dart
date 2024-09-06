import 'package:dartz/dartz.dart';
import 'package:uniqtrack/core/common/exceptions/exceptions.dart';

abstract interface class AppErrorHandler {
  Future<Either<AppError, T>> handle<T>(Future<T> Function() call);
}
