import 'package:flutter/material.dart';
import 'package:uniqtrack/core/common/strings/app_strings.dart';
import 'package:uniqtrack/core/presentation/widgets/image_source_bottom_sheet/image_source_bottom_sheet.dart';
import 'package:uniqtrack/core/theme/app_diments.dart';
import 'package:uniqtrack/generated/l10n.dart';

extension ContextExtension on BuildContext {
  ThemeData get theme => Theme.of(this);

  TextTheme get textTheme => theme.textTheme;

  ColorScheme get colorScheme => theme.colorScheme;

  InputDecorationTheme get inputDecorationTheme => theme.inputDecorationTheme;

  BottomSheetThemeData get bottomSheetTheme => theme.bottomSheetTheme;

  Size get size => MediaQuery.of(this).size;

  double get fullWidth => size.width;

  double get bottomSheetWidth => fullWidth - AppDiments.dm16;

  BottomNavigationBarThemeData get bottomNavigationBarTheme =>
      theme.bottomNavigationBarTheme;

  Future<void> showImageSourceModalBottomSheet({
    required VoidCallback onFromGalleryPressed,
    required VoidCallback onFromCameraPressed,
  }) {
    return showModalBottomSheet(
      backgroundColor: Colors.transparent,
      constraints: BoxConstraints(
        maxWidth: bottomSheetWidth,
      ),
      context: this,
      builder: (context) {
        return ImageSourceModalBottomSheet(
          onFromCameraPressed: onFromCameraPressed,
          onFromGalleryPressed: onFromGalleryPressed,
          onClosePressed: Navigator.of(context).pop,
        );
      },
    );
  }

  String fromAppStrings(AppStrings value) {
    return value.when(
      error: () => S.of(this).error,
      okay: () => S.of(this).okay,
      errorHasOccurred: () => S.of(this).anErrorHasOccurredInTheApplication,
      invalidEmail: () => S.of(this).invalidEmailAddress,
      emailAlreadyInUse: () => S.of(this).emailAlreadyInUse,
      operationNotAllowed: () => S.of(this).operation_not_allowed,
      weakPassword: () => S.of(this).weakPassword,
      tooManyRequests: () => S.of(this).tooManyRequests,
      userTokenExpired: () => S.of(this).userTokenExpired,
      networkRequestFailed: () =>
          S.of(this).checkYourInternetConnectionAndTryAgain,
      notInternetConnection: () =>
          S.of(this).checkYourInternetConnectionAndTryAgain,
      connectTimeout: () => S.of(this).connectionTimeoutFailureOccurred,
      sendTimeout: () => S.of(this).sendTimeoutFailureOccurred,
      receiveTimeout: () => S.of(this).receiveTimeoutFailureOccurred,
      requestCancelled: () => S.of(this).theRequestWasCanceled,
      badCertificate: () => S.of(this).aBadCertificateErrorOccurred,
      badResponse: () => S.of(this).aBadResponseErrorOccurred,
      notification: () => S.of(this).notification,
      theUserHasBeenSuccessfullyRegistered: () =>
          S.of(this).theUserHasBeenSuccessfullyRegistered,
      userDisabled: () => S.of(this).userHasBeenDisabled,
      userNotFound: () => S.of(this).userNotFound,
      wrongPassword: () => S.of(this).wrongPassword,
      invalidCredential: () => S.of(this).invalidCredential,
      unauthorizedContinueUri: () =>
          S.of(this).theContinuationUrlIsNotWhitelisted,
      invalidContinueUri: () =>
          S.of(this).theContinueUrlProvidedInTheRequestIsInvalid,
      missingIOSBundleId: () => S.of(this).anIosBundleIdMustBeProvidedIfAnApp,
      missingContinueUri: () =>
          S.of(this).aContinueUrlMustBeProvidedInTheRequest,
      missingAndroidPkgName: () =>
          S.of(this).anAndroidPackageNameMustBeProvidedIfTheAndroid,
      thePasswordHasBeenSentToTheSpecifiedEmailAddress: () =>
          S.of(this).thePasswordHasBeenSentToTheSpecifiedEmailAddress,
      noPermissionToPerform: () =>
          S.of(this).thereIsNoPermissionToPerformThisAction,
      prohibit: () => S.of(this).prohibit,
      allow: () => S.of(this).allow,
    );
  }
}
