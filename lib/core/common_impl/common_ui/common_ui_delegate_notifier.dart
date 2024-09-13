import 'package:app_settings/app_settings.dart';
import 'package:flutter/foundation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:uniqtrack/core/common/common_ui/common_ui_actions.dart';
import 'package:uniqtrack/core/common/activity.dart';
import 'package:uniqtrack/core/common/common_ui/common_ui_delegate.dart';
import 'package:uniqtrack/core/common/common_ui/cupertino_dialog_activity.dart';
import 'package:uniqtrack/core/common/strings/app_strings.dart';

part 'common_ui_delegate_notifier.g.dart';

@riverpod
class CommonUIDelegateNotifier extends _$CommonUIDelegateNotifier
    implements CommonUIDelegate {
  @override
  Activity<CommonUIActions>? build() {
    return null;
  }

  @override
  void cupertinoDialog({
    required AppStrings header,
    required AppStrings body,
    CupertinoDialogActivity? activity,
    AppStrings? close,
    VoidCallback? closeCallback,
  }) {
    final cupertinoAction = CommonUIActions.cupertinoDialog(
      header: header,
      body: body,
      activity: activity,
      close: close ?? AppStrings.okay(),
      closeCallback: closeCallback,
    );

    final event = Activity(cupertinoAction);

    state = event;
  }

  @override
  void hideLoader() {
    final hideLoader = CommonUIActions.hideLoader();
    final action = Activity(hideLoader);

    state = action;
  }

  @override
  void showLoader() {
    final showLoader = CommonUIActions.showLoader();
    final action = Activity(showLoader);

    state = action;
  }

  @override
  void openAppSettings() {
    AppSettings.openAppSettings();
  }
}
