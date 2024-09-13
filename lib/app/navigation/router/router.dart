// ignore_for_file: avoid_manual_providers_as_generated_provider_dependency
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart' as provider;
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:uniqtrack/app/app_state/auth/auth_notifier.dart';
import 'package:uniqtrack/app/glue/accounts/providers/providers.dart';
import 'package:uniqtrack/app/glue/tracks/providers/providers.dart';
import 'package:uniqtrack/app/navigation/go_router_refresh_stream.dart';
import 'package:uniqtrack/app/navigation/main_page.dart';
import 'package:uniqtrack/app/navigation/paths/app_paths.dart';
import 'package:uniqtrack/app/navigation/stores/nav_callback_store.dart';
import 'package:uniqtrack/features/accounts/presentation/forgot_password/pages/forgot_password_page.dart';
import 'package:uniqtrack/features/accounts/presentation/login/pages/login_page.dart';
import 'package:uniqtrack/features/accounts/presentation/profile/pages/profile_page.dart';
import 'package:uniqtrack/features/accounts/presentation/register/pages/register_page.dart';
import 'package:uniqtrack/features/placeholders/presentation/splash/pages/splash_page.dart';
import 'package:uniqtrack/features/tracks/presentation/add_or_edit_edit_memory/pages/add_or_edit_memory_page.dart';
import 'package:uniqtrack/features/tracks/presentation/add_or_edit_record_track/pages/add_or_edit_record_track_page.dart';
import 'package:uniqtrack/features/tracks/presentation/community/pages/community_page.dart';
import 'package:uniqtrack/features/tracks/presentation/photo_viewer/pages/photo_viewer_page.dart';
import 'package:uniqtrack/features/tracks/presentation/record_track/pages/record_track_page.dart';

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

  final authState = ref.watch(authStateNotifierProvider);
  final userChangesUseCase = ref.watch(userChangesUseCaseProvider);

  return GoRouter(
    navigatorKey: rootNavigatorKey,
    initialLocation: AppPaths.splash.goRoute,
    refreshListenable: GoRouterRefreshStream(userChangesUseCase.call()),
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

                  final navCallbackStore = CommunityNavCallbackStore(
                    navigateToTrackTracking: navigateToTrackTracking,
                  );

                  return provider.Provider.value(
                    value: navCallbackStore,
                    child: CommunityPage(),
                  );
                },
                routes: [
                  GoRoute(
                    parentNavigatorKey: rootNavigatorKey,
                    path: AppPaths.community.tracking.goRoute,
                    builder: (context, state) {
                      final navCallbackStore = RecordTrackNavCallbackStore(
                        navigateBack: context.pop,
                        navigateToAddMemory: (data) {
                          final addOrEditMemoryPath =
                              AppPaths.community.tracking.addOrEditMemoryPath;
                          final queryParameters =
                              addOrEditMemoryPath.queryPosition(data);
                          final path =
                              addOrEditMemoryPath.query(queryParameters).path;

                          return context.push(path);
                        },
                        navigateToAddRecordTrack: () {
                          final path =
                              AppPaths.community.tracking.addRecordTrack.path;

                          context.push(path);
                        },
                        navigateToPhotoViewerByBytes: (data) {
                          final photoViewer =
                              AppPaths.community.tracking.photoViewer;
                          final queryParameters = data != null
                              ? photoViewer.queryBytes(data)
                              : <String, String>{};

                          final path = photoViewer.query(queryParameters).path;

                          context.push(path);
                        },
                        navigateToPhotoViewerByLink: (data) {},
                      );

                      return Consumer(
                        builder: (context, ref, child) {
                          final storeBuilder =
                              ref.watch(recordTrackStoreBuilderProvider);

                          return provider.MultiProvider(
                            providers: [
                              provider.Provider(create: storeBuilder.create),
                              provider.Provider.value(value: navCallbackStore),
                            ],
                            child: RecordTrackPage(),
                          );
                        },
                      );
                    },
                    routes: [
                      GoRoute(
                        parentNavigatorKey: rootNavigatorKey,
                        path: AppPaths
                            .community.tracking.addOrEditMemoryPath.goRoute,
                        builder: (context, state) {
                          final path =
                              AppPaths.community.tracking.addOrEditMemoryPath;
                          final position = path.position(state);

                          final navCallbackStore =
                              AddOrEditMemoryNavCallbackStore(
                            navigateBack: context.pop,
                            navigateToPhotoViewerByBytes: (data) {
                              final photoViewer = AppPaths.community.tracking
                                  .addOrEditMemoryPath.photoViewer;

                              final queryParameters =
                                  photoViewer.queryBytes(data);

                              final path =
                                  photoViewer.query(queryParameters).path;

                              context.push(path);
                            },
                            navigateToPhotoViewerByLink: (data) {},
                            navigateWithResult: (memory) => context.pop(memory),
                          );

                          return Consumer(
                            builder: (context, ref, child) {
                              final storeBuilder = ref
                                  .watch(addOrEditMemoryStoreBuilderProvider);

                              return provider.MultiProvider(
                                providers: [
                                  provider.Provider.value(
                                      value: navCallbackStore),
                                  provider.Provider(
                                    create: (context) => storeBuilder
                                        .create(context, position: position),
                                  ),
                                ],
                                child: AddOrEditMemoryPage(),
                              );
                            },
                          );
                        },
                        routes: [
                          GoRoute(
                            parentNavigatorKey: rootNavigatorKey,
                            path: AppPaths.community.tracking
                                .addOrEditMemoryPath.photoViewer.goRoute,
                            builder: (context, state) {
                              final photoViewerPath = AppPaths.community
                                  .tracking.addOrEditMemoryPath.photoViewer;

                              final linkArgument = photoViewerPath.link(state);
                              final bytesData = photoViewerPath.bytes(state);

                              return Consumer(builder: (context, ref, child) {
                                final storeBuilder =
                                    ref.watch(photoViewerStoreBuilderProvider);

                                return provider.Provider(
                                  create: (context) {
                                    return storeBuilder.create(
                                      context,
                                      bytes: bytesData,
                                      link: linkArgument,
                                    );
                                  },
                                  child: PhotoViewerPage(),
                                );
                              });
                            },
                          ),
                        ],
                      ),
                      GoRoute(
                        parentNavigatorKey: rootNavigatorKey,
                        path:
                            AppPaths.community.tracking.addRecordTrack.goRoute,
                        builder: (context, state) {
                          final navCallbackStore =
                              AddOrEditRecordTrackNavCallbackStore(
                            navigateBack: context.pop,
                          );

                          return Consumer(builder: (context, ref, child) {
                            final storeBuilder =
                                ref.watch(addOrEditRecordStoreBuilderProvider);

                            return provider.MultiProvider(
                              providers: [
                                provider.Provider.value(
                                    value: navCallbackStore),
                                provider.Provider(
                                  create: (context) =>
                                      storeBuilder.create(context),
                                ),
                              ],
                              child: AddOrEditRecordTrackPage(),
                            );
                          });
                        },
                      ),
                      GoRoute(
                        parentNavigatorKey: rootNavigatorKey,
                        path: AppPaths.community.tracking.photoViewer.goRoute,
                        builder: (context, state) {
                          final photoViewerPath =
                              AppPaths.community.tracking.photoViewer;

                          final linkArgument = photoViewerPath.link(state);
                          final bytesData = photoViewerPath.bytes(state);

                          return Consumer(builder: (context, ref, child) {
                            final storeBuilder =
                                ref.watch(photoViewerStoreBuilderProvider);

                            return provider.Provider(
                              create: (context) {
                                return storeBuilder.create(
                                  context,
                                  bytes: bytesData,
                                  link: linkArgument,
                                );
                              },
                              child: PhotoViewerPage(),
                            );
                          });
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
          final navCallbackStore = LoginNavCallbackStore(
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

          return Consumer(
            builder: (context, ref, child) {
              final storeBuilder = ref.watch(loginStoreBuilderProvider);

              return provider.MultiProvider(
                providers: [
                  provider.Provider.value(value: navCallbackStore),
                  provider.Provider(create: storeBuilder.create),
                ],
                builder: (context, child) {
                  return const LoginPage();
                },
              );
            },
          );
        },
        routes: [
          GoRoute(
            parentNavigatorKey: rootNavigatorKey,
            path: AppPaths.login.register.goRoute,
            builder: (context, state) {
              final navCallbackStore = RegisterNavCallbackStore(
                navigateBack: context.pop,
              );

              return Consumer(
                builder: (context, ref, child) {
                  final registerStoreBuilder =
                      ref.watch(registerStoreBuilderProvider);

                  return provider.MultiProvider(
                    providers: [
                      provider.Provider.value(value: navCallbackStore),
                      provider.Provider(create: registerStoreBuilder.create),
                    ],
                    child: const RegisterPage(),
                  );
                },
              );
            },
          ),
          GoRoute(
            parentNavigatorKey: rootNavigatorKey,
            path: AppPaths.login.forgotPassword.goRoute,
            builder: (context, state) {
              final navCallbackStore = ForgotPasswordNavCallbackStore(
                navigateBack: context.pop,
              );

              final emailArgument = AppPaths.login.forgotPassword.email(state);

              return Consumer(
                builder: (context, WidgetRef ref, child) {
                  final forgotPasswordStoreBuilder =
                      ref.watch(forgotPasswordStoreProvider);

                  return provider.MultiProvider(
                    providers: [
                      provider.Provider.value(value: navCallbackStore),
                      provider.Provider(
                        create: (context) =>
                            forgotPasswordStoreBuilder.create(emailArgument),
                      ),
                    ],
                    child: ForgotPasswordPage(),
                  );
                },
              );
            },
          ),
        ],
      )
    ],
  );
}
