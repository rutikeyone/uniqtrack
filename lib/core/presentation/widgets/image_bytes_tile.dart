import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:uniqtrack/core/common/context_extension.dart';
import 'package:uniqtrack/core/theme/app_diments.dart';

class ImageBytesTile extends StatelessWidget {
  final Uint8List data;
  final VoidCallback onDeletePressed;
  final VoidCallback onPressed;

  const ImageBytesTile({
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
              child: Image.memory(
                data,
                fit: BoxFit.cover,
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