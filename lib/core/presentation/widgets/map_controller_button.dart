import 'package:flutter/material.dart';
import 'package:uniqtrack/core/common/context_extension.dart';
import 'package:uniqtrack/core/theme/app_diments.dart';

class MapControllerButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onPressed;
  final BorderRadius? borderRadius;
  final double sizeIcon;

  const MapControllerButton({
    required this.icon,
    required this.onPressed,
    this.borderRadius,
    this.sizeIcon = AppDiments.dm28,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final backgroundColor =
    context.theme.scaffoldBackgroundColor.withOpacity(.6);

    return Material(
      borderRadius: borderRadius,
      color: backgroundColor,
      child: InkWell(
        onTap: onPressed,
        child: Ink(
          decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: borderRadius,
          ),
          width: AppDiments.dm40,
          height: AppDiments.dm40,
          child: Icon(
            icon,
            size: sizeIcon,
          ),
        ),
      ),
    );
  }
}