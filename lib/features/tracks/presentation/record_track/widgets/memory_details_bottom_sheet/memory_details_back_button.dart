import 'package:flutter/material.dart';
import 'package:uniqtrack/core/common/context_extension.dart';
import 'package:uniqtrack/core/presentation/widgets/app_elevated_button.dart';
import 'package:uniqtrack/core/theme/app_diments.dart';
import 'package:uniqtrack/generated/l10n.dart';

class MemoryDetailsBackButton extends StatelessWidget {
  final VoidCallback navigateBack;

  const MemoryDetailsBackButton({
    required this.navigateBack,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: AppDiments.dm12),
      child: SizedBox(
        height: AppDiments.dm48,
        child: AppElevatedButton(
          textStyle: context.primaryTextTheme.labelLarge?.copyWith(
            color: context.colorScheme.secondary,
            fontWeight: FontWeight.w500,
          ),
          borderRadius: BorderRadius.circular(AppDiments.dm6),
          text: S.of(context).back,
          onPressed: navigateBack,
          prefixIcon: Padding(
            padding: const EdgeInsets.only(right: AppDiments.dm8),
            child: Icon(
              Icons.arrow_back,
              size: AppDiments.dm20,
              color: context.colorScheme.secondary,
            ),
          ),
        ),
      ),
    );
  }
}