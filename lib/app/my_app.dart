import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:uniqtrack/app/common_uI_container.dart';
import 'package:uniqtrack/app/navigation/router/router.dart';
import 'package:uniqtrack/core/common/extensions/context_extension.dart';
import 'package:uniqtrack/core/common_impl/common_ui/common_ui_delegate_notifier.dart';
import 'package:uniqtrack/core/theme/app_circle_progress_indicator.dart';
import 'package:uniqtrack/core/theme/app_themes.dart';
import 'package:uniqtrack/generated/l10n.dart';

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(routerProvider);
    final commonUIDelegate =
        ref.watch(commonUIDelegateNotifierProvider.notifier);

    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: AppThemes.lightTheme,
      routerConfig: router,
      supportedLocales: S.delegate.supportedLocales,
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      builder: (context, child) {
        return CommonUIContainer(
          commonUIDelegate: commonUIDelegate,
          child: LoaderOverlay(
            overlayColor: context.colorScheme.primary.withOpacity(.3),
            useDefaultLoading: false,
            overlayWidgetBuilder: (_) {
              return const Center(
                child: AppCircleProgressIndicator(),
              );
            },
            child: child ?? const SizedBox(),
          ),
        );
      },
    );
  }
}
