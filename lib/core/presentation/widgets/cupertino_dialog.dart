import 'package:flutter/cupertino.dart';
import 'package:uniqtrack/core/common/context_extension.dart';
import 'package:uniqtrack/core/theme/app_diments.dart';

class CupertinoDialog extends StatelessWidget {
  final String headerText;
  final String bodyText;
  final String close;
  final VoidCallback closeDialog;

  const CupertinoDialog({
    super.key,
    required this.headerText,
    required this.bodyText,
    required this.close,
    required this.closeDialog,
  });

  @override
  Widget build(BuildContext context) {
    final headerTextStyle =
        context.textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.w600);
    final bodyTextStyle =
        context.textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.w500);
    final actionTextStyle = context.textTheme.bodyMedium;

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
        CupertinoDialogAction(
          onPressed: closeDialog,
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
