import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:uniqtrack/core/common/extensions/context_extension.dart';
import 'package:uniqtrack/core/common_impl/app_widget_toolkit_impl.dart';
import 'package:uniqtrack/core/theme/app_diments.dart';

class DateWidget extends ConsumerWidget {
  final DateTime? date;

  const DateWidget({
    required this.date,
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appWidgetToolkit = ref.watch(appWidgetToolkitProvider);
    final dateFormatted = appWidgetToolkit.formatDate(date);

    return dateFormatted != null
        ? Padding(
            padding: const EdgeInsets.only(top: AppDiments.dm8),
            child: Text(
              dateFormatted,
              style: context.primaryTextTheme.bodySmall,
            ),
          )
        : const SizedBox.shrink();
  }
}
