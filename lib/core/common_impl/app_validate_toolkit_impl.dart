import 'package:flutter/src/widgets/framework.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:uniqtrack/core/common/validation/app_validate_toolkit.dart';
import 'package:uniqtrack/core/common/validation/entities/comment.dart';
import 'package:uniqtrack/core/common/validation/entities/email.dart';
import 'package:uniqtrack/core/common/validation/entities/memory_name.dart';
import 'package:uniqtrack/core/common/validation/entities/name.dart';
import 'package:uniqtrack/core/common/validation/entities/password.dart';
import 'package:uniqtrack/core/common/validation/entities/track_name.dart';
import 'package:uniqtrack/generated/l10n.dart';

part 'app_validate_toolkit_impl.g.dart';

@riverpod
AppValidationToolkit appValidationToolkit(AppValidationToolkitRef ref) {
  return AppValidateToolkitImpl();
}

class AppValidateToolkitImpl implements AppValidationToolkit {
  String? validateEmail(Email email, BuildContext context) {
    final hasError = email.displayError != null &&
        email.error == EmailValidationError.incorrectEmail;

    if (hasError) {
      return S.of(context).invalidEmailAddress;
    }
    return null;
  }

  String? validatePassword(Password password, BuildContext context) {
    final hasError = password.displayError != null &&
        password.error == PasswordValidationError.incorrectPassword;

    if (hasError) {
      return S.of(context).invalidPassword;
    }

    return null;
  }

  String? validateName(Name name, BuildContext context) {
    final hasError = name.displayError != null &&
        name.error == NameValidationError.incorrectName;

    if (hasError) {
      return S.of(context).invalidName;
    }

    return null;
  }

  @override
  String? validateTrackName(TrackName trackName, BuildContext context) {
    final hasError = trackName.displayError != null &&
        trackName.error == TrackNameValidationError.incorrectTrackName;

    if (hasError) {
      return S.of(context).invalidTrackName;
    }

    return null;
  }
  
  @override
  String? validateMemoryName(MemoryName memoryName, BuildContext context) {
    final hasError = memoryName.displayError != null &&
        memoryName.error == MemoryNameValidationError.incorrectMemoryName;

    if (hasError) {
      return S.of(context).invalidMemoryName;
    }

    return null;
  }

  @override
  String? validateComment(Comment comment, BuildContext context) {
    final hasError = comment.displayError != null &&
        comment.error == CommentValidationError.incorrectComment;

    if (hasError) {
      return S.of(context).invalidComment;
    }

    return null;
  }
}
