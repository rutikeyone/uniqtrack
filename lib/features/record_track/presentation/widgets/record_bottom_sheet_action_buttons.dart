import 'package:flutter/material.dart';
import 'package:uniqtrack/features/record_track/presentation/stores/states/states.dart';
import 'package:uniqtrack/features/record_track/presentation/widgets/record_bottom_sheet_recording_buttons.dart';

import 'record_bottom_sheet_pause_buttons.dart';
import 'record_bottom_sheet_stop_buttons.dart';

class RecordBottomSheetActionButtons extends StatelessWidget {
  final RecordTrackModeState mode;

  const RecordBottomSheetActionButtons({
    required this.mode,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return mode.map(
      recording: (state) => const RecordBottomSheetRecordingButtons(),
      pause: (_) => const RecordBottomSheetPauseButtons(),
      stop: (_) => const RecordBottomSheetStopButtons(),
    );
  }
}