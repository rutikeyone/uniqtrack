import 'package:flutter/material.dart';
import 'package:uniqtrack/core/theme/app_diments.dart';
import 'package:uniqtrack/features/tracks/presentation/record_track/stores/states/states.dart';
import 'package:uniqtrack/features/tracks/presentation/record_track/widgets/record_track_bottom_sheet/modal_bottom_sheet_divider_widget.dart';
import 'record_bottom_sheet_action_buttons.dart';
import '../../../../../../core/presentation/widgets/track_data_section_widget.dart';
import 'record_track_modal_bottom_sheet.dart';

class RecordBottomSheetDataWidget extends StatelessWidget {
  final int duration;
  final double distance;
  final double averageSpeed;
  final RecordTrackModeState mode;

  final RecordTrackModalBottomSheetArgument argument;

  const RecordBottomSheetDataWidget({
    required this.duration,
    required this.distance,
    required this.averageSpeed,
    required this.mode,
    required this.argument,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppDiments.dm12),
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          top: AppDiments.dm16,
          left: AppDiments.dm16,
          right: AppDiments.dm16,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ModalBottomSheetDividerWidget(),
            TrackDataSectionWidget(
              distance: distance,
              duration: duration,
              averageSpeed: averageSpeed,
            ),
            RecordBottomSheetActionButtons(
              mode: mode,
              argument: argument,
            ),
          ],
        ),
      ),
    );
  }
}
