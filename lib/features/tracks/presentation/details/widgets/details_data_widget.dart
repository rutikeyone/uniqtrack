import 'package:flutter/material.dart';
import 'package:uniqtrack/core/common/context_extension.dart';
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
  final bool? favouriteTrack;
  final bool? userCreator;
  final bool canDelete;

  final VoidCallback? onAddToFavouritesPressed;
  final VoidCallback? onRemoveFromFavouritesPressed;
  final VoidCallback? onDeletePressed;

  const DetailsDataWidget({
    required this.track,
    required this.favouriteTrack,
    required this.userCreator,
    required this.canDelete,
    required this.onAddToFavouritesPressed,
    required this.onRemoveFromFavouritesPressed,
    required this.onDeletePressed,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final trackData = track.track;

    final _isFavouriteTrack = favouriteTrack;
    final _isUserCreator = userCreator;

    return Padding(
      padding: const EdgeInsets.all(AppDiments.dm16),
      child: ListView(
        shrinkWrap: true,
        children: [
          ModalBottomSheetDividerWidget(),
          NameWidget(name: trackData?.name),
          DateWidget(date: trackData?.dateCreated),
          CommentWidget(comment: trackData?.comment),
          Padding(
            padding: const EdgeInsets.only(top: AppDiments.dm12),
            child: Container(
              width: context.fullWidth,
              color: context.colorScheme.secondary,
              height: AppDiments.dm1,
            ),
          ),
          TrackDataSectionWidget(
            distance: trackData?.distance,
            duration: trackData?.duration,
            averageSpeed: trackData?.averageSpeed,
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
            memories: trackData?.memories,
          ),
          DetailsModalBottomActionsWidget(
            id: track.track?.id,
            userCreator: _isUserCreator,
            favouriteTrack: _isFavouriteTrack,
            canDelete: canDelete,
            onAddToFavouritesPressed: onAddToFavouritesPressed,
            onRemoveFromFavouritesPressed: onRemoveFromFavouritesPressed,
            onDeletePressed: onDeletePressed,
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
                onPressed: () {},
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
