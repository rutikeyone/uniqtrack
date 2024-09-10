import 'package:flutter/material.dart';
import 'package:uniqtrack/core/theme/app_diments.dart';
import 'package:uniqtrack/features/record_track/presentation/widgets/record_data_item.dart';
import 'package:uniqtrack/generated/l10n.dart';

class RecordDataSectionWidget extends StatelessWidget {
  final int duration;
  final double distance;

  const RecordDataSectionWidget({
    required this.duration,
    required this.distance,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: AppDiments.dm24),
      child: Row(
        children: [
          Expanded(
            child: RecordDataItem(
              label: S.of(context).routeLength,
              value: distance.toString(),
            ),
          ),
          Expanded(
            child: RecordDataItem(
              label: S.of(context).time,
              value: duration.toString(),
            ),
          ),
          Expanded(
            child: RecordDataItem(
              label: S.of(context).averageSpeed,
              value: duration.toString(),
            ),
          ),
        ],
      ),
    );
  }
}

