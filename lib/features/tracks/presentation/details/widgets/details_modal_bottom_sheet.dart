import 'package:flutter/material.dart';
import 'package:uniqtrack/core/common/extensions/context_extension.dart';
import 'package:uniqtrack/features/tracks/domain/entities/entities.dart';
import 'package:uniqtrack/features/tracks/presentation/details/widgets/details_data_widget.dart';

class DetailsModalBottomSheet extends StatefulWidget {
  final Stream<TrackUI?> trackStream;
  final TrackUI? initialTrack;

  final VoidCallback onAddToFavouritesPressed;
  final VoidCallback onRemoveFromFavouritesPressed;
  final VoidCallback onDeletePressed;
  final VoidCallback onRepeatPressed;

  final void Function(Memory) onMemoryPressed;
  final void Function(Memory) onDeleteMemoryPressed;
  final void Function(Track?)? onEditPressed;

  final void Function(double) onHeightDefined;

  const DetailsModalBottomSheet({
    required this.initialTrack,
    required this.trackStream,
    required this.onAddToFavouritesPressed,
    required this.onRemoveFromFavouritesPressed,
    required this.onDeletePressed,
    required this.onMemoryPressed,
    required this.onRepeatPressed,
    required this.onDeleteMemoryPressed,
    required this.onEditPressed,
    required this.onHeightDefined,
    super.key,
  });

  @override
  State<DetailsModalBottomSheet> createState() =>
      _DetailsModalBottomSheetState();
}

class _DetailsModalBottomSheetState extends State<DetailsModalBottomSheet> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final renderObject = context.findRenderObject();
      if (renderObject != null && renderObject is RenderBox) {
        final size = renderObject.size.height;
        widget.onHeightDefined(size);
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        maxHeight: context.fullHeight,
        minWidth: context.fullWidth,
      ),
      child: StreamBuilder(
        initialData: widget.initialTrack,
        stream: widget.trackStream,
        builder: (context, state) {
          final data = state.data;

          if (data == null) {
            return const SizedBox.shrink();
          }

          return DetailsDataWidget(
            track: data,
            onAddToFavouritesPressed:
                widget.onAddToFavouritesPressed ,
            onRemoveFromFavouritesPressed: widget.onRemoveFromFavouritesPressed,
            favouriteEnabled: data.favouriteEnabled,
            canMore: data.canMore,
            onDeletePressed: data.deleteEnabled ? widget.onDeletePressed : null,
            onDeleteMemoryPressed: widget.onDeleteMemoryPressed,
            canDelete: data.canDelete,
            onMemoryPressed: widget.onMemoryPressed,
            onRepeatPressed: widget.onRepeatPressed,
            onEditPressed: widget.onEditPressed,
          );
        },
      ),
    );
  }
}
