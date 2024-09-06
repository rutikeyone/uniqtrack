import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:uniqtrack/core/common/activity.dart';
import 'package:uniqtrack/core/common/common_ui/common_ui_actions.dart';
import 'package:uniqtrack/core/common/common_ui/common_ui_delegate.dart';
import 'package:uniqtrack/core/common/context_extension.dart';
import 'package:uniqtrack/core/common/strings/app_strings.dart';
import 'package:uniqtrack/core/common_impl/common_ui_delegate_impl.dart';
import 'package:uniqtrack/core/presentation/widgets/cupertino_dialog.dart';
import 'package:uniqtrack/features/navigation/router/router.dart';

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
    value.when(cupertinoDialog: (header, body, close) {
      _showCupertinoDialog(header, body, close, navigatorKey: navigatorKey);
    });
  }

  void _showCupertinoDialog(
    AppStrings header,
    AppStrings body,
    AppStrings close, {
    required GlobalKey<NavigatorState> navigatorKey,
  }) {
    final navigatorContext = navigatorKey.currentState?.context;
    final headerText = context.fromAppStrings(header);
    final bodyText = context.fromAppStrings(body);
    final closeText = context.fromAppStrings(close);

    if (_dialogShowed || navigatorContext == null) return;

    showCupertinoDialog(
        context: navigatorContext,
        builder: (context) {
          return CupertinoDialog(
            headerText: headerText,
            bodyText: bodyText,
            close: closeText,
            closeDialog: navigatorContext.pop,
          );
        }).whenComplete(() {
      _dialogShowed = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    final navigatorKey = ref.watch(rootNavigatorProvider);

    ref.listen<Activity<CommonUIActions>?>(
      commonUIDelegateProvider,
      (prev, next) {
        _handleCommonUIActions(prev, next, navigatorKey: navigatorKey);
      },
    );

    return widget.child;
  }
}
