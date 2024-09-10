import 'package:flutter/material.dart';
import 'package:uniqtrack/core/common/validation/entities/email.dart';
import 'package:uniqtrack/core/common/validation/entities/name.dart';
import 'package:uniqtrack/core/common/validation/entities/password.dart';

abstract interface class AppValidationToolkit {
  String? validateEmail(Email email, BuildContext context);

  String? validatePassword(Password password, BuildContext context);

  String? validateName(Name name, BuildContext context);
}