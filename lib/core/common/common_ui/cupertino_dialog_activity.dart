import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uniqtrack/core/common/strings/app_strings.dart';

part 'cupertino_dialog_activity.freezed.dart';

@freezed
class CupertinoDialogActivity with _$CupertinoDialogActivity {
  const factory CupertinoDialogActivity({
    required AppStrings label,
    required VoidCallback onPressed,
  }) = _CupertinoDialogActivity;
}
