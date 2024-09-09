import 'package:flutter/material.dart';
import 'package:uniqtrack/core/common/context_extension.dart';
import 'package:uniqtrack/core/theme/app_diments.dart';

class AppTransparentButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;

  const AppTransparentButton({
    required this.label,
    required this.onPressed,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(AppDiments.dm8),
      onTap: onPressed,
      child: Ink(
        padding: EdgeInsets.symmetric(
          vertical: AppDiments.dm12,
          horizontal: AppDiments.dm16,
        ),
        child: Row(
          children: [
            Text(
              label,
              style: context.primaryTextTheme.bodyLarge?.copyWith(
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
