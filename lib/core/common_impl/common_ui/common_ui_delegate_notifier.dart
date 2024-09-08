import 'dart:async';

import 'package:app_settings/app_settings.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
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
  Timer? _timer;

  @override
  Activity<CommonUIActions>? build() {
    _dispose();
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

    _timer?.cancel();
    _timer = null;
  }

  @override
  void showLoader() {
    final durationForHideLode = const Duration(seconds: 30);

    final showLoader = CommonUIActions.showLoader();
    final action = Activity(showLoader);

    state = action;

    _timer?.cancel();
    _timer = null;
    _timer = Timer(durationForHideLode, hideLoader);
  }

  void _dispose() {
    ref.onDispose(() {
      _timer?.cancel();
      _timer = null;
    });
  }

  @override
  void openAppSettings() {
    AppSettings.openAppSettings();
  }
}
