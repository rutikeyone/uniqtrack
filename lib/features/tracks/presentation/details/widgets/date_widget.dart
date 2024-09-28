import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:uniqtrack/core/common/extensions/context_extension.dart';
import 'package:uniqtrack/core/common_impl/app_widget_toolkit_impl.dart';
import 'package:uniqtrack/core/theme/app_diments.dart';
import 'package:uniqtrack/generated/l10n.dart';

class DateAltitudeWidget extends ConsumerWidget {
  final DateTime? date;
  final double? altitude;

  const DateAltitudeWidget({
    required this.date,
    required this.altitude,
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appWidgetToolkit = ref.watch(appWidgetToolkitProvider);
    final dateFormatted = appWidgetToolkit.formatDate(date);

    final altitudeFormatted = altitude != null && altitude! > 0
        ? S.of(context).maxAltitude(altitude!.toStringAsFixed(0))
        : null;

    final data = () {
      final result = List<String>.empty(growable: true);
      if (dateFormatted != null) result.add(dateFormatted);
      if (altitudeFormatted != null) result.add(altitudeFormatted);
      return result;
    }.call();

    final value = data.isNotEmpty ? data.join(', ') : null;

    return value != null
        ? Padding(
            padding: const EdgeInsets.only(top: AppDiments.dm8),
            child: Text(
              value,
              style: context.primaryTextTheme.bodySmall,
            ),
          )
        : const SizedBox.shrink();

  }
}
