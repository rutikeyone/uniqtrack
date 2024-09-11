import 'package:flutter/material.dart';
import 'package:uniqtrack/core/common/context_extension.dart';
import 'package:uniqtrack/core/presentation/widgets/app_elevated_button.dart';
import 'package:uniqtrack/core/presentation/widgets/app_outlined_button.dart';
import 'package:uniqtrack/core/theme/app_diments.dart';
import 'package:uniqtrack/generated/l10n.dart';

import 'record_track_modal_bottom_sheet.dart';

class RecordBottomSheetPauseButtons extends StatelessWidget {
  final RecordTrackModalBottomSheetArgument argument;

  const RecordBottomSheetPauseButtons({
    required this.argument,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: AppDiments.dm16),
      child: Column(
        children: [
          SizedBox(
            height: AppDiments.dm48,
            child: StreamBuilder<bool>(
              stream: argument.continueAvailable,
              initialData: argument.continueAvailableInitialData,
              builder: (context, snapshot) {
                final value = snapshot.data ?? argument.continueAvailableInitialData;

                return AppElevatedButton(
                  textStyle: context.primaryTextTheme.labelLarge?.copyWith(
                    color: context.colorScheme.secondary,
                    fontWeight: FontWeight.w500,
                  ),
                  borderRadius: BorderRadius.circular(AppDiments.dm6),
                  text: S.of(context).toContinue,
                  onPressed: value ? argument.onContinuePressed : null,
                );
              }
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: AppDiments.dm8),
            child: SizedBox(
              height: AppDiments.dm48,
              child: AppOutlinedButton(
                textStyle: context.primaryTextTheme.labelLarge?.copyWith(
                  color: context.colorScheme.onSecondary,
                  fontWeight: FontWeight.w500,
                ),
                borderRadius: BorderRadius.circular(AppDiments.dm6),
                text: S.of(context).addMemory,
                onPressed: argument.onAddMemoryPressed,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
