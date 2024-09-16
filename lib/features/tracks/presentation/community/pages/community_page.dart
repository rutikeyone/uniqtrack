import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:provider/provider.dart';
import 'package:uniqtrack/app/navigation/stores/nav_callback_store.dart';
import 'package:uniqtrack/core/common/context_extension.dart';
import 'package:uniqtrack/core/presentation/constants/assets/app_assets.dart';
import 'package:uniqtrack/core/theme/app_colors.dart';
import 'package:uniqtrack/core/theme/app_diments.dart';
import 'package:uniqtrack/features/tracks/domain/providers/providers.dart';
import 'package:uniqtrack/features/tracks/presentation/community/widgets/track_tile.dart';

class CommunityPage extends ConsumerWidget {
  const CommunityPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tracks = ref.watch(tracksProvider);

    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: switch (tracks) {
          AsyncData(:final value) => ListView.separated(
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
                );
              },
            ),
          AsyncError(:final error) => Center(
              child: Text(error.toString()),
            ),
          _ => const CircularProgressIndicator(),
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed:
            context.read<CommunityNavCallbackStore>().navigateToTrackTracking,
        child: SvgPicture.asset(
          width: AppDiments.dm24,
          height: AppDiments.dm24,
          AppAssets.icons.skier,
          colorFilter: ColorFilter.mode(
            context.floatingActionButtonTheme.focusColor ?? AppColors.white,
            BlendMode.srcIn,
          ),
        ),
      ),
    );
  }
}
