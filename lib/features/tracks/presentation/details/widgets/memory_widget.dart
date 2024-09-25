import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:uniqtrack/core/common/extensions/context_extension.dart';
import 'package:uniqtrack/core/presentation/widgets/memory_tile.dart';
import 'package:uniqtrack/core/theme/app_diments.dart';
import 'package:uniqtrack/features/tracks/domain/entities/entities.dart';
import 'package:uniqtrack/generated/l10n.dart';

class MemoryWidget extends StatelessWidget {
  final List<Memory>? memories;
  final void Function(Memory) onMemoryPressed;
  final void Function(Memory)? onDeletePressed;

  const MemoryWidget({
    required this.memories,
    required this.onMemoryPressed,
    this.onDeletePressed,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    if (memories == null || memories?.isEmpty == true) {
      return const SizedBox.shrink();
    }

    final data = memories ?? List.empty();

    return Padding(
      padding: const EdgeInsets.only(top: AppDiments.dm16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            S.of(context).memories,
            style: context.primaryTextTheme.bodyLarge?.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: AppDiments.dm8),
            child: SizedBox(
              height: AppDiments.dm135,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: data.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  final item = data[index];

                  return MemoryTile(
                    memory: item,
                    onTilePressed: () => onMemoryPressed(item),
                    onDeletePressed: onDeletePressed != null ? () => onDeletePressed?.call(item) : null,
                  );
                },
                separatorBuilder: (context, index) {
                  return Gap(AppDiments.dm16);
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: AppDiments.dm8),
            child: Container(
              width: context.fullWidth,
              color: context.colorScheme.secondary,
              height: AppDiments.dm1,
            ),
          ),
        ],
      ),
    );
  }
}
