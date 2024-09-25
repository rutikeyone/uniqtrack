import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:uniqtrack/core/common/extensions/context_extension.dart';
import 'package:uniqtrack/core/presentation/constants/assets/app_assets.dart';
import 'package:uniqtrack/core/theme/app_diments.dart';
import 'package:uniqtrack/generated/l10n.dart';

class AppEmptyListWidget<T> extends StatelessWidget {
  final List<T> data;
  final Widget child;

  const AppEmptyListWidget({
    required this.data,
    required this.child,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    if (data.isEmpty) {
      return SizedBox(
        width: context.fullWidth,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: AppDiments.dm16),
              child: SvgPicture.asset(
                AppAssets.backgrounds.listEmpty,
                width: AppDiments.dm256,
                height: AppDiments.dm256,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: AppDiments.dm16),
              child: Text(
                S.of(context).thereAreNoTrackRecordingsHereYet,
                style: context.primaryTextTheme.labelLarge,
              ),
            ),
          ],
        ),
      );
    }

    return child;
  }
}
