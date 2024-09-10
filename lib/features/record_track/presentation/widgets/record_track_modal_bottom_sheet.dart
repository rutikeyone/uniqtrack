import 'package:flutter/material.dart';
import 'package:uniqtrack/core/common/context_extension.dart';
import 'package:uniqtrack/features/record_track/presentation/stores/states/states.dart';

import 'record_bottom_sheet_data_widget.dart';

class RecordTrackModalBottomSheet extends StatelessWidget {
  final Stream<TrackRecordStatusState> stream;
  final TrackRecordStatusState initialData;

  const RecordTrackModalBottomSheet({
    required this.stream,
    required this.initialData,
    super.key,
  });

  static void show({
    required BuildContext context,
    required GlobalKey<ScaffoldState> scaffoldKey,
    required Stream<TrackRecordStatusState> stream,
    required TrackRecordStatusState initialData,
  }) {
    scaffoldKey.currentState?.showBottomSheet(
      (context) {
        return RecordTrackModalBottomSheet(
          stream: stream,
          initialData: initialData,
        );
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
    return Wrap(
      children: [
        StreamBuilder(
          initialData: initialData,
          stream: stream,
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
                final mode = state.mode;

                return RecordBottomSheetDataWidget(
                  duration: duration,
                  distance: distance,
                  mode: mode,
                );
              },
            );
          },
        ),
      ],
    );
  }
}
