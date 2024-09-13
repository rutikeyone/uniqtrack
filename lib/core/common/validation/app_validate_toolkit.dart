import 'package:flutter/material.dart';
import 'package:uniqtrack/core/common/validation/entities/comment.dart';
import 'package:uniqtrack/core/common/validation/entities/email.dart';
import 'package:uniqtrack/core/common/validation/entities/memory_name.dart';
import 'package:uniqtrack/core/common/validation/entities/name.dart';
import 'package:uniqtrack/core/common/validation/entities/password.dart';
import 'package:uniqtrack/core/common/validation/entities/track_name.dart';

abstract interface class AppValidationToolkit {
  String? validateEmail(Email email, BuildContext context);

  String? validatePassword(Password password, BuildContext context);

  String? validateName(Name name, BuildContext context);

  String? validateTrackName(TrackName trackName, BuildContext context);

  String? validateMemoryName(MemoryName memoryName, BuildContext context);

  String? validateComment(Comment comment, BuildContext context);
}