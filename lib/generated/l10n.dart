// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Log in to your account`
  String get logInToYourAccount {
    return Intl.message(
      'Log in to your account',
      name: 'logInToYourAccount',
      desc: '',
      args: [],
    );
  }

  /// `Log in`
  String get logIn {
    return Intl.message(
      'Log in',
      name: 'logIn',
      desc: '',
      args: [],
    );
  }

  /// `Create New Account`
  String get createNewAccount {
    return Intl.message(
      'Create New Account',
      name: 'createNewAccount',
      desc: '',
      args: [],
    );
  }

  /// `Enter your email`
  String get enterYourEmail {
    return Intl.message(
      'Enter your email',
      name: 'enterYourEmail',
      desc: '',
      args: [],
    );
  }

  /// `Enter your password`
  String get enterYourPassword {
    return Intl.message(
      'Enter your password',
      name: 'enterYourPassword',
      desc: '',
      args: [],
    );
  }

  /// `Create an account`
  String get createAnAccount {
    return Intl.message(
      'Create an account',
      name: 'createAnAccount',
      desc: '',
      args: [],
    );
  }

  /// `Back`
  String get back {
    return Intl.message(
      'Back',
      name: 'back',
      desc: '',
      args: [],
    );
  }

  /// `Enter your full name`
  String get enterYourFullName {
    return Intl.message(
      'Enter your full name',
      name: 'enterYourFullName',
      desc: '',
      args: [],
    );
  }

  /// `Male`
  String get male {
    return Intl.message(
      'Male',
      name: 'male',
      desc: '',
      args: [],
    );
  }

  /// `Female`
  String get female {
    return Intl.message(
      'Female',
      name: 'female',
      desc: '',
      args: [],
    );
  }

  /// `Sign up`
  String get signUp {
    return Intl.message(
      'Sign up',
      name: 'signUp',
      desc: '',
      args: [],
    );
  }

  /// `Image`
  String get image {
    return Intl.message(
      'Image',
      name: 'image',
      desc: '',
      args: [],
    );
  }

  /// `Choose from the library`
  String get chooseFromTheLibrary {
    return Intl.message(
      'Choose from the library',
      name: 'chooseFromTheLibrary',
      desc: '',
      args: [],
    );
  }

  /// `Take a photo`
  String get takeAPhoto {
    return Intl.message(
      'Take a photo',
      name: 'takeAPhoto',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get cancel {
    return Intl.message(
      'Cancel',
      name: 'cancel',
      desc: '',
      args: [],
    );
  }

  /// `Invalid email address`
  String get invalidEmailAddress {
    return Intl.message(
      'Invalid email address',
      name: 'invalidEmailAddress',
      desc: '',
      args: [],
    );
  }

  /// `Invalid password`
  String get invalidPassword {
    return Intl.message(
      'Invalid password',
      name: 'invalidPassword',
      desc: '',
      args: [],
    );
  }

  /// `Invalid name`
  String get invalidName {
    return Intl.message(
      'Invalid name',
      name: 'invalidName',
      desc: '',
      args: [],
    );
  }

  /// `Error!`
  String get error {
    return Intl.message(
      'Error!',
      name: 'error',
      desc: '',
      args: [],
    );
  }

  /// `Okay`
  String get okay {
    return Intl.message(
      'Okay',
      name: 'okay',
      desc: '',
      args: [],
    );
  }

  /// `An error has occurred in the application!`
  String get anErrorHasOccurredInTheApplication {
    return Intl.message(
      'An error has occurred in the application!',
      name: 'anErrorHasOccurredInTheApplication',
      desc: '',
      args: [],
    );
  }

  /// `Email already in use`
  String get emailAlreadyInUse {
    return Intl.message(
      'Email already in use',
      name: 'emailAlreadyInUse',
      desc: '',
      args: [],
    );
  }

  /// `Operation not allowed`
  String get operation_not_allowed {
    return Intl.message(
      'Operation not allowed',
      name: 'operation_not_allowed',
      desc: '',
      args: [],
    );
  }

  /// `Weak password`
  String get weakPassword {
    return Intl.message(
      'Weak password',
      name: 'weakPassword',
      desc: '',
      args: [],
    );
  }

  /// `Too many requests`
  String get tooManyRequests {
    return Intl.message(
      'Too many requests',
      name: 'tooManyRequests',
      desc: '',
      args: [],
    );
  }

  /// `User token expired`
  String get userTokenExpired {
    return Intl.message(
      'User token expired',
      name: 'userTokenExpired',
      desc: '',
      args: [],
    );
  }

  /// `Check your internet connection and try again`
  String get checkYourInternetConnectionAndTryAgain {
    return Intl.message(
      'Check your internet connection and try again',
      name: 'checkYourInternetConnectionAndTryAgain',
      desc: '',
      args: [],
    );
  }

  /// `Connection timeout failure occurred`
  String get connectionTimeoutFailureOccurred {
    return Intl.message(
      'Connection timeout failure occurred',
      name: 'connectionTimeoutFailureOccurred',
      desc: '',
      args: [],
    );
  }

  /// `Send timeout failure occurred`
  String get sendTimeoutFailureOccurred {
    return Intl.message(
      'Send timeout failure occurred',
      name: 'sendTimeoutFailureOccurred',
      desc: '',
      args: [],
    );
  }

  /// `Receive timeout failure occurred`
  String get receiveTimeoutFailureOccurred {
    return Intl.message(
      'Receive timeout failure occurred',
      name: 'receiveTimeoutFailureOccurred',
      desc: '',
      args: [],
    );
  }

  /// `The request was canceled`
  String get theRequestWasCanceled {
    return Intl.message(
      'The request was canceled',
      name: 'theRequestWasCanceled',
      desc: '',
      args: [],
    );
  }

  /// `A bad certificate error occurred`
  String get aBadCertificateErrorOccurred {
    return Intl.message(
      'A bad certificate error occurred',
      name: 'aBadCertificateErrorOccurred',
      desc: '',
      args: [],
    );
  }

  /// `A bad response error occurred`
  String get aBadResponseErrorOccurred {
    return Intl.message(
      'A bad response error occurred',
      name: 'aBadResponseErrorOccurred',
      desc: '',
      args: [],
    );
  }

  /// `Notification`
  String get notification {
    return Intl.message(
      'Notification',
      name: 'notification',
      desc: '',
      args: [],
    );
  }

  /// `The user has been successfully registered`
  String get theUserHasBeenSuccessfullyRegistered {
    return Intl.message(
      'The user has been successfully registered',
      name: 'theUserHasBeenSuccessfullyRegistered',
      desc: '',
      args: [],
    );
  }

  /// `User has been disabled`
  String get userHasBeenDisabled {
    return Intl.message(
      'User has been disabled',
      name: 'userHasBeenDisabled',
      desc: '',
      args: [],
    );
  }

  /// `User not found`
  String get userNotFound {
    return Intl.message(
      'User not found',
      name: 'userNotFound',
      desc: '',
      args: [],
    );
  }

  /// `Wrong password`
  String get wrongPassword {
    return Intl.message(
      'Wrong password',
      name: 'wrongPassword',
      desc: '',
      args: [],
    );
  }

  /// `Invalid credential`
  String get invalidCredential {
    return Intl.message(
      'Invalid credential',
      name: 'invalidCredential',
      desc: '',
      args: [],
    );
  }

  /// `Forgot password?`
  String get forgotPassword {
    return Intl.message(
      'Forgot password?',
      name: 'forgotPassword',
      desc: '',
      args: [],
    );
  }

  /// `Enter your password recovery email`
  String get enterYourPasswordRecoveryEmail {
    return Intl.message(
      'Enter your password recovery email',
      name: 'enterYourPasswordRecoveryEmail',
      desc: '',
      args: [],
    );
  }

  /// `Send password`
  String get sendPassword {
    return Intl.message(
      'Send password',
      name: 'sendPassword',
      desc: '',
      args: [],
    );
  }

  /// `The continuation URL is not whitelisted`
  String get theContinuationUrlIsNotWhitelisted {
    return Intl.message(
      'The continuation URL is not whitelisted',
      name: 'theContinuationUrlIsNotWhitelisted',
      desc: '',
      args: [],
    );
  }

  /// `The continue URL provided in the request is invalid`
  String get theContinueUrlProvidedInTheRequestIsInvalid {
    return Intl.message(
      'The continue URL provided in the request is invalid',
      name: 'theContinueUrlProvidedInTheRequestIsInvalid',
      desc: '',
      args: [],
    );
  }

  /// `An iOS Bundle ID must be provided if an App Store ID is provided`
  String get anIosBundleIdMustBeProvidedIfAnApp {
    return Intl.message(
      'An iOS Bundle ID must be provided if an App Store ID is provided',
      name: 'anIosBundleIdMustBeProvidedIfAnApp',
      desc: '',
      args: [],
    );
  }

  /// `A continue URL must be provided in the request`
  String get aContinueUrlMustBeProvidedInTheRequest {
    return Intl.message(
      'A continue URL must be provided in the request',
      name: 'aContinueUrlMustBeProvidedInTheRequest',
      desc: '',
      args: [],
    );
  }

  /// `An Android package name must be provided if the Android app is required to be installed`
  String get anAndroidPackageNameMustBeProvidedIfTheAndroid {
    return Intl.message(
      'An Android package name must be provided if the Android app is required to be installed',
      name: 'anAndroidPackageNameMustBeProvidedIfTheAndroid',
      desc: '',
      args: [],
    );
  }

  /// `The password has been sent to the specified email address.`
  String get thePasswordHasBeenSentToTheSpecifiedEmailAddress {
    return Intl.message(
      'The password has been sent to the specified email address.',
      name: 'thePasswordHasBeenSentToTheSpecifiedEmailAddress',
      desc: '',
      args: [],
    );
  }

  /// `Community`
  String get community {
    return Intl.message(
      'Community',
      name: 'community',
      desc: '',
      args: [],
    );
  }

  /// `Profile`
  String get profile {
    return Intl.message(
      'Profile',
      name: 'profile',
      desc: '',
      args: [],
    );
  }

  /// `Sign out`
  String get signOut {
    return Intl.message(
      'Sign out',
      name: 'signOut',
      desc: '',
      args: [],
    );
  }

  /// `My tracks`
  String get myTracks {
    return Intl.message(
      'My tracks',
      name: 'myTracks',
      desc: '',
      args: [],
    );
  }

  /// `My favourite tracks`
  String get myFavouriteTracks {
    return Intl.message(
      'My favourite tracks',
      name: 'myFavouriteTracks',
      desc: '',
      args: [],
    );
  }

  /// `There is no permission to perform this action.`
  String get thereIsNoPermissionToPerformThisAction {
    return Intl.message(
      'There is no permission to perform this action.',
      name: 'thereIsNoPermissionToPerformThisAction',
      desc: '',
      args: [],
    );
  }

  /// `Allow`
  String get allow {
    return Intl.message(
      'Allow',
      name: 'allow',
      desc: '',
      args: [],
    );
  }

  /// `Prohibit`
  String get prohibit {
    return Intl.message(
      'Prohibit',
      name: 'prohibit',
      desc: '',
      args: [],
    );
  }

  /// `Start recording`
  String get startRecording {
    return Intl.message(
      'Start recording',
      name: 'startRecording',
      desc: '',
      args: [],
    );
  }

  /// `Location service are disabled.`
  String get locationServiceAreDisabled {
    return Intl.message(
      'Location service are disabled.',
      name: 'locationServiceAreDisabled',
      desc: '',
      args: [],
    );
  }

  /// `There is no permission to determine the location.`
  String get thereIsNoPermissionToDetermineTheUsersLocation {
    return Intl.message(
      'There is no permission to determine the location.',
      name: 'thereIsNoPermissionToDetermineTheUsersLocation',
      desc: '',
      args: [],
    );
  }

  /// `It is impossible to start recording`
  String get itIsImpossibleToStartRecording {
    return Intl.message(
      'It is impossible to start recording',
      name: 'itIsImpossibleToStartRecording',
      desc: '',
      args: [],
    );
  }

  /// `It is not possible to get your current location`
  String get itIsNotPossibleToGetYourCurrentLocation {
    return Intl.message(
      'It is not possible to get your current location',
      name: 'itIsNotPossibleToGetYourCurrentLocation',
      desc: '',
      args: [],
    );
  }

  /// `Uniqtrack receives information about your location`
  String get trackingRecordNotificationTitle {
    return Intl.message(
      'Uniqtrack receives information about your location',
      name: 'trackingRecordNotificationTitle',
      desc: '',
      args: [],
    );
  }

  /// `This is necessary for tracking records`
  String get trackingRecordNotificationBody {
    return Intl.message(
      'This is necessary for tracking records',
      name: 'trackingRecordNotificationBody',
      desc: '',
      args: [],
    );
  }

  /// `Route length`
  String get routeLength {
    return Intl.message(
      'Route length',
      name: 'routeLength',
      desc: '',
      args: [],
    );
  }

  /// `Time`
  String get time {
    return Intl.message(
      'Time',
      name: 'time',
      desc: '',
      args: [],
    );
  }

  /// `Average speed`
  String get averageSpeed {
    return Intl.message(
      'Average speed',
      name: 'averageSpeed',
      desc: '',
      args: [],
    );
  }

  /// `Pause`
  String get pause {
    return Intl.message(
      'Pause',
      name: 'pause',
      desc: '',
      args: [],
    );
  }

  /// `Stop`
  String get stop {
    return Intl.message(
      'Stop',
      name: 'stop',
      desc: '',
      args: [],
    );
  }

  /// `Save`
  String get save {
    return Intl.message(
      'Save',
      name: 'save',
      desc: '',
      args: [],
    );
  }

  /// `Continue`
  String get toContinue {
    return Intl.message(
      'Continue',
      name: 'toContinue',
      desc: '',
      args: [],
    );
  }

  /// `Add memory`
  String get addMemory {
    return Intl.message(
      'Add memory',
      name: 'addMemory',
      desc: '',
      args: [],
    );
  }

  /// `Do you want to finish recording the track?`
  String get doYouWantToFinishRecordingTheTrack {
    return Intl.message(
      'Do you want to finish recording the track?',
      name: 'doYouWantToFinishRecordingTheTrack',
      desc: '',
      args: [],
    );
  }

  /// `Attention`
  String get attention {
    return Intl.message(
      'Attention',
      name: 'attention',
      desc: '',
      args: [],
    );
  }

  /// `Delete`
  String get delete {
    return Intl.message(
      'Delete',
      name: 'delete',
      desc: '',
      args: [],
    );
  }

  /// `{distance} km`
  String km(String distance) {
    return Intl.message(
      '$distance km',
      name: 'km',
      desc: '',
      args: [distance],
    );
  }

  /// `{value} m`
  String value_m(Object value) {
    return Intl.message(
      '$value m',
      name: 'value_m',
      desc: '',
      args: [value],
    );
  }

  /// `{speed} km/h`
  String km_per_h(String speed) {
    return Intl.message(
      '$speed km/h',
      name: 'km_per_h',
      desc: '',
      args: [speed],
    );
  }

  /// `Edit Memory`
  String get editMemory {
    return Intl.message(
      'Edit Memory',
      name: 'editMemory',
      desc: '',
      args: [],
    );
  }

  /// `Enter track name`
  String get enterTrackName {
    return Intl.message(
      'Enter track name',
      name: 'enterTrackName',
      desc: '',
      args: [],
    );
  }

  /// `Name`
  String get name {
    return Intl.message(
      'Name',
      name: 'name',
      desc: '',
      args: [],
    );
  }

  /// `Comment`
  String get comment {
    return Intl.message(
      'Comment',
      name: 'comment',
      desc: '',
      args: [],
    );
  }

  /// `Enter your comment`
  String get enterYourComment {
    return Intl.message(
      'Enter your comment',
      name: 'enterYourComment',
      desc: '',
      args: [],
    );
  }

  /// `Don't save`
  String get dontSave {
    return Intl.message(
      'Don\'t save',
      name: 'dontSave',
      desc: '',
      args: [],
    );
  }

  /// `Delete and exit`
  String get deleteAndExit {
    return Intl.message(
      'Delete and exit',
      name: 'deleteAndExit',
      desc: '',
      args: [],
    );
  }

  /// `Add track`
  String get addTrack {
    return Intl.message(
      'Add track',
      name: 'addTrack',
      desc: '',
      args: [],
    );
  }

  /// `Edit track`
  String get editTrack {
    return Intl.message(
      'Edit track',
      name: 'editTrack',
      desc: '',
      args: [],
    );
  }

  /// `Invalid track name`
  String get invalidTrackName {
    return Intl.message(
      'Invalid track name',
      name: 'invalidTrackName',
      desc: '',
      args: [],
    );
  }

  /// `Invalid comment`
  String get invalidComment {
    return Intl.message(
      'Invalid comment',
      name: 'invalidComment',
      desc: '',
      args: [],
    );
  }

  /// `Add picture`
  String get addPicture {
    return Intl.message(
      'Add picture',
      name: 'addPicture',
      desc: '',
      args: [],
    );
  }

  /// `Invalid memory name`
  String get invalidMemoryName {
    return Intl.message(
      'Invalid memory name',
      name: 'invalidMemoryName',
      desc: '',
      args: [],
    );
  }

  /// `Upload photos`
  String get uploadPhotos {
    return Intl.message(
      'Upload photos',
      name: 'uploadPhotos',
      desc: '',
      args: [],
    );
  }

  /// `Edit`
  String get edit {
    return Intl.message(
      'Edit',
      name: 'edit',
      desc: '',
      args: [],
    );
  }

  /// `Memories`
  String get memories {
    return Intl.message(
      'Memories',
      name: 'memories',
      desc: '',
      args: [],
    );
  }

  /// `The user is unauthorized`
  String get theUserIsUnauthorized {
    return Intl.message(
      'The user is unauthorized',
      name: 'theUserIsUnauthorized',
      desc: '',
      args: [],
    );
  }

  /// `The entry was successfully added`
  String get theEntryWasSuccessfullyAdded {
    return Intl.message(
      'The entry was successfully added',
      name: 'theEntryWasSuccessfullyAdded',
      desc: '',
      args: [],
    );
  }

  /// `Refresh`
  String get refresh {
    return Intl.message(
      'Refresh',
      name: 'refresh',
      desc: '',
      args: [],
    );
  }

  /// `There are no track recordings here yet`
  String get thereAreNoTrackRecordingsHereYet {
    return Intl.message(
      'There are no track recordings here yet',
      name: 'thereAreNoTrackRecordingsHereYet',
      desc: '',
      args: [],
    );
  }

  /// `Enter memory name`
  String get enterMemoryName {
    return Intl.message(
      'Enter memory name',
      name: 'enterMemoryName',
      desc: '',
      args: [],
    );
  }

  /// `Favourite tracks`
  String get favouriteTracks {
    return Intl.message(
      'Favourite tracks',
      name: 'favouriteTracks',
      desc: '',
      args: [],
    );
  }

  /// `Add to Favorites`
  String get addToFavorites {
    return Intl.message(
      'Add to Favorites',
      name: 'addToFavorites',
      desc: '',
      args: [],
    );
  }

  /// `Remove From Favourites`
  String get removeFromFavourites {
    return Intl.message(
      'Remove From Favourites',
      name: 'removeFromFavourites',
      desc: '',
      args: [],
    );
  }

  /// `Actions`
  String get actions {
    return Intl.message(
      'Actions',
      name: 'actions',
      desc: '',
      args: [],
    );
  }

  /// `Already added to favorites`
  String get alreadyAddedToFavorites {
    return Intl.message(
      'Already added to favorites',
      name: 'alreadyAddedToFavorites',
      desc: '',
      args: [],
    );
  }

  /// `There is not ID`
  String get thereIsNotId {
    return Intl.message(
      'There is not ID',
      name: 'thereIsNotId',
      desc: '',
      args: [],
    );
  }

  /// `Track added successfully`
  String get trackAddedSuccessfully {
    return Intl.message(
      'Track added successfully',
      name: 'trackAddedSuccessfully',
      desc: '',
      args: [],
    );
  }

  /// `Has not been added to favorites yet`
  String get hasNotBeenAddedToFavoritesYet {
    return Intl.message(
      'Has not been added to favorites yet',
      name: 'hasNotBeenAddedToFavoritesYet',
      desc: '',
      args: [],
    );
  }

  /// `The track was successfully deleted`
  String get theTrackWasSuccessfullyDeleted {
    return Intl.message(
      'The track was successfully deleted',
      name: 'theTrackWasSuccessfullyDeleted',
      desc: '',
      args: [],
    );
  }

  /// `The track is not in the list of user tracks`
  String get theTrackIsNotInTheListOfUserTracks {
    return Intl.message(
      'The track is not in the list of user tracks',
      name: 'theTrackIsNotInTheListOfUserTracks',
      desc: '',
      args: [],
    );
  }

  /// `No remove rights`
  String get noRemoveRights {
    return Intl.message(
      'No remove rights',
      name: 'noRemoveRights',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ru'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
