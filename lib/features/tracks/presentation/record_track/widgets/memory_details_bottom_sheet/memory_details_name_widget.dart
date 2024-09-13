import 'package:flutter/material.dart';
import 'package:uniqtrack/core/common/context_extension.dart';
import 'package:uniqtrack/core/theme/app_diments.dart';

class MemoryDetailsNameWidget extends StatelessWidget {
  final String? name;

  const MemoryDetailsNameWidget({
    required this.name,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return name != null && name!.isNotEmpty
        ? Padding(
            padding: EdgeInsets.only(top: AppDiments.dm12),
            child: Text(
              name!,
              style: context.primaryTextTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        : const SizedBox.shrink();
  }
}
