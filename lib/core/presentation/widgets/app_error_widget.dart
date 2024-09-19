import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:uniqtrack/core/common/context_extension.dart';
import 'package:uniqtrack/core/common_impl/app_error_widget_toolkit_impl.dart';
import 'package:uniqtrack/core/presentation/widgets/app_elevated_button.dart';
import 'package:uniqtrack/core/theme/app_diments.dart';
import 'package:uniqtrack/generated/l10n.dart';

class AppErrorWidget extends ConsumerWidget {
  final Object error;
  final VoidCallback onRefreshPressed;

  const AppErrorWidget({
    required this.error,
    required this.onRefreshPressed,
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appErrorWidgetToolkit = ref.watch(appErrorWidgetToolkitProvider);

    final header = appErrorWidgetToolkit.header(
      context: context,
      object: error,
    );
    final body = appErrorWidgetToolkit.body(context: context, object: error);

    return SizedBox(
      width: context.fullWidth,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: AppDiments.dm16,
              left: AppDiments.dm16,
              right: AppDiments.dm16,
            ),
            child: Text(
              header,
              style: context.primaryTextTheme.displaySmall?.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: AppDiments.dm16,
              left: AppDiments.dm16,
              right: AppDiments.dm16,
            ),
            child: Text(
              body,
              style: context.primaryTextTheme.bodyMedium,
              //style: context.textStyles.textStyle14W400,
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: AppDiments.dm16,
              left: AppDiments.dm55,
              right: AppDiments.dm55,
            ),
            child: SizedBox(
              width: context.fullWidth,
              height: 44,
              child: AppElevatedButton(
                onPressed: onRefreshPressed,
                text: S.of(context).refresh,
                textStyle: context.primaryTextTheme.labelLarge?.copyWith(
                  color: context.colorScheme.secondary,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
