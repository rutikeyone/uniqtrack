import 'package:flutter/material.dart';
import 'package:uniqtrack/core/common/context_extension.dart';
import 'package:uniqtrack/core/theme/app_diments.dart';

class MemoryDetailsDividerWidget extends StatelessWidget {
  const MemoryDetailsDividerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
      const EdgeInsets.only(top: AppDiments.dm12),
      child: Container(
        width: context.fullWidth,
        color: context.colorScheme.secondary,
        height: AppDiments.dm1,
      ),
    );
  }
}
