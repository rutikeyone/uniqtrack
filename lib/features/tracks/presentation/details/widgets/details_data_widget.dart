import 'package:flutter/material.dart';
import 'package:uniqtrack/core/common/extensions/context_extension.dart';
import 'package:uniqtrack/core/presentation/widgets/app_elevated_button.dart';
import 'package:uniqtrack/core/presentation/widgets/name_widget.dart';
import 'package:uniqtrack/core/presentation/widgets/track_data_section_widget.dart';
import 'package:uniqtrack/core/theme/app_diments.dart';
import 'package:uniqtrack/features/tracks/domain/entities/entities.dart';
import 'package:uniqtrack/features/tracks/presentation/details/widgets/comment_widget.dart';
import 'package:uniqtrack/features/tracks/presentation/details/widgets/date_widget.dart';
import 'package:uniqtrack/features/tracks/presentation/details/widgets/details_modal_bottom_actions_widget.dart';
import 'package:uniqtrack/features/tracks/presentation/details/widgets/memory_widget.dart';
import 'package:uniqtrack/features/tracks/presentation/record_track/widgets/record_track_bottom_sheet/modal_bottom_sheet_divider_widget.dart';
import 'package:uniqtrack/generated/l10n.dart';

class DetailsDataWidget extends StatelessWidget {
  final TrackUI track;
  final bool canDelete;
  final bool favouriteEnabled;
  final bool canMore;

  final VoidCallback? onAddToFavouritesPressed;
  final VoidCallback? onRemoveFromFavouritesPressed;
  final VoidCallback? onDeletePressed;
  final VoidCallback? onRepeatPressed;

  final void Function(Memory) onMemoryPressed;
  final void Function(Memory) onDeleteMemoryPressed;
  final void Function(Track?)? onEditPressed;

  const DetailsDataWidget({
    required this.track,
    required this.canDelete,
    required this.favouriteEnabled,
    required this.onAddToFavouritesPressed,
    required this.onRemoveFromFavouritesPressed,
    required this.onDeletePressed,
    required this.onMemoryPressed,
    required this.onRepeatPressed,
    required this.onDeleteMemoryPressed,
    required this.onEditPressed,
    required this.canMore,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final trackData = track.track;

    final _isFavouriteTrack = track.favouriteTrack;
    final _isUserCreator = track.currentUserCreator;

    return Padding(
      padding: const EdgeInsets.all(AppDiments.dm16),
      child: ListView(
        shrinkWrap: true,
        children: [
          ModalBottomSheetDividerWidget(),
          NameWidget(name: trackData.name),
          DateWidget(date: trackData.dateCreated),
          CommentWidget(comment: trackData.comment),
          Padding(
            padding: const EdgeInsets.only(top: AppDiments.dm12),
            child: Container(
              width: context.fullWidth,
              color: context.colorScheme.secondary,
              height: AppDiments.dm1,
            ),
          ),
          TrackDataSectionWidget(
            distance: trackData.distance,
            duration: trackData.duration,
            averageSpeed: trackData.averageSpeed,
            paddings: EdgeInsets.only(top: AppDiments.dm12),
          ),
          Padding(
            padding: const EdgeInsets.only(top: AppDiments.dm12),
            child: Container(
              width: context.fullWidth,
              color: context.colorScheme.secondary,
              height: AppDiments.dm1,
            ),
          ),
          MemoryWidget(
            memories: trackData.memories,
            onMemoryPressed: onMemoryPressed,
            onDeletePressed:
                track.currentUserCreator ? onDeleteMemoryPressed : null,
          ),
          DetailsModalBottomActionsWidget(
            id: track.track.id,
            userCreator: _isUserCreator,
            favouriteTrack: _isFavouriteTrack,
            canMore: canMore,
            canDelete: canDelete,
            favouriteEnabled: favouriteEnabled,
            onAddToFavouritesPressed: onAddToFavouritesPressed,
            onRemoveFromFavouritesPressed: onRemoveFromFavouritesPressed,
            onDeletePressed: onDeletePressed,
            onEditPressed: onEditPressed != null ? () => onEditPressed?.call(trackData) : null,
          ),
          Padding(
            padding: const EdgeInsets.only(top: AppDiments.dm12),
            child: Container(
              width: context.fullWidth,
              color: context.colorScheme.secondary,
              height: AppDiments.dm1,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: AppDiments.dm12),
            child: SizedBox(
              height: AppDiments.dm48,
              child: AppElevatedButton(
                text: S.of(context).repeat,
                onPressed: onRepeatPressed,
                textStyle: context.primaryTextTheme.labelLarge?.copyWith(
                  color: context.colorScheme.secondary,
                ),
                borderRadius: BorderRadius.circular(AppDiments.dm6),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
