import 'package:flutter/cupertino.dart';
import 'package:uniqtrack/core/common/extensions/context_extension.dart';
import 'package:uniqtrack/core/theme/app_diments.dart';

class CupertinoDialog extends StatelessWidget {
  final String headerText;
  final String bodyText;
  final String close;
  final VoidCallback? closeCallback;
  final VoidCallback closeDialog;
  final (String?, VoidCallback?) cupertinoDialogActivity;

  const CupertinoDialog({
    super.key,
    required this.headerText,
    required this.bodyText,
    required this.close,
    required this.closeCallback,
    required this.closeDialog,
    required this.cupertinoDialogActivity,
  });

  @override
  Widget build(BuildContext context) {
    final headerTextStyle =
        context.primaryTextTheme.bodyLarge?.copyWith(fontWeight: FontWeight.w600);
    final bodyTextStyle =
        context.primaryTextTheme.bodyMedium?.copyWith(fontWeight: FontWeight.w500);
    final actionTextStyle = context.primaryTextTheme.bodyMedium;

    return CupertinoAlertDialog(
      title: Text(
        headerText,
        style: headerTextStyle,
      ),
      content: Padding(
        padding: const EdgeInsets.only(top: AppDiments.dm12),
        child: Text(
          bodyText,
          style: bodyTextStyle,
        ),
      ),
      actions: [
        if (cupertinoDialogActivity.$1 != null &&
            cupertinoDialogActivity.$2 != null)
          CupertinoDialogAction(
            onPressed: () {
              cupertinoDialogActivity.$2?.call();
              closeDialog.call();
            },
            child: Text(
              cupertinoDialogActivity.$1 ?? '',
              textAlign: TextAlign.center,
              style: actionTextStyle,
            ),
          ),
        CupertinoDialogAction(
          onPressed: () {
            closeCallback?.call();
            closeDialog.call();
          },
          child: Text(
            close,
            textAlign: TextAlign.center,
            style: actionTextStyle,
          ),
        ),

      ],
    );
  }
}
