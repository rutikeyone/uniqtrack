import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:uniqtrack/core/common/context_extension.dart';
import 'package:uniqtrack/core/common_impl/app_widget_toolkit_impl.dart';
import 'package:uniqtrack/core/presentation/constants/assets/app_assets.dart';
import 'package:uniqtrack/core/theme/app_diments.dart';

import 'track_action_button.dart';

class TrackUpperPartWidget extends ConsumerWidget {
  final String asset;
  final String? name;
  final DateTime? date;

  final VoidCallback onMorePressed;
  final Widget? actionsWidget;

  const TrackUpperPartWidget({
    required this.asset,
    required this.name,
    required this.date,
    required this.onMorePressed,
    this.actionsWidget,
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appWidgetToolkit = ref.watch(appWidgetToolkitProvider);

    final dateFormatted = appWidgetToolkit.formatDate(date);

    return Expanded(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            asset,
            width: AppDiments.dm67,
            height: AppDiments.dm67,
            fit: BoxFit.cover,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: AppDiments.dm8),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  name != null
                      ? Text(
                          name!,
                          style: context.primaryTextTheme.titleLarge?.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      : const SizedBox.shrink(),
                  dateFormatted != null
                      ? Padding(
                          padding: const EdgeInsets.only(top: AppDiments.dm2),
                          child: Text(
                            dateFormatted,
                            style: context.primaryTextTheme.bodySmall?.copyWith(
                              fontWeight: FontWeight.w500,
                              color:
                                  context.appColorsTheme.primaryTextHintColor,
                            ),
                          ),
                        )
                      : const SizedBox.shrink(),
                ],
              ),
            ),
          ),
          actionsWidget ?? Row(
            children: [
              TrackActionButton(
                asset: AppAssets.icons.share,
                onPressed: () {},
              ),
              Padding(
                padding: const EdgeInsets.only(left: AppDiments.dm6),
                child: TrackActionButton(
                  asset: AppAssets.icons.more,
                  onPressed: onMorePressed,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
