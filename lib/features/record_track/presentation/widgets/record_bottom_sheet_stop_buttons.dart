import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:uniqtrack/core/common/context_extension.dart';
import 'package:uniqtrack/core/presentation/widgets/app_elevated_button.dart';
import 'package:uniqtrack/core/presentation/widgets/app_outlined_button.dart';
import 'package:uniqtrack/core/theme/app_diments.dart';
import 'package:uniqtrack/generated/l10n.dart';

import 'record_track_modal_bottom_sheet.dart';

class RecordBottomSheetStopButtons extends StatelessWidget {
  final RecordTrackModalBottomSheetArgument argument;

  const RecordBottomSheetStopButtons({
    required this.argument,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: AppDiments.dm16),
      child: Row(
        children: [
          Expanded(
            child: SizedBox(
              height: AppDiments.dm48,
              child: AppOutlinedButton(
                backgroundColor: context.appColorsTheme.secondaryButtonColor,
                text: S.of(context).delete,
                textStyle: context.primaryTextTheme.labelLarge?.copyWith(
                  color: context.colorScheme.onSecondary,
                  fontWeight: FontWeight.w500,
                ),
                onPressed: argument.onDeletePressed,
                borderRadius: BorderRadius.circular(AppDiments.dm6),
              ),
            ),
          ),
          Gap(AppDiments.dm8),
          Expanded(
            child: SizedBox(
              height: AppDiments.dm48,
              child: AppElevatedButton(
                textStyle: context.primaryTextTheme.labelLarge?.copyWith(
                  color: context.colorScheme.secondary,
                  fontWeight: FontWeight.w500,
                ),
                borderRadius: BorderRadius.circular(AppDiments.dm6),
                text: S.of(context).save,
                onPressed: argument.onSavePressed,
              ),
            ),
          ),
        ],
      ),
    );
  }
}