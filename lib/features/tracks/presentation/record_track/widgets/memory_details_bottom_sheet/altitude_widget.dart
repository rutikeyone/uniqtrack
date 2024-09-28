import 'package:flutter/material.dart';
import 'package:uniqtrack/core/common/extensions/context_extension.dart';
import 'package:uniqtrack/core/theme/app_diments.dart';
import 'package:uniqtrack/generated/l10n.dart';

class AltitudeWidget extends StatelessWidget {
  final double? altitude;

  const AltitudeWidget({
    required this.altitude,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final altitudeFormatted = altitude != null && altitude! > 0
        ? S.of(context).altitude(altitude!.toStringAsFixed(0))
        : null;

    return altitudeFormatted != null
        ? Padding(
      padding: const EdgeInsets.only(top: AppDiments.dm8),
      child: Text(
        altitudeFormatted,
        style: context.primaryTextTheme.bodySmall,
      ),
    )
        : const SizedBox.shrink();
  }
}
