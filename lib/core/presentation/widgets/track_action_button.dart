import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:uniqtrack/core/common/context_extension.dart';
import 'package:uniqtrack/core/theme/app_diments.dart';

class TrackActionButton extends StatelessWidget {
  final String asset;
  final VoidCallback? onPressed;

  final double iconSize;
  final double? size;

  final BorderRadius? borderRadius;

  const TrackActionButton({
    required this.asset,
    required this.onPressed,
    this.iconSize = AppDiments.dm36,
    this.size,
    this.borderRadius,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: borderRadius ?? BorderRadius.circular(AppDiments.dm8),
      onTap: onPressed,
      child: Ink(
        width: iconSize,
        height: iconSize,
        decoration: BoxDecoration(
          border: Border.all(
            width: AppDiments.dm1,
            color: context.colorScheme.onSecondary,
          ),
          borderRadius: borderRadius ?? BorderRadius.circular(AppDiments.dm8),
        ),
        child: UnconstrainedBox(
          child: SvgPicture.asset(
            asset,
            width: size ?? AppDiments.dm24,
            height: size ?? AppDiments.dm24,
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
              context.colorScheme.onSecondary,
              BlendMode.srcIn,
            ),
          ),
        ),
      ),
    );
  }
}
