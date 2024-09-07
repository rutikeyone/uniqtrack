import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_strings.freezed.dart';

@freezed
class AppStrings with _$AppStrings {
  const factory AppStrings.error() = _AppErrorString;

  const factory AppStrings.okay() = _AppOkayString;

  const factory AppStrings.errorHasOccurred() = _AppErrorHasOccuredString;

  const factory AppStrings.invalidEmail() = _$AppInvalidEmailString;

  const factory AppStrings.emailAlreadyInUse() = _$AppEmailAlreadyInUseString;

  const factory AppStrings.operationNotAllowed() =
      _$AppOperationNotAllowedString;

  const factory AppStrings.weakPassword() = _$AppWeakPasswordString;

  const factory AppStrings.tooManyRequests() = _$AppTooManyRequestsString;

  const factory AppStrings.userTokenExpired() = _$AppUserTokenExpiredString;

  const factory AppStrings.networkRequestFailed() =
      _$AppNetworkRequestsFailedString;

  const factory AppStrings.notInternetConnection() =
      _$AppNotInternetConnectionString;

  const factory AppStrings.connectTimeout() = _$AppConnectTimeoutString;

  const factory AppStrings.sendTimeout() = _$AppSendTimeoutString;

  const factory AppStrings.receiveTimeout() = _$AppReceiveTimeoutString;

  const factory AppStrings.requestCancelled() = _$AppRequestCancelledString;

  const factory AppStrings.badCertificate() = _$AppBadCertificateString;

  const factory AppStrings.badResponse() = _$AppBadResponseString;

  const factory AppStrings.notification() = _$AppNotificationString;

  const factory AppStrings.theUserHasBeenSuccessfullyRegistered() =
      _$AppTheUserHasBeenSuccessfullyRegisteredString;

  const factory AppStrings.userDisabled() = _$AppUserDisabledString;

  const factory AppStrings.userNotFound() = _$AppUserNotFoundString;

  const factory AppStrings.wrongPassword() = _$AppWrongPasswordString;

  const factory AppStrings.invalidCredential() = _$AppInvalidCredentialString;

  const factory AppStrings.unauthorizedContinueUri() = _$AppUnathorizedContinueUriString;

  const factory AppStrings.invalidContinueUri() = _$AppInvalidContinueUriString;

  const factory AppStrings.missingIOSBundleId() = _$AppMissingIOSBundleIdString;

  const factory AppStrings.missingContinueUri() = _$AppMissingContinueUriString;

  const factory AppStrings.missingAndroidPkgName() = _$AppMissingAndroidPkgNameString;

  const factory AppStrings.thePasswordHasBeenSentToTheSpecifiedEmailAddress() = _$AppThePasswordHasBeenSentToTheSpecifiedEmailAddressString;
}
