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
