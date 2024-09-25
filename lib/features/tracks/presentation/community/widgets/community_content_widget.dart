import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:provider/provider.dart';
import 'package:uniqtrack/app/navigation/stores/nav_callback_store.dart';
import 'package:uniqtrack/core/common/strings/app_strings.dart';
import 'package:uniqtrack/core/common_impl/app_share_toolkit_impl.dart';
import 'package:uniqtrack/core/common_impl/common_ui/common_ui_delegate_notifier.dart';
import 'package:uniqtrack/core/presentation/constants/assets/app_assets.dart';
import 'package:uniqtrack/core/presentation/widgets/app_empty_list_widget.dart';
import 'package:uniqtrack/core/presentation/widgets/app_error_widget.dart';
import 'package:uniqtrack/core/theme/app_circle_progress_indicator.dart';
import 'package:uniqtrack/core/theme/app_diments.dart';
import 'package:uniqtrack/features/tracks/domain/entities/entities.dart';
import 'package:uniqtrack/features/tracks/domain/providers/providers.dart';
import 'package:uniqtrack/features/tracks/presentation/community/widgets/track_actions/track_actions_modal_bottom_sheet.dart';

import 'track_tile.dart';

class CommunityContentWidget extends ConsumerStatefulWidget {
  const CommunityContentWidget({super.key});

  @override
  ConsumerState<CommunityContentWidget> createState() =>
      _CommunityContentWidgetState();
}

class _CommunityContentWidgetState
    extends ConsumerState<CommunityContentWidget> {

  void _showMoreModalBottomSheetActions({
    required BuildContext context,
    required Track track,
  }) {
    final navCallbackStore = context.read<CommunityNavCallbackStore>();

    final id = track.id;
    if (id == null) return;

    TrackActionsModalBottomSheet.show(
      context: context,
      id: id,
      onAddToFavouriteTracksPressed: () => _addToFavouritesTracks(track),
      onEditPressed: navCallbackStore.navigateToEditTrack,
      onDeletePressed: () => _removeTrack(track),
      onDeleteToFavouriteTrackPressed: () => _removeFromFavouritesTrack(track),
      onClosePressed: navCallbackStore.closeDialog,
    );
  }

  Future<void> _addToFavouritesTracks(Track track) async {
    final addToFavouritesTrackResult =
        await ref.read(addToFavouriteTracksUseCaseProvider).execute(track);

    addToFavouritesTrackResult.fold(
      (error) {
        final header = error.header();
        final body = error.body();

        ref.read(commonUIDelegateNotifierProvider.notifier).cupertinoDialog(
              header: header,
              body: body,
            );
      },
      (_) {
        final header = AppStrings.notification();
        final body = AppStrings.trackAddedSuccessfully();

        ref.read(commonUIDelegateNotifierProvider.notifier).cupertinoDialog(
              header: header,
              body: body,
            );
      },
    );
  }

  Future<void> _removeFromFavouritesTrack(Track track) async {
    final removeFromFavouriteTracksResult =
        await ref.read(removeFromFavouriteTracksUseCaseProvider).execute(track);

    removeFromFavouriteTracksResult.fold(
      (error) {
        final header = error.header();
        final body = error.body();

        ref.read(commonUIDelegateNotifierProvider.notifier).cupertinoDialog(
              header: header,
              body: body,
            );
      },
      (_) {
        final header = AppStrings.notification();
        final body = AppStrings.trackWasSuccessfullyDeleted();

        ref.read(commonUIDelegateNotifierProvider.notifier).cupertinoDialog(
              header: header,
              body: body,
            );
      },
    );
  }

  Future<void> _removeTrack(Track track) async {
    final removeTrackResult =
        await ref.read(removeTrackUseCaseProvider).execute(track);

    removeTrackResult.fold(
      (error) {
        final header = error.header();
        final body = error.body();

        ref.read(commonUIDelegateNotifierProvider.notifier).cupertinoDialog(
              header: header,
              body: body,
            );
      },
      (_) {
        final header = AppStrings.notification();
        final body = AppStrings.trackWasSuccessfullyDeleted();

        ref.read(commonUIDelegateNotifierProvider.notifier).cupertinoDialog(
              header: header,
              body: body,
            );
      },
    );
  }

  void _shareTrack(Track track) {
    final id = track.trackId;
    if (id == null) return;
    ref.read(appShareTooKitProvider).shareTrackId(id);
  }

  void _navigateToTrackDetails(Track track) {
    final navCallbackStore = context.read<CommunityNavCallbackStore>();
    navCallbackStore.navigateToTrackDetails(track);
  }

  @override
  Widget build(BuildContext context) {
    final tracks = ref.watch(tracksProvider);

    return switch (tracks) {
      AsyncData(:final value) => AppEmptyListWidget(
          data: value,
          child: ListView.separated(
            padding: EdgeInsets.only(top: AppDiments.dm16),
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
                onPressed: () => _navigateToTrackDetails(track),
                onMorePressed: () => _showMoreModalBottomSheetActions(
                  context: context,
                  track: track,
                ),
                onSharePressed: () => _shareTrack(track),
              );
            },
          ),
        ),
      AsyncError(:final error) => AppErrorWidget(
          error: error,
          onRefreshPressed: () {},
        ),
      _ => const Center(
          child: AppCircleProgressIndicator(),
        ),
    };
  }
}
