import 'package:flutter/material.dart';
import 'package:uniqtrack/core/presentation/validation/entities/email.dart';
import 'package:uniqtrack/core/presentation/validation/entities/name.dart';
import 'package:uniqtrack/core/presentation/validation/entities/password.dart';
import 'package:uniqtrack/generated/l10n.dart';

class ValidationToolkit {
  static String? validateEmail(Email email, BuildContext context) {
    final hasError = email.displayError != null &&
        email.error == EmailValidationError.incorrectEmail;

    if (hasError) {
      return S.of(context).invalidEmailAddress;
    }
    return null;
  }

  static String? validatePassword(Password password, BuildContext context) {
    final hasError = password.displayError != null &&
        password.error == PasswordValidationError.incorrectPassword;

    if (hasError) {
      return S.of(context).invalidPassword;
    }

    return null;
  }

  static String? validateName(Name name, BuildContext context) {
    final hasError = name.displayError != null && name.error == NameValidationError.incorrectName;

    if(hasError) {
      return S.of(context).invalidName;
    }

    return null;
  }
}
