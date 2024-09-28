import 'package:flutter/material.dart';
import 'package:uniqtrack/core/common/extensions/context_extension.dart';
import 'package:uniqtrack/core/theme/app_diments.dart';
import 'package:uniqtrack/features/tracks/domain/entities/entities.dart';
import 'package:uniqtrack/features/tracks/presentation/record_track/widgets/memory_details_bottom_sheet/altitude_widget.dart';
import 'package:uniqtrack/features/tracks/presentation/record_track/widgets/memory_details_bottom_sheet/memory_details_action_buttons.dart';
import 'package:uniqtrack/features/tracks/presentation/record_track/widgets/memory_details_bottom_sheet/memory_details_comment_widget.dart';
import 'package:uniqtrack/features/tracks/presentation/record_track/widgets/memory_details_bottom_sheet/memory_details_divider_widget.dart';
import 'package:uniqtrack/core/presentation/widgets/name_widget.dart';
import 'package:uniqtrack/features/tracks/presentation/record_track/widgets/memory_details_bottom_sheet/memory_details_uint_8_list_photos_widget.dart';
import 'package:uniqtrack/features/tracks/presentation/record_track/widgets/record_track_bottom_sheet/modal_bottom_sheet_divider_widget.dart';

class MemoryDetailsBottomSheet extends StatefulWidget {
  final Stream<Memory?> memoryStream;
  final Memory? initialData;

  final Stream<bool?>? userCreatorStream;
  final bool? initialUserCreator;

  final void Function(String?) navigateToPhotoViewer;
  final VoidCallback navigateBack;
  final void Function(Memory) onDeletePressed;
  final void Function(Memory) onEditMemoryPressed;

  final void Function(double)? onHeightDefined;

  const MemoryDetailsBottomSheet({
    required this.memoryStream,
    required this.navigateToPhotoViewer,
    required this.navigateBack,
    required this.onDeletePressed,
    required this.onEditMemoryPressed,
    this.onHeightDefined,
    this.initialData,
    this.userCreatorStream,
    this.initialUserCreator,
    super.key,
  });

  static PersistentBottomSheetController? show({
    required BuildContext context,
    required GlobalKey<ScaffoldState> scaffoldKey,
    required Stream<Memory?> memoryStream,
    required void Function(String?) navigateToPhotoViewer,
    required void Function(Memory) onEditMemoryPressed,
    required VoidCallback onNavigateBackPressed,
    required void Function(Memory) onDeletePressed,
    void Function(double)? onHeightDefined,
    Memory? initialData,
    Stream<bool?>? userCreatorStream,
    bool? initialUserCreatorData,
  }) {
    return scaffoldKey.currentState?.showBottomSheet(
      (context) {
        return MemoryDetailsBottomSheet(
          memoryStream: memoryStream,
          navigateToPhotoViewer: navigateToPhotoViewer,
          navigateBack: onNavigateBackPressed,
          onDeletePressed: onDeletePressed,
          onEditMemoryPressed: onEditMemoryPressed,
          initialData: initialData,
          userCreatorStream: userCreatorStream,
          initialUserCreator: initialUserCreatorData,
          onHeightDefined: onHeightDefined,
        );
      },
      enableDrag: false,
      backgroundColor: context.theme.scaffoldBackgroundColor,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(12.0),
        ),
      ),
    );
  }

  @override
  State<MemoryDetailsBottomSheet> createState() =>
      _MemoryDetailsBottomSheetState();
}

class _MemoryDetailsBottomSheetState extends State<MemoryDetailsBottomSheet> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final renderObject = context.findRenderObject();
      if (renderObject != null && renderObject is RenderBox) {
        final size = renderObject.size.height;
        widget.onHeightDefined?.call(size);
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.end,
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(AppDiments.dm12),
          ),
          child: Padding(
            padding: const EdgeInsets.all(AppDiments.dm16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ModalBottomSheetDividerWidget(),
                StreamBuilder(
                  initialData: widget.initialData,
                  stream: widget.memoryStream,
                  builder: (context, snapshot) {
                    final memory = snapshot.data;
                    if (memory == null) {
                      return const SizedBox.shrink();
                    }

                    final name = memory.name;
                    final comment = memory.comment;
                    final photos = memory.photos;
                    final altitude = memory.position?.altitude;

                    return Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        NameWidget(name: name),
                        AltitudeWidget(altitude: altitude),
                        MemoryDetailsCommentWidget(comment: comment),
                        MemoryDetailsDividerWidget(),
                        MemoryDetailsListPhotosWidget(
                          initialPhotos: photos,
                          navigateToPhotoViewer: widget.navigateToPhotoViewer,
                        ),
                        MemoryDetailsActionButtons(
                          navigateBack: widget.navigateBack,
                          onDeletePressed: () => widget.onDeletePressed(memory),
                          onEditMemoryPressed: () =>
                              widget.onEditMemoryPressed(memory),
                          userCreatorStream: widget.userCreatorStream,
                          initialUserCreator: widget.initialUserCreator,
                        ),
                      ],
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
