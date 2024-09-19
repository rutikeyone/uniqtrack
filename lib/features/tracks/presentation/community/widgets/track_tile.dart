import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:uniqtrack/core/common/context_extension.dart';
import 'package:uniqtrack/core/theme/app_diments.dart';
import 'package:uniqtrack/features/tracks/domain/entities/entities.dart';

import 'track_tile_data_widget.dart';
import 'track_upper_part_widget.dart';

class TrackTile extends ConsumerWidget {
  final Track track;
  final String asset;

  final VoidCallback onMorePressed;

  final Widget? actionsWidget;

  const TrackTile({
    required this.track,
    required this.asset,
    required this.onMorePressed,
    this.actionsWidget,
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final name = track.name;
    final distance = track.distance;
    final duration = track.duration;
    final date = track.dateCreated;

    return InkWell(
      onTap: () {},
      child: Ink(
        padding: EdgeInsets.symmetric(
          horizontal: AppDiments.dm16,
          vertical: AppDiments.dm8,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TrackUpperPartWidget(
                      name: name,
                      asset: asset,
                      date: date,
                      onMorePressed: onMorePressed,
                      actionsWidget: actionsWidget,
                    ),
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: AppDiments.dm8),
              child: Container(
                width: context.fullWidth,
                color: context.colorScheme.secondary,
                height: AppDiments.dm1,
              ),
            ),
            TrackTileDataWidget(
              duration: duration,
              distance: distance,
            ),
          ],
        ),
      ),
    );
  }
}
