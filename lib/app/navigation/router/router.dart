import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart' as provider;
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:uniqtrack/app/app_state/auth/auth_notifier.dart';
import 'package:uniqtrack/app/glue/add_or_edit_record_track/providers/add_or_edit_store_builder_provider.dart';
import 'package:uniqtrack/app/glue/forgot_password/providers/forgot_password_provider.dart';
import 'package:uniqtrack/app/glue/login/providers/login_store_builder_provider.dart';
import 'package:uniqtrack/app/app_state/providers/auth_state_changes_use_case_provider.dart';
import 'package:uniqtrack/app/glue/record_track/providers/record_track_store_builder_provider.dart';
import 'package:uniqtrack/app/glue/register/providers/register_provider.dart';
import 'package:uniqtrack/app/navigation/go_router_refresh_stream.dart';
import 'package:uniqtrack/app/navigation/paths/app_paths.dart';
import 'package:uniqtrack/app/navigation/providers/navigation_store_provider.dart';
import 'package:uniqtrack/app/navigation/providers/stores/nav_callback_store.dart';
import 'package:uniqtrack/features/add_memory/presentation/pages/add_memory_page.dart';
import 'package:uniqtrack/features/add_or_edit_record_track/presentation/pages/add_or_edit_record_track_page.dart';
import 'package:uniqtrack/features/community/presentation/pages/community_page.dart';
import 'package:uniqtrack/features/forgot_password/presentation/pages/forgot_password_page.dart';
import 'package:uniqtrack/features/login/presentation%20/pages/login_page.dart';
import 'package:uniqtrack/features/main/presentation/pages/main_page.dart';
import 'package:uniqtrack/features/profile/presentation/pages/profile_page.dart';
import 'package:uniqtrack/features/record_track/presentation/pages/record_track_page.dart';
import 'package:uniqtrack/features/register/presentation/pages/register_page.dart';
import 'package:uniqtrack/features/splash/presentation/splash_page.dart';

part 'router.g.dart';

@riverpod
GlobalKey<NavigatorState> rootNavigatorKey(RootNavigatorKeyRef ref) {
  return GlobalKey<NavigatorState>();
}

@riverpod
GlobalKey<NavigatorState> mainNavigatorKey(MainNavigatorKeyRef ref) {
  return GlobalKey<NavigatorState>();
}

@riverpod
GlobalKey<NavigatorState> profileNavigatorKey(ProfileNavigatorKeyRef ref) {
  return GlobalKey<NavigatorState>();
}

@riverpod
GoRouter router(RouterRef ref) {
  final rootNavigatorKey = ref.watch(rootNavigatorKeyProvider);
  final mainNavigatorKey = ref.watch(mainNavigatorKeyProvider);
  final profileNavigatorKey = ref.watch(profileNavigatorKeyProvider);

  // ignore: avoid_manual_providers_as_generated_provider_dependency
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
        authenticated: (_) {
          if (authState.firstTime) {
            FlutterNativeSplash.remove();
          }

          if (uri == AppPaths.splash.path) {
            return AppPaths.community.goRoute;
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
      StatefulShellRoute.indexedStack(
        parentNavigatorKey: rootNavigatorKey,
        builder: (context, state, navigationShell) {
          return MainPage(
            navigationShell: navigationShell,
          );
        },
        branches: [
          StatefulShellBranch(
            navigatorKey: mainNavigatorKey,
            routes: [
              GoRoute(
                path: AppPaths.community.goRoute,
                builder: (context, state) {
                  final navigateToTrackTracking =
                      () => context.push(AppPaths.community.tracking.path);

                  final communityNavCallbackStore = CommunityNavCallbackStore(
                    navigateToTrackTracking: navigateToTrackTracking,
                  );

                  return ProviderScope(
                    overrides: [
                      communityNavCallbackStoreProvider.overrideWithValue(
                        communityNavCallbackStore,
                      ),
                    ],
                    child: CommunityPage(),
                  );
                },
                routes: [
                  GoRoute(
                    parentNavigatorKey: rootNavigatorKey,
                    path: AppPaths.community.tracking.goRoute,
                    builder: (context, state) {
                      final recordTrackNavCallback =
                      RecordTrackNavCallbackStore(
                        navigateBack: context.pop,
                        navigateToAddMemory: () {
                          context.push(
                              AppPaths.community.tracking.addMemoryPath.path);
                        },
                        navigateToAddRecordTrack: () {
                          final path =
                              AppPaths.community.tracking.addRecordTrack.path;

                          context.push(path);
                        },
                      );

                      return ProviderScope(
                        overrides: [
                          recordTrackNavCallbackStoreProvider
                              .overrideWithValue(recordTrackNavCallback),
                        ],
                        child: Consumer(
                          builder: (context, ref, child) {
                            final storeBuilder =
                            ref.watch(recordTrackStoreBuilderProvider);

                            return provider.Provider(
                              create: storeBuilder.create,
                              child: RecordTrackPage(),
                            );
                          },
                        ),
                      );
                    },
                    routes: [
                      GoRoute(
                        parentNavigatorKey: rootNavigatorKey,
                        path: AppPaths.community.tracking.addMemoryPath.goRoute,
                        builder: (context, state) {
                          return AddMemoryPage();
                        },
                      ),
                      GoRoute(
                        parentNavigatorKey: rootNavigatorKey,
                        path:
                        AppPaths.community.tracking.addRecordTrack.goRoute,
                        builder: (context, state) {
                          return Consumer(
                              builder: (context, ref, child) {
                                final storeBuilder = ref.watch(
                                    addOrEditRecordStoreBuilderProvider);

                                return provider.Provider(
                                  create: (context) => storeBuilder.create(
                                      context),
                                  child: AddOrEditRecordTrackPage(),
                                );
                              }
                          );
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          StatefulShellBranch(
            navigatorKey: profileNavigatorKey,
            routes: [
              GoRoute(
                path: AppPaths.profile.goRoute,
                builder: (context, state) {
                  return ProfilePage();
                },
              ),
            ],
          ),
        ],
      ),
      GoRoute(
        parentNavigatorKey: rootNavigatorKey,
        path: AppPaths.splash.goRoute,
        builder: (context, state) {
          return const SplashPage();
        },
      ),
      GoRoute(
        parentNavigatorKey: rootNavigatorKey,
        path: AppPaths.login.goRoute,
        builder: (context, state) {
          final loginNavCallbackStore = LoginNavCallbackStore(
            navigateToRegister: () {
              final registerPath = AppPaths.login.register.path;

              context.push(registerPath);
            },
            navigateToForgotPassword: (email) {
              final queryParameters =
              AppPaths.login.forgotPassword.queryEmail(email);
              final forgotPath =
              AppPaths.login.forgotPassword.query(queryParameters);

              context.push(forgotPath.path);
            },
          );

          return ProviderScope(
            overrides: [
              loginNavCallbackStoreProvider
                  .overrideWithValue(loginNavCallbackStore),
            ],
            child: Consumer(
              builder: (context, ref, child) {
                final storeBuilder = ref.watch(loginStoreBuilderProvider);

                return provider.Provider(
                  create: storeBuilder.create,
                  builder: (context, child) {
                    return const LoginPage();
                  },
                );
              },
            ),
          );
        },
        routes: [
          GoRoute(
            parentNavigatorKey: rootNavigatorKey,
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
                child: Consumer(
                  builder: (context, ref, child) {
                    final registerStoreBuilder =
                    ref.watch(registerStoreBuilderProvider);

                    return provider.Provider(
                      create: registerStoreBuilder.create,
                      child: const RegisterPage(),
                    );
                  },
                ),
              );
            },
          ),
          GoRoute(
            parentNavigatorKey: rootNavigatorKey,
            path: AppPaths.login.forgotPassword.goRoute,
            builder: (context, state) {
              final forgotPasswordNavCallbackStore =
              ForgotPasswordNavCallbackStore(
                navigateBack: context.pop,
              );

              final emailArgument = state.uri
                  .queryParameters[AppPaths.login.forgotPassword.emailArgument];

              return ProviderScope(
                overrides: [
                  forgotPasswordNavCallbackStoreProvider.overrideWithValue(
                    forgotPasswordNavCallbackStore,
                  ),
                ],
                child: Consumer(
                  builder: (context, WidgetRef ref, child) {
                    final forgotPasswordStoreBuilder =
                    ref.watch(forgotPasswordStoreProvider);

                    return provider.Provider(
                      create: (context) =>
                          forgotPasswordStoreBuilder.create(emailArgument),
                      child: ForgotPasswordPage(),
                    );
                  },
                ),
              );
            },
          ),
        ],
      )
    ],
  );
}
