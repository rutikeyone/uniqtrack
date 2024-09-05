import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:uniqtrack/app/common_uI_container.dart';
import 'package:uniqtrack/core/common_impl/common_ui_delegate_impl.dart';
import 'package:uniqtrack/core/theme/app_theme.dart';
import 'package:uniqtrack/features/navigation/router/router.dart';
import 'package:uniqtrack/generated/l10n.dart';

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(routerProvider);
    final commonUIDelegate = ref.watch(commonUIDelegateProvider.notifier);

    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
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
          child: child ?? const SizedBox(),
        );
      },
    );
  }
}
