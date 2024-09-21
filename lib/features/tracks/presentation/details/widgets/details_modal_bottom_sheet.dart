import 'package:flutter/material.dart';
import 'package:uniqtrack/core/common/context_extension.dart';
import 'package:uniqtrack/features/tracks/domain/entities/entities.dart';
import 'package:uniqtrack/features/tracks/presentation/details/widgets/details_data_widget.dart';

class DetailsModalBottomSheet extends StatelessWidget {
  final Stream<TrackUI> trackStream;
  final TrackUI initialTrack;

  final VoidCallback onAddToFavouritesPressed;
  final VoidCallback onRemoveFromFavouritesPressed;
  final VoidCallback onDeletePressed;

  final double height;

  const DetailsModalBottomSheet({
    required this.initialTrack,
    required this.trackStream,
    required this.height,
    required this.onAddToFavouritesPressed,
    required this.onRemoveFromFavouritesPressed,
    required this.onDeletePressed,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.fullWidth,
      height: height,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          StreamBuilder(
            initialData: initialTrack,
            stream: trackStream,
            builder: (context, state) {
              final data = state.data;

              if (data == null) {
                return const SizedBox.shrink();
              }

              return DetailsDataWidget(
                track: data,
                favouriteTrack: data.favouriteTrack,
                userCreator: data.currentUserCreator,
                onAddToFavouritesPressed:
                    data.favouriteEnabled ? onAddToFavouritesPressed : null,
                onRemoveFromFavouritesPressed: data.favouriteEnabled
                    ? onRemoveFromFavouritesPressed
                    : null,
                onDeletePressed: data.deleteEnabled ? onDeletePressed : null,
                canDelete: data.canDelete,
              );
            },
          ),
        ],
      ),
    );
  }
}
