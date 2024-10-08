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

  const factory AppStrings.unauthorizedContinueUri() =
      _$AppUnathorizedContinueUriString;

  const factory AppStrings.invalidContinueUri() = _$AppInvalidContinueUriString;

  const factory AppStrings.missingIOSBundleId() = _$AppMissingIOSBundleIdString;

  const factory AppStrings.missingContinueUri() = _$AppMissingContinueUriString;

  const factory AppStrings.missingAndroidPkgName() =
      _$AppMissingAndroidPkgNameString;

  const factory AppStrings.thePasswordHasBeenSentToTheSpecifiedEmailAddress() =
      _$AppThePasswordHasBeenSentToTheSpecifiedEmailAddressString;

  const factory AppStrings.noPermissionToPerform() =
      _$AppNoPermissionToPerformString;

  const factory AppStrings.prohibit() = _$AppProhibitString;

  const factory AppStrings.allow() = _$AppAllowString;

  const factory AppStrings.serviceDenied() = _$AppServiceDeniedString;

  const factory AppStrings.noPermissionDetermineUserLocation() =
      _$AppNoPermissionDeterminateUserLocationString;

  const factory AppStrings.cantStartRecording() = _$AppCantStartRecordingString;

  const factory AppStrings.cantGetYourCurrentLocation() =
      _$AppStringsCantGetYourCurrentLocationString;

  const factory AppStrings.trackingRecordNotificationTitle() =
      _$AppTrackingRecordNotificationTitleString;

  const factory AppStrings.trackingRecordNotificationBody() =
      _$AppTrackingRecordNotificationBodyString;

  const factory AppStrings.doYouWantToFinishRecordingTheTrackQuestion() =
      _$AppDoYouWantToFinishRecordingTheTrackQuestionString;

  const factory AppStrings.attention() = _AppAttentionString;

  const factory AppStrings.save() = _AppSaveString;

  const factory AppStrings.delete() = _AppDeleteString;

  const factory AppStrings.deleteAndExit() = _AppDeleteAndExitString;

  const factory AppStrings.toContinue() = _$AppToContinueString;

  const factory AppStrings.userIsUnauthorized() = _$AppUserNotAuthorizedString;

  const factory AppStrings.entryWasSuccessfullyAdded() =
      _$AppEntryWasSuccessfullyAddedString;

  const factory AppStrings.alreadyAddedToFavourites() =
      _$AlreadyAddedToFavouritesString;

  const factory AppStrings.noID() = _NoIDString;

  const factory AppStrings.trackAddedSuccessfully() =
      _TrackAddedSuccessfullyString;

  const factory AppStrings.notAddedToFavorites() = _NotAddedToFavouritesString;

  const factory AppStrings.trackWasSuccessfullyDeleted() =
      _TrackWasSuccessfullyDeletedString;

  const factory AppStrings.notAddedToUserTracks() = _NotAddedToUserTracksString;

  const factory AppStrings.noRemoveRights() = _NoRemoveRightsString;

  const factory AppStrings.notContainsElement() = _NoContainsElementString;

  const factory AppStrings.noUpdateRights() = _NoUpdateRightsString;

  const factory AppStrings.dataHasBeenSuccessfullyUpdated() =
      _DataHasBeenSuccessfullyUpdatedString;

  const factory AppStrings.memoryHasBeenSuccessfullyDeleted() =
      _MemoryHasBeenSuccessfullyDeletedString;

  const factory AppStrings.userIsTheCreatorOfTheTrack() =
      _UserIsCreatorOfTheTrackString;

  const factory AppStrings.alreadyContainsElement() =
      _AlreadyContainsElementString;

  const factory AppStrings.shareLimitMessage() = _ShareLimitMessage;

  const factory AppStrings.theContentHasBeenDeleted() =
      _TheContentHasBeenDeletedString;

  const factory AppStrings.goodGPSSignalLevelIsRequiredToRecordTheTrackCorrectly() =
      _GoodGPSSignalLevelIsRequiredToRecordTheTrackCorrectlyString;
}
