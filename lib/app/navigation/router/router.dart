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
import 'package:uniqtrack/app/navigation/arguments/args.dart';
import 'package:uniqtrack/app/navigation/go_router_refresh_stream.dart';
import 'package:uniqtrack/app/navigation/main_page.dart';
import 'package:uniqtrack/app/navigation/paths/app_paths.dart';
import 'package:uniqtrack/app/navigation/stores/nav_callback_store_builder.dart';
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
                  final navCallbackStore =
                      NavCallbackStoreBuilder.createCommunityNavCallbackStore(
                    context: context,
                    recordTrackPath: AppPaths.community.tracking,
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
                      return Consumer(
                        builder: (context, ref, child) {
                          final storeBuilder =
                              ref.watch(recordTrackStoreBuilderProvider);

                          final addOrEditMemoryArgsConverter =
                              ref.watch(addOrEditMemoryArgsConverterProvider);
                          final photoViewerConverter =
                              ref.watch(photoViewerConverterProvider);
                          final addOrEditRecordTrackConverter =
                              ref.watch(addOrEditRecordTrackConverterProvider);

                          final navCallbackStore = NavCallbackStoreBuilder
                              .createRecordTrackNavCallbackStore(
                            context: context,
                            addOrEditMemoryPath:
                                AppPaths.community.tracking.addOrEditMemoryPath,
                            addOrEditRecordTrackPath: AppPaths
                                .community.tracking.addOrEditRecordTrack,
                            photoViewerPath:
                                AppPaths.community.tracking.photoViewer,
                            photoViewerConverter: photoViewerConverter,
                            addOrEditRecordTrackConverter:
                                addOrEditRecordTrackConverter,
                            addOrEditMemoryArgsConverter:
                                addOrEditMemoryArgsConverter,
                          );

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
                          return Consumer(
                            builder: (context, ref, child) {
                              final storeBuilder = ref
                                  .watch(addOrEditMemoryStoreBuilderProvider);

                              final addOrEditMemoryArgsConverter = ref
                                  .watch(addOrEditMemoryArgsConverterProvider);

                              final photoViewerConverter =
                                  ref.watch(photoViewerConverterProvider);

                              final path = AppPaths
                                  .community.tracking.addOrEditMemoryPath;

                              final args = path.arguments(
                                parameters: state.uri.queryParameters,
                                converter: addOrEditMemoryArgsConverter,
                              );

                              final navCallbackStore = NavCallbackStoreBuilder
                                  .createAddOrEditMemoryNavCallbackStore(
                                context: context,
                                photoViewerPath: AppPaths.community.tracking
                                    .addOrEditMemoryPath.photoViewerPath,
                                photoViewerConverter: photoViewerConverter,
                              );

                              return provider.MultiProvider(
                                providers: [
                                  provider.Provider.value(
                                      value: navCallbackStore),
                                  provider.Provider(
                                    create: (context) => storeBuilder.create(
                                      context,
                                      position: args?.position,
                                    ),
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
                                .addOrEditMemoryPath.photoViewerPath.goRoute,
                            builder: (context, state) {
                              return Consumer(builder: (context, ref, child) {
                                final storeBuilder =
                                    ref.watch(photoViewerStoreBuilderProvider);

                                final photoViewerConverter =
                                    ref.watch(photoViewerConverterProvider);

                                final photoViewerPath = AppPaths
                                    .community
                                    .tracking
                                    .addOrEditMemoryPath
                                    .photoViewerPath;

                                final args = photoViewerPath.arguments(
                                  queryParameters: state.uri.queryParameters,
                                  converter: photoViewerConverter,
                                );

                                return provider.Provider(
                                  create: (context) {
                                    return storeBuilder.create(
                                      context,
                                      bytes: args?.bytes,
                                      link: args?.link,
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
                        path: AppPaths
                            .community.tracking.addOrEditRecordTrack.goRoute,
                        builder: (context, state) {
                          final navCallbackStore = NavCallbackStoreBuilder
                              .createAddOrEditRecordTrackNavCallbackStore(
                                  context: context);

                          final addOrEditRecordTrackConverter =
                              ref.watch(addOrEditRecordTrackConverterProvider);

                          final args = addOrEditRecordTrackConverter
                              .fromJson(state.uri.queryParameters);

                          return Consumer(builder: (context, ref, child) {
                            final storeBuilder =
                                ref.watch(addOrEditRecordStoreBuilderProvider);

                            return provider.MultiProvider(
                              providers: [
                                provider.Provider.value(
                                    value: navCallbackStore),
                                provider.Provider(
                                  create: (context) => storeBuilder.create(
                                      context: context, track: args?.track),
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
                          return Consumer(builder: (context, ref, child) {
                            final storeBuilder =
                                ref.watch(photoViewerStoreBuilderProvider);
                            final photoViewerConverter =
                                ref.watch(photoViewerConverterProvider);

                            final photoViewerPath =
                                AppPaths.community.tracking.photoViewer;

                            final args = photoViewerPath.arguments(
                              queryParameters: state.uri.queryParameters,
                              converter: photoViewerConverter,
                            );

                            return provider.Provider(
                              create: (context) {
                                return storeBuilder.create(
                                  context,
                                  bytes: args?.bytes,
                                  link: args?.link,
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
          return Consumer(
            builder: (context, ref, child) {
              final storeBuilder = ref.watch(loginStoreBuilderProvider);
              final converter = ref.watch(forgotPasswordArgsConverterProvider);

              final navCallbackStore =
                  NavCallbackStoreBuilder.createLoginNavCallbackStore(
                context: context,
                registerPath: AppPaths.login.register,
                forgotPasswordPath: AppPaths.login.forgotPassword,
                converter: converter,
              );

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
              final navCallbackStore =
                  NavCallbackStoreBuilder.createRegisterNavCallbackStore(
                      context);

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
              final path = AppPaths.login.forgotPassword;
              final navCallbackStore =
                  NavCallbackStoreBuilder.createForgotPasswordNavCallbackStore(
                path: path,
                context: context,
              );

              return Consumer(
                builder: (context, WidgetRef ref, child) {
                  final forgotPasswordStoreBuilder =
                      ref.watch(forgotPasswordStoreProvider);

                  final forgotPasswordArgsConverter =
                      ref.watch(forgotPasswordArgsConverterProvider);

                  final queryParameters = state.uri.queryParameters;
                  final args = path.arguments(
                    queryParameters: queryParameters,
                    converter: forgotPasswordArgsConverter,
                  );

                  return provider.MultiProvider(
                    providers: [
                      provider.Provider.value(value: navCallbackStore),
                      provider.Provider(
                        create: (context) =>
                            forgotPasswordStoreBuilder.create(args?.email),
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
