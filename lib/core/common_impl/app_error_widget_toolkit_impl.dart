import 'dart:io';

import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:uniqtrack/core/common/app_error_widget_toolkit.dart';
import 'package:uniqtrack/core/common/context_extension.dart';
import 'package:uniqtrack/core/common/exceptions/exceptions.dart';
import 'package:uniqtrack/core/common/firebase_auth_constants.dart';

part 'app_error_widget_toolkit_impl.g.dart';

@Riverpod(dependencies: [])
AppErrorWidgetToolkit appErrorWidgetToolkit(AppErrorWidgetToolkitRef ref) {
  return AppErrorWidgetToolkitImpl();
}

class AppErrorWidgetToolkitImpl implements AppErrorWidgetToolkit {
  String header({
    required BuildContext context,
    required Object object,
  }) {
    final error = object;

    final appError = _getAppError(error);

    return context.fromAppStrings(
      appError.header(),
    );
  }

  String body({
    required BuildContext context,
    required Object object,
  }) {
    final error = object;

    final appError = _getAppError(error);

    return context.fromAppStrings(
      appError.body(),
    );
  }

  AppError _getAppError(Object object) {
    return switch (object) {
      AppError() => object,
      DioException() => switch (object.type) {
          DioExceptionType.connectionTimeout => AppError.network(
              category: const NetworkErrorCategory.connectTimeout(),
            ),
          DioExceptionType.sendTimeout => AppError.network(
              category: const NetworkErrorCategory.sendTimeout(),
            ),
          DioExceptionType.receiveTimeout => AppError.network(
              category: const NetworkErrorCategory.receiveTimeout(),
            ),
          DioExceptionType.badCertificate => AppError.network(
              category: const NetworkErrorCategory.badCertificate(),
            ),
          DioExceptionType.badResponse => AppError.network(
              category: const NetworkErrorCategory.badResponse(),
            ),
          DioExceptionType.cancel => AppError.network(
              category: const NetworkErrorCategory.requestCancelled(),
            ),
          DioExceptionType.connectionError => AppError.network(
              category: const NetworkErrorCategory.notInternetConnection(),
            ),
          DioExceptionType.unknown => AppError.network(
              category: const NetworkErrorCategory.base(),
            ),
        },
      FirebaseAuthException() => switch (object.code) {
          FirebaseAuthConstants.emailAlreadyInUse => AppError.firebase(
              category: const FirebaseErrorCategory.emailAlreadyInUse(),
            ),
          FirebaseAuthConstants.invalidEmail => AppError.firebase(
              category: const FirebaseErrorCategory.invalidEmail(),
            ),
          FirebaseAuthConstants.operationNotAllowed => AppError.firebase(
              category: const FirebaseErrorCategory.operationNotAllowed(),
            ),
          FirebaseAuthConstants.weakPassword => AppError.firebase(
              category: const FirebaseErrorCategory.weakPassword(),
            ),
          FirebaseAuthConstants.tooManyRequests => AppError.firebase(
              category: const FirebaseErrorCategory.tooManyRequests(),
            ),
          FirebaseAuthConstants.userTokenExpired => AppError.firebase(
              category: const FirebaseErrorCategory.userTokenExpired(),
            ),
          FirebaseAuthConstants.networkRequestFailed => AppError.firebase(
              category: const FirebaseErrorCategory.networkRequestFailed(),
            ),
          FirebaseAuthConstants.userDisabled => AppError.firebase(
              category: const FirebaseErrorCategory.userDisabled(),
            ),
          FirebaseAuthConstants.userNotFound => AppError.firebase(
              category: const FirebaseErrorCategory.userNotFound(),
            ),
          FirebaseAuthConstants.wrongPassword => AppError.firebase(
              category: const FirebaseErrorCategory.wrongPassword(),
            ),
          FirebaseAuthConstants.invalidCredential => AppError.firebase(
              category: const FirebaseErrorCategory.invalidCredential(),
            ),
          FirebaseAuthConstants.unauthorizedContinueUri => AppError.firebase(
              category: const FirebaseErrorCategory.unauthorizedContinueUri(),
            ),
          FirebaseAuthConstants.invalidContinueUri => AppError.firebase(
              category: const FirebaseErrorCategory.invalidContinueUri(),
            ),
          FirebaseAuthConstants.missingIOSBundleId => AppError.firebase(
              category: const FirebaseErrorCategory.missingIOSBundleId(),
            ),
          FirebaseAuthConstants.missingContinueUri => AppError.firebase(
              category: const FirebaseErrorCategory.missingContinueUri(),
            ),
          FirebaseAuthConstants.missingAndroidPkgName => AppError.firebase(
              category: const FirebaseErrorCategory.missingAndroidPkgName(),
            ),
          _ => AppError.firebase(
              category: const FirebaseErrorCategory.base(),
            ),
        },
      SocketException() => AppError.network(
          category: NetworkErrorCategory.notInternetConnection(),
        ),
      Object() => AppError.base(),
    };
  }
}
