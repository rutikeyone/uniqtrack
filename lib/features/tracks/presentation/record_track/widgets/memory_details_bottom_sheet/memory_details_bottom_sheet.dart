import 'package:flutter/foundation.dart';
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
  final Memory memory;

  final void Function(Uint8List?) navigateToPhotoViewerByBytes;
  final void Function(String?) navigateToPhotoViewerByLink;
  final VoidCallback navigateBack;
  final VoidCallback onDeletePressed;

  const MemoryDetailsBottomSheet({
    required this.memory,
    required this.navigateToPhotoViewerByBytes,
    required this.navigateToPhotoViewerByLink,
    required this.navigateBack,
    required this.onDeletePressed,
    super.key,
  });

  static PersistentBottomSheetController? show({
    required BuildContext context,
    required GlobalKey<ScaffoldState> scaffoldKey,
    required Memory memory,
    required void Function(Uint8List?) navigateToPhotoViewerByBytes,
    required void Function(String?) navigateToPhotoViewerByLink,
    required VoidCallback navigateBack,
    required VoidCallback onDeletePressed,
  }) {
    return scaffoldKey.currentState?.showBottomSheet(
      (context) {
        return MemoryDetailsBottomSheet(
          memory: memory,
          navigateToPhotoViewerByBytes: navigateToPhotoViewerByBytes,
          navigateToPhotoViewerByLink: navigateToPhotoViewerByLink,
          navigateBack: navigateBack,
          onDeletePressed: onDeletePressed,
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
    final name = memory.name;
    final comment = memory.comment;
    final photos = memory.photos;

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
                MemoryDetailsNameWidget(name: name),
                MemoryDetailsCommentWidget(comment: comment),
                MemoryDetailsDividerWidget(),
                MemoryDetailsUint8ListPhotosWidget(
                  initialPhotos: photos,
                  navigateToPhotoViewerByBytes: navigateToPhotoViewerByBytes,
                ),
                MemoryDetailsActionButtons(
                  navigateBack: navigateBack,
                  onDeletePressed: onDeletePressed,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
