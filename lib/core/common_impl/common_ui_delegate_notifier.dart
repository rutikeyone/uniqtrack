import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:uniqtrack/core/common/common_ui/common_ui_actions.dart';
import 'package:uniqtrack/core/common/activity.dart';
import 'package:uniqtrack/core/common/common_ui/common_ui_delegate.dart';
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
    VoidCallback? closeCallback,
  }) {
    final cupertinoAction = CommonUIActions.cupertinoDialog(
      header: header,
      body: body,
      closeCallback: closeCallback,
    );

    final event = Activity(cupertinoAction);

    state = event;
  }
}
