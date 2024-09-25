import 'package:flutter/material.dart';
import 'package:uniqtrack/core/common/extensions/context_extension.dart';
import 'package:uniqtrack/core/theme/app_diments.dart';

class MemoryDetailsCommentWidget extends StatelessWidget {
  final String? comment;

  const MemoryDetailsCommentWidget({
    required this.comment,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return comment != null && comment!.isNotEmpty
        ? Padding(
      padding: const EdgeInsets.only(top: AppDiments.dm8),
      child: Text(
        comment!,
        style: context.primaryTextTheme.bodyMedium?.copyWith(
          color: context.appColorsTheme.primaryTextHintColor,
        ),
      ),
    )
        : const SizedBox.shrink();
  }
}