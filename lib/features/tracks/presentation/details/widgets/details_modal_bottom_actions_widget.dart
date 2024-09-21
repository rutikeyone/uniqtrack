import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:uniqtrack/core/common_impl/app_share_toolkit_impl.dart';
import 'package:uniqtrack/core/presentation/constants/assets/app_assets.dart';
import 'package:uniqtrack/core/presentation/widgets/track_action_button.dart';
import 'package:uniqtrack/core/theme/app_diments.dart';

class DetailsModalBottomActionsWidget extends ConsumerWidget {
  final bool? favouriteTrack;
  final bool? userCreator;
  final String? id;
  final bool canDelete;

  final VoidCallback? onAddToFavouritesPressed;
  final VoidCallback? onRemoveFromFavouritesPressed;
  final VoidCallback? onDeletePressed;

  const DetailsModalBottomActionsWidget({
    required this.userCreator,
    required this.favouriteTrack,
    required this.id,
    required this.canDelete,
    required this.onAddToFavouritesPressed,
    required this.onRemoveFromFavouritesPressed,
    required this.onDeletePressed,
    super.key,
  });

  void _shareTrack(WidgetRef ref) {
    if (id == null) return;
    ref.read(appShareTooKitProvider).shareTrackId(id!);
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.only(top: AppDiments.dm12),
      child: Row(
        children: [
          favouriteTrack != null
              ? TrackActionButton(
                  iconSize: AppDiments.dm48,
                  asset: favouriteTrack ?? false
                      ? AppAssets.icons.favouriteSelected
                      : AppAssets.icons.favourite,
                  size: favouriteTrack ?? false
                      ? AppDiments.dm32
                      : AppDiments.dm28,
                  onPressed: favouriteTrack ?? false
                      ? onRemoveFromFavouritesPressed
                      : onAddToFavouritesPressed,
                  borderRadius: BorderRadius.circular(AppDiments.dm16),
                )
              : const SizedBox.shrink(),
          canDelete && userCreator != null && userCreator!
              ? Padding(
                  padding: const EdgeInsets.only(left: AppDiments.dm8),
                  child: TrackActionButton(
                    iconSize: AppDiments.dm48,
                    asset: AppAssets.icons.delete,
                    size: AppDiments.dm24,
                    onPressed: onDeletePressed,
                    borderRadius: BorderRadius.circular(AppDiments.dm16),
                  ),
                )
              : const SizedBox.shrink(),
          userCreator != null && userCreator!
              ? Padding(
                  padding: const EdgeInsets.only(left: AppDiments.dm8),
                  child: TrackActionButton(
                    iconSize: AppDiments.dm48,
                    asset: AppAssets.icons.edit,
                    size: AppDiments.dm24,
                    onPressed: () {},
                    borderRadius: BorderRadius.circular(AppDiments.dm16),
                  ),
                )
              : const SizedBox.shrink(),
          Padding(
            padding: const EdgeInsets.only(left: AppDiments.dm8),
            child: TrackActionButton(
              iconSize: AppDiments.dm48,
              asset: AppAssets.icons.share,
              size: AppDiments.dm24,
              onPressed: () => _shareTrack(ref),
              borderRadius: BorderRadius.circular(AppDiments.dm16),
            ),
          )
        ],
      ),
    );
  }
}
