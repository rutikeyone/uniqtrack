import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:uniqtrack/features/forgot_password/presentation/forgot_password_page.dart';
import 'package:uniqtrack/features/login/presentation%20/pages/login_page.dart';
import 'package:uniqtrack/features/register/presentation/providers/register_state_notifier_provider.dart';
import 'package:uniqtrack/navigation/providers/register_nav_callback_store_provider.dart';
import 'package:uniqtrack/navigation/providers/stores/login_nav_callback_store.dart';
import 'package:uniqtrack/navigation/providers/login_nav_callback_store_provider.dart';
import 'package:uniqtrack/features/register/presentation/pages/register_page.dart';
import 'package:uniqtrack/navigation/paths/app_paths.dart';
import 'package:uniqtrack/navigation/providers/stores/register_nav_callback_store.dart';

part 'router.g.dart';

@riverpod
GoRouter router(RouterRef ref) {
  return GoRouter(
    initialLocation: AppPaths.login.goRoute,
    routes: [
      GoRoute(
        path: AppPaths.login.goRoute,
        builder: (context, state) {
          final loginNavCallbackStore = LoginNavCallbackStore(
            navigateToRegister: () {
              final registerPath = AppPaths.login.register.path;

              context.push(registerPath);
            },
          );

          return ProviderScope(
            overrides: [
              loginNavCallbackStoreProvider
                  .overrideWithValue(loginNavCallbackStore),
            ],
            child: const LoginPage(),
          );
        },
        routes: [
          GoRoute(
            path: AppPaths.login.register.goRoute,
            builder: (context, state) {
              final registerNavCallbackStore = RegisterNavCallbackStore(
                navigateBack: context.pop,
              );

              return ProviderScope(
                overrides: [
                  registerNavCallbackStoreProvider
                      .overrideWithValue(registerNavCallbackStore),
                  registerStateNotifierProvider,
                ],
                child: const RegisterPage(),
              );
            },
          ),
          GoRoute(
            path: AppPaths.login.forgotPassword.goRoute,
            builder: (context, state) {
              return const ForgotPasswordPage();
            },
          ),
        ],
      )
    ],
  );
}
