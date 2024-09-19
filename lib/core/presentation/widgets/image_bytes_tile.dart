import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:uniqtrack/core/common/context_extension.dart';
import 'package:uniqtrack/core/theme/app_diments.dart';

class ImageTile extends StatelessWidget {
  final String data;
  final VoidCallback onDeletePressed;
  final VoidCallback onPressed;

  const ImageTile({
    required this.data,
    required this.onPressed,
    required this.onDeletePressed,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Positioned.fill(
          child: GestureDetector(
            onTap: onPressed,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(AppDiments.dm12),
              child: CachedNetworkImage(
                imageUrl: data,
                fit: BoxFit.cover,
                placeholder: (context, url) {
                  return Container(
                    decoration: BoxDecoration(
                      color: context.colorScheme.secondary,
                      borderRadius: BorderRadius.circular(AppDiments.dm12),
                    ),
                  );
                },
                errorWidget: (context, _, __) {
                  return Container(
                    decoration: BoxDecoration(
                      color: context.colorScheme.secondary,
                      borderRadius: BorderRadius.circular(AppDiments.dm12),
                    ),
                  );
                },
              ),
            ),
          ),
        ),
        Positioned(
          top: -AppDiments.dm10,
          right: -AppDiments.dm10,
          child: Material(
            borderRadius: BorderRadius.circular(AppDiments.dm16),
            child: InkWell(
              borderRadius: BorderRadius.circular(AppDiments.dm16),
              onTap: onDeletePressed,
              child: Ink(
                width: AppDiments.dm32,
                height: AppDiments.dm32,
                decoration: BoxDecoration(
                  color: context.colorScheme.secondary,
                  borderRadius: BorderRadius.circular(AppDiments.dm16),
                ),
                child: Center(
                  child: Icon(
                    Icons.close,
                    size: AppDiments.dm20,
                    color: context.appColorsTheme.secondaryIconColor,
                  ),
                ),
              ),
            ),
            clipBehavior: Clip.none,
          ),
        ),
      ],
    );
  }
}
