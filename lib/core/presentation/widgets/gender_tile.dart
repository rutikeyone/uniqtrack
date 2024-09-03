import 'package:flutter/material.dart';
import 'package:uniqtrack/core/common/context_extension.dart';
import 'package:uniqtrack/core/theme/app_diments.dart';

class GenderTile extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final bool isSelected;

  const GenderTile({
    required this.text,
    required this.onPressed,
    required this.isSelected,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final textStyle = context.textTheme.labelLarge;
    final selectedText = context.textTheme.labelLarge?.copyWith(
      color: context.colorScheme.secondary,
    );

    return GestureDetector(
      onTap: onPressed,
      child: AnimatedContainer(
        padding: const EdgeInsets.symmetric(
          vertical: AppDiments.dm12,
          horizontal: AppDiments.dm16,
        ),
        duration: const Duration(milliseconds: 100),
        decoration: BoxDecoration(
          color: isSelected ? context.colorScheme.onSecondary : context.colorScheme.secondary,
          borderRadius: BorderRadius.circular(AppDiments.dm20),
        ),
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: isSelected ? selectedText : textStyle,
        ),
      ),
    );
  }
}