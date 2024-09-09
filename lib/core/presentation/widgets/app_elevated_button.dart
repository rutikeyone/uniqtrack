import 'package:flutter/material.dart';
import 'package:uniqtrack/core/common/context_extension.dart';
import 'package:uniqtrack/core/theme/app_diments.dart';

class AppElevatedButton extends StatelessWidget {
  final String text;
  final Color? backgroundColor;
  final TextStyle? textStyle;
  final Widget? icon;
  final VoidCallback? onPressed;

  const AppElevatedButton({
    required this.text,
    required this.onPressed,
    this.backgroundColor,
    this.textStyle,
    this.icon,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final backgroundButtonColor =
        backgroundColor ?? context.colorScheme.onSecondary;
    final disabledBackgroundColor = backgroundButtonColor.withOpacity(.5);

    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        textStyle: textStyle ?? context.primaryTextTheme.labelLarge,
        disabledBackgroundColor: disabledBackgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppDiments.dm12),
        ),
        elevation: 0,
        shadowColor: Colors.transparent,
        backgroundColor: backgroundButtonColor,
      ),
      onPressed: onPressed,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            text,
            style: textStyle ?? context.primaryTextTheme.labelLarge,
          ),
          icon ?? const SizedBox.shrink(),
        ],
      ),
    );
  }
}
