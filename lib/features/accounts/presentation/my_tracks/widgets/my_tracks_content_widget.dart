import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:uniqtrack/core/presentation/constants/assets/app_assets.dart';
import 'package:uniqtrack/core/presentation/widgets/app_empty_list_widget.dart';
import 'package:uniqtrack/core/presentation/widgets/app_error_widget.dart';
import 'package:uniqtrack/core/theme/app_circle_progress_indicator.dart';
import 'package:uniqtrack/core/theme/app_diments.dart';
import 'package:uniqtrack/features/accounts/domain/providers/providers.dart';
import 'package:uniqtrack/features/tracks/presentation/community/widgets/track_tile.dart';

class MyTracksContentWidget extends ConsumerWidget {
  const MyTracksContentWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userTracks = ref.watch(userTracksProvider);

    return switch (userTracks) {
      AsyncData(:final value) => AppEmptyListWidget(
          data: value,
          child: ListView.separated(
            itemCount: value.length,
            separatorBuilder: (context, index) => Gap(AppDiments.dm16),
            itemBuilder: (context, index) {
              final track = value[index];

              final asset = switch (index % 3) {
                0 => AppAssets.backgrounds.firstTypeTrail,
                1 => AppAssets.backgrounds.secondTypeTrail,
                2 => AppAssets.backgrounds.thirdTypeTrail,
                _ => AppAssets.backgrounds.firstTypeTrail,
              };

              return TrackTile(
                track: track,
                asset: asset,
                onMorePressed: () {},
              );
            },
          ),
        ),
      AsyncError(:final error) => AppErrorWidget(
          error: error,
          onRefreshPressed: () {
            ref.invalidate(userTracksProvider);
          },
        ),
      _ => const Center(
          child: AppCircleProgressIndicator(),
        ),
    };
  }
}
