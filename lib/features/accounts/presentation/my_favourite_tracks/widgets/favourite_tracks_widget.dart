import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:uniqtrack/core/common/strings/app_strings.dart';
import 'package:uniqtrack/core/common_impl/common_ui/common_ui_delegate_notifier.dart';
import 'package:uniqtrack/core/presentation/constants/assets/app_assets.dart';
import 'package:uniqtrack/core/presentation/widgets/app_empty_list_widget.dart';
import 'package:uniqtrack/core/presentation/widgets/app_error_widget.dart';
import 'package:uniqtrack/core/theme/app_circle_progress_indicator.dart';
import 'package:uniqtrack/core/theme/app_diments.dart';
import 'package:uniqtrack/features/accounts/domain/providers/providers.dart';
import 'package:uniqtrack/features/tracks/domain/entities/entities.dart';
import 'package:uniqtrack/features/tracks/presentation/community/widgets/track_action_button.dart';
import 'package:uniqtrack/features/tracks/presentation/community/widgets/track_tile.dart';

class FavouriteTracksWidget extends ConsumerStatefulWidget {
  const FavouriteTracksWidget({
    super.key,
  });

  @override
  ConsumerState<FavouriteTracksWidget> createState() =>
      _FavouriteTracksWidgetState();
}

class _FavouriteTracksWidgetState extends ConsumerState<FavouriteTracksWidget> {
  Future<void> _removeFromFavouriteTracks(Track track) async {
    final removeFromFavouriteTracksResult =
        await ref.read(removeFromFavouriteTracksUseCaseProvider).execute(track);

    final error =
        removeFromFavouriteTracksResult.fold((error) => error, (_) => null);

    if (error != null) {
      final header = error.header();
      final body = error.body();

      ref.read(commonUIDelegateNotifierProvider.notifier).cupertinoDialog(
            header: header,
            body: body,
          );
    }
    ;
  }

  @override
  Widget build(BuildContext context) {
    final userFavouriteTracks = ref.watch(userFavouriteTracksProvider);

    return switch (userFavouriteTracks) {
      AsyncData(:final value) => AppEmptyListWidget(
          data: value,
          child: ListView.separated(
            itemCount: value.length,
            separatorBuilder: (context, index) => Gap(AppDiments.dm16),
            itemBuilder: (context, index) {
              final data = value[index];
              final track = data.track;

              final isFavouriteTrack = data.isFavouriteTrack;

              if (track == null) {
                return SizedBox.shrink();
              }

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
                actionsWidget: Row(
                  children: [
                    isFavouriteTrack != null
                        ? TrackActionButton(
                            asset: isFavouriteTrack
                                ? AppAssets.icons.favouriteSelected
                                : AppAssets.icons.favourite,
                            size: isFavouriteTrack
                                ? AppDiments.dm28
                                : AppDiments.dm24,
                            onPressed: () => _removeFromFavouriteTracks(track),
                          )
                        : const SizedBox.shrink(),
                    Padding(
                      padding: const EdgeInsets.only(left: AppDiments.dm6),
                      child: TrackActionButton(
                        asset: AppAssets.icons.share,
                        onPressed: null,
                      ),
                    ),
                  ],
                ),
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
