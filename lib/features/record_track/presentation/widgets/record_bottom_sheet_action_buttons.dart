import 'package:flutter/material.dart';
import 'package:uniqtrack/features/record_track/presentation/stores/states/states.dart';
import 'package:uniqtrack/features/record_track/presentation/widgets/record_bottom_sheet_recording_buttons.dart';

import 'record_bottom_sheet_pause_buttons.dart';
import 'record_bottom_sheet_stop_buttons.dart';
import 'record_track_modal_bottom_sheet.dart';

class RecordBottomSheetActionButtons extends StatelessWidget {
  final RecordTrackModeState mode;
  final RecordTrackModalBottomSheetArgument argument;

  const RecordBottomSheetActionButtons({
    required this.mode,
    required this.argument,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return mode.map(
      recording: (state) => RecordBottomSheetRecordingButtons(argument: argument),
      pause: (_) => RecordBottomSheetPauseButtons(argument: argument),
      stop: (_) => RecordBottomSheetStopButtons(argument: argument),
    );
  }
}