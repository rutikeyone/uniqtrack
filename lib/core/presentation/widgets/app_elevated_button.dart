import 'package:flutter/material.dart';
import 'package:uniqtrack/core/common/context_extension.dart';
import 'package:uniqtrack/core/theme/app_diments.dart';

class AppElevatedButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;

  final Color? backgroundColor;

  final TextStyle? textStyle;

  const AppElevatedButton({
    required this.text,
    required this.onPressed,
    this.backgroundColor,
    this.textStyle,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final backgroundButtonColor = backgroundColor ?? context.colorScheme.onSecondary;
    final disabledBackgroundColor = backgroundButtonColor.withOpacity(.5);

    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        textStyle: textStyle ?? context.textTheme.labelLarge,
        disabledBackgroundColor: disabledBackgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppDiments.dm12),
        ),
        elevation: 0,
        shadowColor: Colors.transparent,
        backgroundColor: backgroundButtonColor,

      ),
      onPressed: onPressed,
      child: Text(
        text,
        style: textStyle ?? context.textTheme.labelLarge,
      ),
    );
  }
}
