import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:uniqtrack/core/common/context_extension.dart';
import 'package:uniqtrack/core/theme/app_diments.dart';

class MemoryDetailsListPhotosWidget extends StatelessWidget {
  final List<String>? initialPhotos;
  final void Function(String?) navigateToPhotoViewer;

  const MemoryDetailsListPhotosWidget({
    required this.initialPhotos,
    required this.navigateToPhotoViewer,
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
                    onTap: () => navigateToPhotoViewer(item),
                    child: CachedNetworkImage(
                      imageUrl: item,
                      width: AppDiments.dm96,
                      height: AppDiments.dm96,
                      fit: BoxFit.cover,
                      placeholder: (context, url) {
                        return Container(
                          width: AppDiments.dm96,
                          height: AppDiments.dm96,
                          decoration: BoxDecoration(
                            color: context.colorScheme.secondary,
                            borderRadius: BorderRadius.circular(AppDiments.dm12),
                          ),
                        );
                      },
                      errorWidget: (context, _, __) {
                        return Container(
                          width: AppDiments.dm96,
                          height: AppDiments.dm96,
                          decoration: BoxDecoration(
                            color: context.colorScheme.secondary,
                            borderRadius: BorderRadius.circular(AppDiments.dm12),
                          ),
                        );
                      },
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