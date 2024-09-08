import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uniqtrack/core/common/common_ui/cupertino_dialog_activity.dart';
import 'package:uniqtrack/core/common/strings/app_strings.dart';

part 'common_ui_actions.freezed.dart';

@freezed
class CommonUIActions with _$CommonUIActions {
  const factory CommonUIActions.cupertinoDialog({
    required AppStrings header,
    required AppStrings body,
    @Default(null) CupertinoDialogActivity? activity,
    @Default(null) VoidCallback? closeCallback,
    @Default(AppStrings.okay()) AppStrings close,
  }) = CommonCupertinoDialogAction;
  const factory CommonUIActions.showLoader() = CommonShowLoaderAction;
  const factory CommonUIActions.hideLoader() = CommonHideLoaderAction;
}
