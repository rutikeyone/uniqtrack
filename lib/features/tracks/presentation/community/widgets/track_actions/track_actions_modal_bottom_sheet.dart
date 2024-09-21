import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:uniqtrack/core/common/context_extension.dart';
import 'package:uniqtrack/core/presentation/widgets/image_source_bottom_sheet/cancel_button_widget.dart';
import 'package:uniqtrack/core/theme/app_circle_progress_indicator.dart';
import 'package:uniqtrack/core/theme/app_diments.dart';
import 'package:uniqtrack/features/tracks/domain/providers/providers.dart';
import 'package:uniqtrack/generated/l10n.dart';

part 'add_to_favourites_track_action_button.dart';

part 'delete_track_action_button.dart';

part 'edit_track_action_button.dart';

part 'remove_from_favourites_track_action_button.dart';

part 'track_actions_header_widget.dart';

class TrackActionsModalBottomSheet extends ConsumerWidget {
  final String id;
  final VoidCallback onAddToFavouriteTracksPressed;
  final VoidCallback onDeletePressed;
  final VoidCallback onDeleteToFavouriteTrackPressed;
  final VoidCallback onClosePressed;

  const TrackActionsModalBottomSheet({
    required this.id,
    required this.onAddToFavouriteTracksPressed,
    required this.onDeletePressed,
    required this.onDeleteToFavouriteTrackPressed,
    required this.onClosePressed,
    super.key,
  });

  static Future<void> show({
    required BuildContext context,
    required String id,
    required VoidCallback onAddToFavouriteTracksPressed,
    required VoidCallback onDeletePressed,
    required VoidCallback onDeleteToFavouriteTrackPressed,
    required VoidCallback onClosePressed,
  }) {
    return showModalBottomSheet(
      useRootNavigator: true,
      useSafeArea: true,
      backgroundColor: Colors.transparent,
      constraints: BoxConstraints(
        maxWidth: context.bottomSheetWidth,
      ),
      context: context,
      builder: (context) {
        return TrackActionsModalBottomSheet(
          id: id,
          onAddToFavouriteTracksPressed: onAddToFavouriteTracksPressed,
          onDeletePressed: onDeletePressed,
          onDeleteToFavouriteTrackPressed: onDeleteToFavouriteTrackPressed,
          onClosePressed: onClosePressed,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final trackDetails = ref.watch(trackDetailsProvider(id));

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: AppDiments.dm8),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          switch (trackDetails) {
            AsyncData(:final value) => Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(AppDiments.dm12),
                  color: context.bottomSheetTheme.backgroundColor,
                ),
                width: context.bottomSheetWidth,
                child: Column(
                  children: [
                    _TrackActionsHeaderWidget(),
                    value.currentUserCreator == true
                        ? _EditTrackActionButton(
                            onPressed: () {},
                            onCloseDialog: onClosePressed,
                            borderRadius: BorderRadius.zero,
                          )
                        : const SizedBox.shrink(),
                    value.favouriteTrack == false
                        ? _AddToFavouritesTrackAction(
                            onPressed: onAddToFavouriteTracksPressed,
                            onCloseDialog: onClosePressed,
                          )
                        : const SizedBox.shrink(),
                    value.favouriteTrack == true
                        ? _RemoveFromFavouritesTrackAction(
                            onClosePressed: onClosePressed,
                            onPressed: onDeleteToFavouriteTrackPressed,
                          )
                        : const SizedBox.shrink(),
                    value.currentUserCreator == true
                        ? _DeleteTrackActionButton(
                            onPressed: onDeletePressed,
                            onClosePressed: onClosePressed,
                          )
                        : const SizedBox.shrink(),
                  ],
                ),
              ),
            AsyncError() => const SizedBox.shrink(),
            _ => Container(
                width: context.bottomSheetWidth,
                height: AppDiments.dm196,
                decoration: BoxDecoration(
                  color: context.bottomSheetTheme.backgroundColor,
                  borderRadius: BorderRadius.circular(AppDiments.dm12),
                ),
                child: Center(
                  child: AppCircleProgressIndicator(),
                ),
              ),
          },
          Padding(
            padding: const EdgeInsets.only(top: AppDiments.dm8),
            child: CancelButtonWidget(
              onClosePressed: onClosePressed,
            ),
          ),
        ],
      ),
    );
  }
}
