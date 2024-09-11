import 'package:flutter/material.dart';
import 'package:uniqtrack/core/common/context_extension.dart';

class AppOutlinedButton extends StatelessWidget {
  final String text;
  final Color? backgroundColor;
  final TextStyle? textStyle;
  final Widget? icon;
  final VoidCallback? onPressed;
  final BorderRadius? borderRadius;

  const AppOutlinedButton({
    required this.text,
    required this.onPressed,
    this.borderRadius,
    this.backgroundColor,
    this.textStyle,
    this.icon,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressed,
      style: OutlinedButton.styleFrom(
        side: BorderSide(
          color: context.colorScheme.onSecondary,
        ),
        elevation: 0,
        shadowColor: Colors.transparent,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            text,
            style: textStyle ?? context.primaryTextTheme.labelLarge?.copyWith(
              color: context.colorScheme.onSecondary,
            ),
          ),
          icon ?? const SizedBox.shrink(),
        ],
      ),
    );
  }
}
