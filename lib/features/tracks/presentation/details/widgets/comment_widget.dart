import 'package:flutter/material.dart';
import 'package:uniqtrack/core/common/context_extension.dart';
import 'package:uniqtrack/core/theme/app_diments.dart';

class CommentWidget extends StatelessWidget {
  final String? comment;

  const CommentWidget({
    required this.comment,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return comment != null && comment!.isNotEmpty
        ? Padding(
            padding: EdgeInsets.only(top: AppDiments.dm12),
            child: Text(
              comment!,
              style: context.primaryTextTheme.bodySmall?.copyWith(
                color: context.appColorsTheme.primaryTextHintColor,
              ),
            ),
          )
        : const SizedBox.shrink();
  }
}
