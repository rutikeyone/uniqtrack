import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:uniqtrack/core/common_impl/app_widget_toolkit_impl.dart';
import 'package:uniqtrack/core/theme/app_diments.dart';
import 'package:uniqtrack/features/tracks/presentation/record_track/widgets/record_data_item.dart';
import 'package:uniqtrack/generated/l10n.dart';

class TrackTileDataWidget extends ConsumerWidget {
  final int? duration;
  final double? distance;

  const TrackTileDataWidget({
    required this.duration,
    required this.distance,
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appWidgetToolkit = ref.watch(appWidgetToolkitProvider);

    final distanceFormatted = appWidgetToolkit.distance(
      distance: distance,
      context: context,
    );

    final durationFormatted = duration != null
        ? appWidgetToolkit.duration(
            duration: duration!,
            context: context,
          )
        : null;

    final mPerSecInKmPerHr = duration != null && distance != null
        ? appWidgetToolkit.mPerSecInKmPerHr(
            duration: duration!,
            distance: distance!,
            context: context,
          )
        : null;

    return Padding(
      padding: const EdgeInsets.only(top: AppDiments.dm8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          distanceFormatted != null
              ? Expanded(
                  child: RecordDataItem(
                    label: S.of(context).routeLength,
                    value: distanceFormatted,
                  ),
                )
              : const SizedBox.shrink(),
          durationFormatted != null
              ? Expanded(
                  child: RecordDataItem(
                    label: S.of(context).time,
                    value: durationFormatted,
                  ),
                )
              : const SizedBox.shrink(),
          mPerSecInKmPerHr != null
              ? Expanded(
                  child: RecordDataItem(
                    label: S.of(context).averageSpeed,
                    value: S.of(context).km_per_h(mPerSecInKmPerHr),
                  ),
                )
              : const SizedBox.shrink(),
        ],
      ),
    );
  }
}
