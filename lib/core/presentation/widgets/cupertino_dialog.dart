import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uniqtrack/core/theme/app_diments.dart';

class CupertinoDialog extends StatelessWidget {
  final String headerText;
  final String bodyText;
  final String close;

  const CupertinoDialog({
    super.key,
    required this.headerText,
    required this.bodyText,
    required this.close,
  });

  @override
  Widget build(BuildContext context) {
    return CupertinoAlertDialog(
      title: Text(headerText),
      content: Padding(
        padding: const EdgeInsets.only(top: AppDiments.dm12),
        child: Text(bodyText),
      ),
      actions: [
        CupertinoDialogAction(
          child: Text(
            close,
            textAlign: TextAlign.center,
          ),
          onPressed: () => Navigator.of(context, rootNavigator: true).pop(),
        ),
      ],
    );
  }
}
