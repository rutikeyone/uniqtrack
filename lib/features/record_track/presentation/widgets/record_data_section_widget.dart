import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:uniqtrack/core/common_impl/app_widget_toolkit_impl.dart';
import 'package:uniqtrack/core/theme/app_diments.dart';
import 'package:uniqtrack/features/record_track/presentation/widgets/record_data_item.dart';
import 'package:uniqtrack/generated/l10n.dart';

class RecordDataSectionWidget extends ConsumerWidget {
  final int duration;
  final double distance;
  final double averageSpeed;

  const RecordDataSectionWidget({
    required this.duration,
    required this.distance,
    required this.averageSpeed,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appWidgetToolkit = ref.watch(appWidgetToolkitProvider);

    final distanceFormatted = appWidgetToolkit.distance(
      distance: distance,
      context: context,
    );

    final durationFormatted = appWidgetToolkit.duration(
      duration: duration,
      context: context,
    );

    final mPerSecInKmPerHr = appWidgetToolkit.mPerSecInKmPerHr(
      duration: duration,
      distance: distance,
      context: context,
    );

    return Padding(
      padding: const EdgeInsets.only(top: AppDiments.dm24),
      child: Row(
        children: [
          distanceFormatted != null
              ? Expanded(
                  child: RecordDataItem(
                    label: S.of(context).routeLength,
                    value: distanceFormatted,
                  ),
                )
              : const SizedBox.shrink(),
          Expanded(
            child: RecordDataItem(
              label: S.of(context).time,
              value: durationFormatted,
            ),
          ),
          Expanded(
            child: RecordDataItem(
              label: S.of(context).averageSpeed,
              value: S.of(context).km_per_h(mPerSecInKmPerHr),
            ),
          ),
        ],
      ),
    );
  }
}
