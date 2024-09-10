import 'package:flutter/material.dart';
import 'package:uniqtrack/core/common/context_extension.dart';
import 'package:uniqtrack/core/theme/app_diments.dart';

class RecordDataItem extends StatelessWidget {
  final String value;
  final String label;

  const RecordDataItem({
    required this.label,
    required this.value,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          value,
          style: context.primaryTextTheme.displaySmall?.copyWith(
            fontWeight: FontWeight.w600,
          ),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        Padding(
          padding: const EdgeInsets.only(top: AppDiments.dm4),
          child: Text(
            label,
            style: context.primaryTextTheme.bodySmall?.copyWith(
              fontWeight: FontWeight.w500,
              color: context.appColorsTheme.primaryTextHintColor,
            ),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }
}