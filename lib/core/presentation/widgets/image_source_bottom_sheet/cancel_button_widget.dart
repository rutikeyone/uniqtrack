
import 'package:flutter/material.dart';
import 'package:uniqtrack/core/common/context_extension.dart';
import 'package:uniqtrack/core/theme/app_diments.dart';
import 'package:uniqtrack/generated/l10n.dart';

class CancelButtonWidget extends StatelessWidget {
  final VoidCallback onClosePressed;

  const CancelButtonWidget({
    required this.onClosePressed,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(AppDiments.dm12),
      child: InkWell(
        borderRadius: BorderRadius.circular(AppDiments.dm12),
        onTap: onClosePressed,
        child: Ink(
          width: context.fullWidth,
          height: AppDiments.dm60,
          child: Center(
            child: Text(
              S.of(context).cancel,
              style: context.primaryTextTheme.displaySmall?.copyWith(
                color: context.colorScheme.onSecondary,
              ),
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
            ),
          ),
        ),
      ),
    );
  }
}
