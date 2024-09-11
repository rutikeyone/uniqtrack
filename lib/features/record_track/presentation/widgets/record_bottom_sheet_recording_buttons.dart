import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:uniqtrack/core/common/context_extension.dart';
import 'package:uniqtrack/core/presentation/constants/assets/app_assets.dart';
import 'package:uniqtrack/core/presentation/widgets/app_elevated_button.dart';
import 'package:uniqtrack/core/theme/app_diments.dart';
import 'package:uniqtrack/generated/l10n.dart';

import 'record_track_modal_bottom_sheet.dart';

class RecordBottomSheetRecordingButtons extends StatelessWidget {
  final RecordTrackModalBottomSheetArgument argument;

  const RecordBottomSheetRecordingButtons({
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
              child: AppElevatedButton(
                backgroundColor: context.appColorsTheme.secondaryButtonColor,
                text: S.of(context).pause,
                textStyle: context.primaryTextTheme.labelLarge?.copyWith(
                  color: context.colorScheme.secondary,
                  fontWeight: FontWeight.w500,
                ),
                onPressed: argument.onPausePressed,
                borderRadius: BorderRadius.circular(AppDiments.dm6),
                borderColor: context.appColorsTheme.primaryButtonBorder,
                icon: Padding(
                  padding: const EdgeInsets.only(left: AppDiments.dm8),
                  child: SvgPicture.asset(
                    AppAssets.icons.pause,
                    width: AppDiments.dm20,
                    height: AppDiments.dm20,
                    colorFilter: ColorFilter.mode(
                      context.appColorsTheme.primaryIconColor,
                      BlendMode.srcIn,
                    ),
                  ),
                ),
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
                text: S.of(context).stop,
                onPressed: argument.onStopPressed,
                icon: Padding(
                  padding: const EdgeInsets.only(left: AppDiments.dm8),
                  child: SvgPicture.asset(
                    AppAssets.icons.stop,
                    width: AppDiments.dm20,
                    height: AppDiments.dm20,
                    colorFilter: ColorFilter.mode(
                      context.appColorsTheme.primaryIconColor,
                      BlendMode.srcIn,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}