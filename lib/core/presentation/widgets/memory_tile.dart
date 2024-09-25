import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:uniqtrack/core/common/extensions/context_extension.dart';
import 'package:uniqtrack/core/presentation/constants/assets/app_assets.dart';
import 'package:uniqtrack/core/theme/app_diments.dart';
import 'package:uniqtrack/features/tracks/domain/entities/entities.dart';

class MemoryTile extends StatelessWidget {
  final Memory memory;

  final VoidCallback? onDeletePressed;
  final VoidCallback? onTilePressed;

  const MemoryTile({
    required this.memory,
    this.onTilePressed,
    this.onDeletePressed,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final name = memory.name;

    return SizedBox(
      width: AppDiments.dm112,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: AppDiments.dm112,
            height: AppDiments.dm112,
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Positioned.fill(
                  top: 10,
                  child: GestureDetector(
                    onTap: onTilePressed,
                    child: Container(
                      decoration: BoxDecoration(
                        color: context.colorScheme.secondary,
                        borderRadius: BorderRadius.circular(AppDiments.dm14),
                      ),
                      child: UnconstrainedBox(
                        child: SvgPicture.asset(
                          AppAssets.icons.memory,
                          width: AppDiments.dm36,
                          height: AppDiments.dm64,
                          fit: BoxFit.cover,
                          colorFilter: ColorFilter.mode(
                            context.colorScheme.onSecondary,
                            BlendMode.srcIn,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                if (onDeletePressed != null)
                  Positioned(
                    top: AppDiments.dm0,
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
                            border: Border.all(
                              color: context.appColorsTheme.primaryButtonBorder
                                  .withOpacity(.2),
                            ),
                            color: context.colorScheme.secondary,
                            borderRadius:
                                BorderRadius.circular(AppDiments.dm16),
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
                    ),
                  ),
              ],
            ),
          ),
          name != null
              ? Padding(
                  padding: const EdgeInsets.only(top: AppDiments.dm4),
                  child: Text(
                    name,
                    style: context.primaryTextTheme.bodyMedium?.copyWith(
                      fontWeight: FontWeight.w500,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                )
              : const SizedBox.shrink(),
        ],
      ),
    );
  }
}
