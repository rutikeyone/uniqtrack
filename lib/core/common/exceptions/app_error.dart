part of 'exceptions.dart';

typedef PermissionResultWithAppError<T> = Either<AppError, PermissionResult<T>>;

typedef PermissionResult<T> = Either<AppPermissionError, T>;

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

  const factory AppError.base() = AppBaseError;

  const factory AppError.firebase({
    required FirebaseErrorCategory category,
  }) = AppFirebaseError;

  const factory AppError.permission({
    required PermissionErrorCategory category,
  }) = AppPermissionError;

  const factory AppError.network({
    required NetworkErrorCategory category,
  }) = AppNetworkError;

  const factory AppError.authentication({
    required AuthenticationErrorCategory category,
  }) = AppAuthenticationError;

  const factory AppError.access({
    required AccessErrorCategory category,
  }) = AppAccessError;

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
          unauthorizedContinueUri: () =>
              const AppStrings.unauthorizedContinueUri(),
          invalidContinueUri: () => const AppStrings.invalidContinueUri(),
          missingIOSBundleId: () => const AppStrings.missingIOSBundleId(),
          missingContinueUri: () => const AppStrings.missingContinueUri(),
          missingAndroidPkgName: () => const AppStrings.missingAndroidPkgName(),
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
      permission: (category) {
        return category.when(
          denied: () => const AppStrings.noPermissionToPerform(),
          permanentlyDenied: () => const AppStrings.noPermissionToPerform(),
        );
      },
      authentication: (category) {
        return category.when(
          notAuth: () => AppStrings.userIsUnauthorized(),
        );
      },
      access: (category) {
        return category.when(
          alreadyAddedInFavourite: () => AppStrings.alreadyAddedToFavourites(),
          noID: () => AppStrings.noID(),
          notAddedToFavorites: () => AppStrings.notAddedToFavorites(),
          notAddedToUserTracks: () => AppStrings.notAddedToUserTracks(),
          noRemoveRights: () => AppStrings.noRemoveRights(),
        );
      },
    );
  }

  CupertinoDialogActivity? activity({
    required VoidCallback requestPermissionAgain,
    required VoidCallback openSettings,
  }) {
    return whenOrNull(
      permission: (category) {
        return category.when(
          denied: () => CupertinoDialogActivity.new(
            label: AppStrings.allow(),
            onPressed: requestPermissionAgain,
          ),
          permanentlyDenied: () => CupertinoDialogActivity.new(
            label: AppStrings.allow(),
            onPressed: openSettings,
          ),
        );
      },
    );
  }

  AppStrings? close() {
    return maybeWhen(
      permission: (_) => AppStrings.prohibit(),
      orElse: () => AppStrings.okay(),
    );
  }
}
