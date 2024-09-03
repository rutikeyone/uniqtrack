import 'package:flutter/material.dart';
import 'package:uniqtrack/core/common/context_extension.dart';
import 'package:uniqtrack/core/theme/app_diments.dart';
import 'package:uniqtrack/generated/l10n.dart';

part 'image_source_header_widget.dart';

part 'image_source_choose_from_gallery_tile.dart';

part 'image_source_take_photo_tile.dart';

part 'cancel_button_widget.dart';

class ImageSourceModalBottomSheet extends StatelessWidget {
  final VoidCallback onFromGalleryPressed;
  final VoidCallback onFromCameraPressed;

  final VoidCallback onClosePressed;


  const ImageSourceModalBottomSheet({
    super.key,
    required this.onFromGalleryPressed,
    required this.onFromCameraPressed,
    required this.onClosePressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppDiments.dm262,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(AppDiments.dm12),
              color: context.bottomSheetTheme.backgroundColor,
            ),
            width: context.bottomSheetWidth,
            child: Column(
              children: [
                const _ImageSourceHeaderWidget(),
                Container(
                  width: context.fullWidth,
                  color: context.theme.dividerColor,
                  height: AppDiments.dm1,
                ),
                _ImageSourceChooseFromGalleryTile(
                  onPressed: () {
                    onClosePressed();
                    onFromGalleryPressed();
                  },
                ),
                Container(
                  width: context.fullWidth,
                  color: context.theme.dividerColor,
                  height: AppDiments.dm1,
                ),
                _ImageSourceTakePhotoTile(
                  onPressed: () {
                    onClosePressed();
                    onFromCameraPressed();
                  },
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: AppDiments.dm8),
            child: _CancelButtonWidget(
              onClosePressed: onClosePressed,
            ),
          ),
        ],
      ),
    );
  }
}
