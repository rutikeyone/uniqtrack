import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:uniqtrack/core/common/context_extension.dart';
import 'package:uniqtrack/core/theme/app_diments.dart';

class MemoryDetailsUint8ListPhotosWidget extends StatelessWidget {
  final List<Uint8List>? initialPhotos;
  final void Function(Uint8List?) navigateToPhotoViewerByBytes;

  const MemoryDetailsUint8ListPhotosWidget({
    required this.initialPhotos,
    required this.navigateToPhotoViewerByBytes,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final photos = initialPhotos;

    return photos != null && photos.isNotEmpty
        ? Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(top: AppDiments.dm12),
          child: SizedBox(
            height: AppDiments.dm96,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              shrinkWrap: false,
              itemCount: photos.length,
              itemBuilder: (context, index) {
                final item = photos[index];

                return ClipRRect(
                  borderRadius: BorderRadius.circular(AppDiments.dm8),
                  child: GestureDetector(
                    onTap: () => navigateToPhotoViewerByBytes(item),
                    child: Image.memory(
                      item,
                      width: AppDiments.dm96,
                      height: AppDiments.dm96,
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              },
              separatorBuilder: (context, index) {
                return Gap(AppDiments.dm12);
              },
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: AppDiments.dm12),
          child: Container(
            width: context.fullWidth,
            color: context.colorScheme.secondary,
            height: AppDiments.dm1,
          ),
        ),
      ],
    )
        : const SizedBox.shrink();
  }
}