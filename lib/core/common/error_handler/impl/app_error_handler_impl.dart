import 'dart:io';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:uniqtrack/core/common/error_handler/app_error_handler.dart';
import 'package:uniqtrack/core/common/error_handler/logger.dart';
import 'package:uniqtrack/core/common/error_handler/result_state.dart';
import 'package:uniqtrack/core/common/exceptions/exceptions.dart';
import 'package:uniqtrack/core/common/firebase_auth_constants.dart';

class AppErrorHandlerImpl implements AppErrorHandler {
  final Logger? _logger;

  const AppErrorHandlerImpl({Logger? logger}) : _logger = logger;

  @override
  Future<Either<AppError, T>> handle<T>(Future<T> call) async {
    try {
      final result = await call;
      return Right(result);
    } on DioException catch (e) {
      final category = switch (e.type) {
        DioExceptionType.connectionTimeout =>
          const NetworkErrorCategory.connectTimeout(),
        DioExceptionType.sendTimeout =>
          const NetworkErrorCategory.sendTimeout(),
        DioExceptionType.receiveTimeout =>
          const NetworkErrorCategory.receiveTimeout(),
        DioExceptionType.badCertificate =>
          const NetworkErrorCategory.badCertificate(),
        DioExceptionType.badResponse =>
          const NetworkErrorCategory.badResponse(),
        DioExceptionType.cancel =>
          const NetworkErrorCategory.requestCancelled(),
        DioExceptionType.connectionError =>
          const NetworkErrorCategory.notInternetConnection(),
        DioExceptionType.unknown => const NetworkErrorCategory.base(),
      };

      final networkError = AppError.network(category: category);

      _sentStateLog(networkError);

      return Left(networkError);
    } on FirebaseAuthException catch (e) {
      final code = e.code;
      final category = switch (code) {
        FirebaseAuthConstants.emailAlreadyInUse =>
          const FirebaseErrorCategory.emailAlreadyInUse(),
        FirebaseAuthConstants.invalidEmail =>
          const FirebaseErrorCategory.invalidEmail(),
        FirebaseAuthConstants.operationNotAllowed =>
          const FirebaseErrorCategory.operationNotAllowed(),
        FirebaseAuthConstants.weakPassword =>
          const FirebaseErrorCategory.weakPassword(),
        FirebaseAuthConstants.tooManyRequests =>
          const FirebaseErrorCategory.tooManyRequests(),
        FirebaseAuthConstants.userTokenExpired =>
          const FirebaseErrorCategory.userTokenExpired(),
        FirebaseAuthConstants.networkRequestFailed =>
          const FirebaseErrorCategory.networkRequestFailed(),
        _ => const FirebaseErrorCategory.base(),
      };

      final firebaseError = AppError.firebase(category: category);

      _sentStateLog(firebaseError);

      return Left(firebaseError);
    } on SocketException catch (_) {
      const notInternetConnectionErrorCategory =
          NetworkErrorCategory.notInternetConnection();
      const networkError =
          AppError.network(category: notInternetConnectionErrorCategory);

      _sentStateLog(networkError);

      return const Left(networkError);
    } catch (e) {
      const baseAppError = AppError.base();

      _sentStateLog(baseAppError);

      return const Left(baseAppError);
    }
  }

  void _sentStateLog(AppError networkError) {
    final errorResultState = ResultState.error(networkError);
    _logger?.stateLog(resultState: errorResultState);
  }
}
