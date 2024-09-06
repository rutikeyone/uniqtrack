import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart' as provider;
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:uniqtrack/app/app_state/auth/auth_notifier.dart';
import 'package:uniqtrack/app/glue/login/providers/login_store_builder_provider.dart';
import 'package:uniqtrack/app/glue/navigation/providers/auth_state_changes_use_case_provider.dart';
import 'package:uniqtrack/app/glue/register/providers/register_provider.dart';
import 'package:uniqtrack/features/forgot_password/presentation/forgot_password_page.dart';
import 'package:uniqtrack/features/login/presentation%20/pages/login_page.dart';
import 'package:uniqtrack/features/main/presentation/pages/main_page.dart';
import 'package:uniqtrack/features/navigation/go_router_refresh_stream.dart';
import 'package:uniqtrack/features/navigation/paths/app_paths.dart';
import 'package:uniqtrack/features/navigation/providers/login_nav_callback_store_provider.dart';
import 'package:uniqtrack/features/navigation/providers/register_nav_callback_store_provider.dart';
import 'package:uniqtrack/features/navigation/providers/stores/login_nav_callback_store.dart';
import 'package:uniqtrack/features/navigation/providers/stores/register_nav_callback_store.dart';
import 'package:uniqtrack/features/register/presentation/pages/register_page.dart';
import 'package:uniqtrack/features/splash/presentation/splash_page.dart';

part 'router.g.dart';

@riverpod
GlobalKey<NavigatorState> rootNavigator(RootNavigatorRef ref) {
  return GlobalKey<NavigatorState>();
}

@riverpod
GoRouter router(RouterRef ref) {
  final rootNavigatorKey = ref.watch(rootNavigatorProvider);
  final authState = ref.watch(authStateNotifierProvider);
  final authStateChangesUseCase = ref.watch(authStateChangesUseCaseProvider);

  return GoRouter(
    navigatorKey: rootNavigatorKey,
    initialLocation: AppPaths.splash.goRoute,
    refreshListenable: GoRouterRefreshStream(authStateChangesUseCase.call()),
    redirect: (context, state) {
      final uri = state.uri.path;

      return authState.authStatus.when(
        pending: () => null,
        authenticated: () {
          if (authState.firstTime) {
            FlutterNativeSplash.remove();
          }

          if (uri == AppPaths.splash.path) {
            return AppPaths.main.goRoute;
          }

          return null;
        },
        notAuth: () {
          if (authState.firstTime) {
            FlutterNativeSplash.remove();
          }

          if (uri == AppPaths.splash.path) {
            return AppPaths.login.goRoute;
          }

          return null;
        },
      );
    },
    routes: [
      GoRoute(
        path: AppPaths.main.goRoute,
        builder: (context, state) {
          return const MainPage();
        },
      ),
      GoRoute(
        path: AppPaths.splash.goRoute,
        builder: (context, state) {
          return const SplashPage();
        },
      ),
      GoRoute(
        path: AppPaths.login.goRoute,
        builder: (context, state) {
          final loginNavCallbackStore = LoginNavCallbackStore(
            navigateToRegister: () {
              final registerPath = AppPaths.login.register.path;

              context.push(registerPath);
            },
            navigateToForgotPassword: () {
              final forgotPath = AppPaths.login.forgotPassword.path;

              context.push(forgotPath);
            },
          );

          return ProviderScope(
            overrides: [
              loginNavCallbackStoreProvider
                  .overrideWithValue(loginNavCallbackStore),
            ],
            child: Consumer(builder: (context, ref, child) {
              final loginStore = ref.watch(loginStoreBuilderProvider);

              return provider.Provider(
                  create: (context) => loginStore.create(),
                  builder: (context, child) {
                    return const LoginPage();
                  });
            }),
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
                ],
                child: Consumer(builder: (context, ref, child) {
                  final registerStoreBuilder =
                      ref.watch(registerStoreBuilderProvider);

                  return provider.Provider(
                    create: (context) {
                      return registerStoreBuilder.create();
                    },
                    child: const RegisterPage(),
                  );
                }),
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
