import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:uniqtrack/app/navigation/router/router.dart';
import 'package:uniqtrack/core/common/activity.dart';
import 'package:uniqtrack/core/common/common_ui/common_ui_actions.dart';
import 'package:uniqtrack/core/common/common_ui/common_ui_delegate.dart';
import 'package:uniqtrack/core/common/extensions/context_extension.dart';
import 'package:uniqtrack/core/common_impl/common_ui/common_ui_delegate_notifier.dart';
import 'package:uniqtrack/core/presentation/widgets/cupertino_dialog.dart';

class CommonUIContainer extends ConsumerStatefulWidget {
  final Widget child;
  final CommonUIDelegate commonUIDelegate;

  const CommonUIContainer({
    required this.child,
    required this.commonUIDelegate,
    super.key,
  });

  @override
  ConsumerState<CommonUIContainer> createState() => _CommonUIWrapperState();
}

class _CommonUIWrapperState extends ConsumerState<CommonUIContainer> {
  bool _dialogShowed = false;

  void _handleCommonUIActions(
    Activity<CommonUIActions>? previous,
    Activity<CommonUIActions>? next, {
    required GlobalKey<NavigatorState> navigatorKey,
  }) {
    final value = next?.get();
    if (value == null) return;

    value.map(
      cupertinoDialog: (action) {
        _showCupertinoDialog(
          action: action,
          navigatorKey: navigatorKey,
        );
      },
      showLoader: _showLoader,
      hideLoader: _hideLoader,
    );
  }

  void _showCupertinoDialog({
    required CommonCupertinoDialogAction action,
    required GlobalKey<NavigatorState> navigatorKey,
  }) {
    final activity = action.activity;

    final navigatorContext = navigatorKey.currentState?.context;
    final headerText = context.fromAppStrings(action.header);
    final bodyText = context.fromAppStrings(action.body);
    final closeText = context.fromAppStrings(action.close);
    final labelActivity = activity != null ? context.fromAppStrings(activity.label) : null;
    final activityOnPressed = activity?.onPressed;
    final closeCallback = action.closeCallback;

    if (_dialogShowed || navigatorContext == null) return;

    showCupertinoDialog(
        context: navigatorContext,
        builder: (context) {
          return CupertinoDialog(
            headerText: headerText,
            bodyText: bodyText,
            close: closeText,
            closeCallback: closeCallback,
            cupertinoDialogActivity: (labelActivity, activityOnPressed),
            closeDialog: navigatorContext.pop,
          );
        }).whenComplete(
      () {
        _dialogShowed = false;
      },
    );
  }

  void _showLoader(_) {
    context.loaderOverlay.show();
  }

  void _hideLoader(_) {
    final isVisible = context.loaderOverlay.visible;
    if(isVisible) {
      context.loaderOverlay.hide();
    }
  }

  @override
  Widget build(BuildContext context) {
    final navigatorKey = ref.watch(rootNavigatorKeyProvider);

    ref.listen<Activity<CommonUIActions>?>(
      commonUIDelegateNotifierProvider,
      (prev, next) {
        _handleCommonUIActions(prev, next, navigatorKey: navigatorKey);
      },
    );

    return widget.child;
  }

}
