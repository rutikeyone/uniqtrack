import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:uniqtrack/core/theme/app_diments.dart';
import 'package:uniqtrack/features/tracks/presentation/record_track/widgets/memory_details_bottom_sheet/memory_details_back_button.dart';
import 'package:uniqtrack/features/tracks/presentation/record_track/widgets/memory_details_bottom_sheet/memory_details_delete_button.dart';
import 'package:uniqtrack/features/tracks/presentation/record_track/widgets/memory_details_bottom_sheet/memory_details_edit_button.dart';

class MemoryDetailsActionButtons extends StatelessWidget {
  final VoidCallback navigateBack;
  final VoidCallback onDeletePressed;
  final VoidCallback onEditMemoryPressed;

  const MemoryDetailsActionButtons({
    required this.navigateBack,
    required this.onDeletePressed,
    required this.onEditMemoryPressed,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: AppDiments.dm12),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              MemoryDetailsEditButton(onEditMemoryPressed: onEditMemoryPressed),
              Gap(AppDiments.dm8),
              MemoryDetailsDeleteButton(
                onDeletePressed: onDeletePressed,
              ),
            ],
          ),
          MemoryDetailsBackButton(navigateBack: navigateBack),
        ],
      ),
    );
  }
}
