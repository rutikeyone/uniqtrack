import 'package:flutter/material.dart';
import 'package:uniqtrack/core/common/context_extension.dart';
import 'package:uniqtrack/core/presentation/widgets/app_elevated_button.dart';
import 'package:uniqtrack/core/theme/app_diments.dart';
import 'package:uniqtrack/generated/l10n.dart';

class MemoryDetailsDeleteButton extends StatelessWidget {
  final VoidCallback onDeletePressed;

  const MemoryDetailsDeleteButton({
    required this.onDeletePressed,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        height: AppDiments.dm48,
        child: AppElevatedButton(
          textStyle: context.primaryTextTheme.labelLarge?.copyWith(
            color: context.colorScheme.secondary,
            fontWeight: FontWeight.w500,
          ),
          borderRadius: BorderRadius.circular(AppDiments.dm6),
          text: S.of(context).delete,
          onPressed: onDeletePressed,
          icon: Padding(
            padding: const EdgeInsets.only(left: AppDiments.dm8),
            child: Icon(
              Icons.delete,
              size: AppDiments.dm20,
              color: context.colorScheme.secondary,
            ),
          ),
        ),
      ),
    );
  }
}
