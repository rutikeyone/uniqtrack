import 'package:flutter/material.dart';
import 'package:uniqtrack/core/common/context_extension.dart';
import 'package:uniqtrack/core/theme/app_diments.dart';

class AppElevatedButton extends StatelessWidget {
  final String text;
  final Color? backgroundColor;
  final TextStyle? textStyle;
  final Widget? prefixIcon;
  final Widget? icon;
  final VoidCallback? onPressed;
  final Color? borderColor;
  final BorderRadius? borderRadius;

  const AppElevatedButton({
    required this.text,
    required this.onPressed,
    this.borderRadius,
    this.backgroundColor,
    this.textStyle,
    this.prefixIcon,
    this.icon,
    this.borderColor,
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
          borderRadius: borderRadius ?? BorderRadius.circular(AppDiments.dm12),
          side: borderColor != null
              ? BorderSide(color: borderColor!)
              : BorderSide.none,
        ),
        elevation: 0,
        shadowColor: Colors.transparent,
        backgroundColor: backgroundButtonColor,
      ),
      onPressed: onPressed,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          prefixIcon ?? const SizedBox.shrink(),
          Flexible(
            child: Text(
              text,
              style: textStyle ?? context.primaryTextTheme.labelLarge,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          icon ?? const SizedBox.shrink(),
        ],
      ),
    );
  }
}
