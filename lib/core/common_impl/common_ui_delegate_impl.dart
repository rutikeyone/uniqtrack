import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:uniqtrack/core/common/common_ui/common_ui_actions.dart';
import 'package:uniqtrack/core/common/common_ui/common_ui_delegate.dart';
import 'package:uniqtrack/core/common/activity.dart';
import 'package:uniqtrack/core/common/strings/app_strings.dart';

final commonUIDelegateProvider = StateNotifierProvider.autoDispose<
    CommonUIDelegateImpl, Activity<CommonUIActions>?>((ref) => CommonUIDelegateImpl());

class CommonUIDelegateImpl extends StateNotifier<Activity<CommonUIActions>?>
    implements CommonUIDelegate {
  CommonUIDelegateImpl() : super(null);

  @override
  void cupertinoDialog({
    required AppStrings header,
    required AppStrings body,
  }) {
    final cupertinoAction = CommonUIActions.cupertinoDialog(
      header: header,
      body: body,
    );

    final event = Activity(cupertinoAction);

    state = event;
  }
}
