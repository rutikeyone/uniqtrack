import 'package:flutter/material.dart';
import 'package:uniqtrack/core/theme/app_diments.dart';
import 'package:uniqtrack/features/record_track/presentation/stores/states/states.dart';
import 'package:uniqtrack/features/record_track/presentation/widgets/modal_bottom_sheet_divider_widget.dart';

import 'record_bottom_sheet_action_buttons.dart';
import 'record_data_section_widget.dart';

class RecordBottomSheetDataWidget extends StatelessWidget {
  final int duration;
  final double distance;
  final RecordTrackModeState mode;

  const RecordBottomSheetDataWidget({
    required this.duration,
    required this.distance,
    required this.mode,
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
            RecordDataSectionWidget(
              distance: distance,
              duration: duration,
            ),
            RecordBottomSheetActionButtons(mode: mode),
          ],
        ),
      ),
    );
  }
}


