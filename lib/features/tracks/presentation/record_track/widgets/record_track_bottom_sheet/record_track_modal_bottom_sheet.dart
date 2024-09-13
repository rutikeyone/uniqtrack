import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uniqtrack/core/common/context_extension.dart';
import 'package:uniqtrack/features/tracks/presentation/record_track/stores/states/states.dart';

import 'record_bottom_sheet_data_widget.dart';

part 'record_track_modal_bottom_sheet.freezed.dart';

@freezed
class RecordTrackModalBottomSheetArgument
    with _$RecordTrackModalBottomSheetArgument {
  const factory RecordTrackModalBottomSheetArgument({
    required GlobalKey<ScaffoldState> scaffoldKey,
    required Stream<TrackRecordStatusState> stream,
    required TrackRecordStatusState initialData,
    required VoidCallback onPausePressed,
    required VoidCallback onStopPressed,
    required VoidCallback onContinuePressed,
    required VoidCallback onAddMemoryPressed,
    required VoidCallback onDeletePressed,
    required VoidCallback onSavePressed,
  }) = _RecordTrackModalBottomSheetArgument;
}

class RecordTrackModalBottomSheet extends StatelessWidget {
  final RecordTrackModalBottomSheetArgument argument;

  const RecordTrackModalBottomSheet({
    required this.argument,
    super.key,
  });

  static PersistentBottomSheetController? show({
    required BuildContext context,
    required RecordTrackModalBottomSheetArgument argument,
  }) {
    return argument.scaffoldKey.currentState?.showBottomSheet(
      (context) {
        return RecordTrackModalBottomSheet(argument: argument);
      },
      enableDrag: false,
      backgroundColor: context.theme.scaffoldBackgroundColor,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(12.0),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedSize(
      duration: const Duration(milliseconds: 200),
      child: Wrap(
        children: [
          StreamBuilder(
            initialData: argument.initialData,
            stream: argument.stream,
            builder: (context, state) {
              final data = state.data;

              if (data == null) {
                return const SizedBox.shrink();
              }

              return data.map(
                withoutRecording: (_) => const SizedBox.shrink(),
                recording: (state) {
                  final duration = state.duration;
                  final distance = state.distance;
                  final averageSpeed = state.averageSpeed;

                  final mode = state.mode;

                  return RecordBottomSheetDataWidget(
                    duration: duration,
                    distance: distance,
                    averageSpeed: averageSpeed,
                    mode: mode,
                    argument: argument,
                  );
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
