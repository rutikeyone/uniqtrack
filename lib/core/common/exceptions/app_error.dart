part of 'exceptions.dart';

@freezed
class AppError with _$AppError {
  bool get isCancelError {
    return maybeWhen(
      network: (category) {
        return category.maybeMap(
          requestCancelled: (_) => true,
          orElse: () => false,
        );
      },
      orElse: () => false,
    );
  }

  const AppError._();

  const factory AppError.base() = _AppBaseError;

  const factory AppError.firebase({
    required FirebaseErrorCategory category,
  }) = _AppFirebaseError;

  const factory AppError.network({
    required NetworkErrorCategory category,
  }) = _AppNetworkError;

  AppStrings header() {
    return const AppStrings.error();
  }

  AppStrings body() {
    return when(
      base: () => const AppStrings.errorHasOccurred(),
      firebase: (category) {
        return category.when(
          base: () => const AppStrings.errorHasOccurred(),
          emailAlreadyInUse: () => const AppStrings.emailAlreadyInUse(),
          invalidEmail: () => const AppStrings.invalidEmail(),
          operationNotAllowed: () => const AppStrings.operationNotAllowed(),
          weakPassword: () => const AppStrings.weakPassword(),
          tooManyRequests: () => const AppStrings.tooManyRequests(),
          userTokenExpired: () => const AppStrings.userTokenExpired(),
          networkRequestFailed: () => const AppStrings.networkRequestFailed(),
          userDisabled: () => const AppStrings.userDisabled(),
          userNotFound: () => const AppStrings.userNotFound(),
          wrongPassword: () => const AppStrings.wrongPassword(),
          invalidCredential: () => const AppStrings.invalidCredential(),
        );
      },
      network: (category) {
        return category.when(
          connectTimeout: () => const AppStrings.connectTimeout(),
          sendTimeout: () => const AppStrings.sendTimeout(),
          receiveTimeout: () => const AppStrings.receiveTimeout(),
          requestCancelled: () => const AppStrings.requestCancelled(),
          notInternetConnection: () => const AppStrings.notInternetConnection(),
          badCertificate: () => const AppStrings.badCertificate(),
          badResponse: () => const AppStrings.badResponse(),
          base: () => const AppStrings.errorHasOccurred(),
        );
      },
    );
  }
}
