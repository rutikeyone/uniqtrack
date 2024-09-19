import 'package:flutter/material.dart';
import 'package:uniqtrack/core/common/context_extension.dart';
import 'package:uniqtrack/core/theme/app_diments.dart';
import 'package:uniqtrack/features/tracks/domain/entities/entities.dart';
import 'package:uniqtrack/features/tracks/presentation/record_track/widgets/memory_details_bottom_sheet/memory_details_action_buttons.dart';
import 'package:uniqtrack/features/tracks/presentation/record_track/widgets/memory_details_bottom_sheet/memory_details_comment_widget.dart';
import 'package:uniqtrack/features/tracks/presentation/record_track/widgets/memory_details_bottom_sheet/memory_details_divider_widget.dart';
import 'package:uniqtrack/features/tracks/presentation/record_track/widgets/memory_details_bottom_sheet/memory_details_name_widget.dart';
import 'package:uniqtrack/features/tracks/presentation/record_track/widgets/memory_details_bottom_sheet/memory_details_uint_8_list_photos_widget.dart';
import 'package:uniqtrack/features/tracks/presentation/record_track/widgets/record_track_bottom_sheet/modal_bottom_sheet_divider_widget.dart';

class MemoryDetailsBottomSheet extends StatelessWidget {
  final Stream<Memory?> memoryStream;

  final void Function(String?) navigateToPhotoViewer;
  final VoidCallback navigateBack;
  final VoidCallback onDeletePressed;
  final VoidCallback onEditMemoryPressed;

  const MemoryDetailsBottomSheet({
    required this.memoryStream,
    required this.navigateToPhotoViewer,
    required this.navigateBack,
    required this.onDeletePressed,
    required this.onEditMemoryPressed,
    super.key,
  });

  static PersistentBottomSheetController? show({
    required BuildContext context,
    required GlobalKey<ScaffoldState> scaffoldKey,
    required Stream<Memory?> memoryStream,
    required void Function(String?) navigateToPhotoViewer,
    required VoidCallback onEditMemoryPressed,
    required VoidCallback onNavigateBackPressed,
    required VoidCallback onDeletePressed,
  }) {
    return scaffoldKey.currentState?.showBottomSheet(
      (context) {
        return MemoryDetailsBottomSheet(
          memoryStream: memoryStream,
          navigateToPhotoViewer: navigateToPhotoViewer,
          navigateBack: onNavigateBackPressed,
          onDeletePressed: onDeletePressed,
          onEditMemoryPressed: onEditMemoryPressed,
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
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(AppDiments.dm12),
          ),
          child: Padding(
            padding: const EdgeInsets.only(
              top: AppDiments.dm12,
              left: AppDiments.dm16,
              right: AppDiments.dm16,
              bottom: AppDiments.dm16,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ModalBottomSheetDividerWidget(),
                StreamBuilder(
                  stream: memoryStream,
                  builder: (context, snapshot) {
                    final memory = snapshot.data;
                    if (memory == null) {
                      return const SizedBox.shrink();
                    }

                    final name = memory.name;
                    final comment = memory.comment;
                    final photos = memory.photos;

                    return Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        MemoryDetailsNameWidget(name: name),
                        MemoryDetailsCommentWidget(comment: comment),
                        MemoryDetailsDividerWidget(),
                        MemoryDetailsListPhotosWidget(
                          initialPhotos: photos,
                          navigateToPhotoViewer: navigateToPhotoViewer,
                        ),
                      ],
                    );
                  },
                ),
                MemoryDetailsActionButtons(
                  navigateBack: navigateBack,
                  onDeletePressed: onDeletePressed,
                  onEditMemoryPressed: onEditMemoryPressed,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
