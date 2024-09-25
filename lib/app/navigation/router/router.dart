// ignore_for_file: avoid_manual_providers_as_generated_provider_dependency
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
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
import 'package:uniqtrack/features/accounts/presentation/my_favourite_tracks/pages/my_favourite_tracks_page.dart';
import 'package:uniqtrack/features/accounts/presentation/my_tracks/pages/my_tracks_page.dart';
import 'package:uniqtrack/features/accounts/presentation/profile/pages/profile_page.dart';
import 'package:uniqtrack/features/accounts/presentation/register/pages/register_page.dart';
import 'package:uniqtrack/features/placeholders/presentation/splash/pages/splash_page.dart';
import 'package:uniqtrack/features/tracks/presentation/add_or_edit_memory/pages/add_or_edit_memory_page.dart';
import 'package:uniqtrack/features/tracks/presentation/add_or_edit_record_track/pages/add_or_edit_record_track_page.dart';
import 'package:uniqtrack/features/tracks/presentation/community/pages/community_page.dart';
import 'package:uniqtrack/features/tracks/presentation/details/pages/track_details_page.dart';
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

      if (authState.firstTime) {
        FlutterNativeSplash.remove();
      }

      return authState.authStatus.when(
        pending: () => null,
        authenticated: (_) {
          if (uri == AppPaths.splash.path) {
            return AppPaths.community.path;
          }
          return null;
        },
        notAuth: () {
          if (uri == AppPaths.splash.path) {
            return AppPaths.login.path;
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
                  final detailsArgsConverter =
                      ref.watch(detailsArgsConverterProvider);

                  final addOrEditRecordTrackConverter =
                      ref.watch(addOrEditRecordTrackConverterProvider);

                  final communityPath = AppPaths.community;
                  final recordTrackPath = communityPath.tracking;
                  final trackDetailsPath = communityPath.details;
                  final editTrackPath = communityPath.editRecord;

                  final navCallbackStore =
                      NavCallbackStoreBuilder.createCommunityNavCallbackStore(
                    context: context,
                    recordTrackPath: recordTrackPath,
                    trackDetailsPath: trackDetailsPath,
                    editRecordTrackPath: editTrackPath,
                    detailsArgsConverter: detailsArgsConverter,
                    editRecordTrackArgsConverter: addOrEditRecordTrackConverter,
                  );

                  return provider.Provider.value(
                    value: navCallbackStore,
                    child: CommunityPage(),
                  );
                },
                routes: [
                  GoRoute(
                    parentNavigatorKey: rootNavigatorKey,
                    path: AppPaths.community.editRecord.goRoute,
                    builder: (context, state) {
                      final navCallbackStore = NavCallbackStoreBuilder
                          .createAddOrEditRecordTrackNavCallbackStore(
                              context: context);

                      final addOrEditRecordTrackConverter =
                          ref.watch(addOrEditRecordTrackConverterProvider);

                      final args = addOrEditRecordTrackConverter
                          .fromJson(state.uri.queryParameters);

                      final storeBuilder =
                          ref.watch(addOrEditRecordStoreBuilderProvider);

                      return provider.MultiProvider(
                        providers: [
                          provider.Provider.value(value: navCallbackStore),
                          provider.Provider(
                            create: (context) {
                              return storeBuilder.create(
                                context: context,
                                track: args?.track,
                              );
                            },
                          ),
                        ],
                        child: AddOrEditRecordTrackPage(),
                      );
                    },
                  ),
                  GoRoute(
                    parentNavigatorKey: rootNavigatorKey,
                    path: AppPaths.community.details.goRoute,
                    builder: (context, state) {
                      final photoViewerConverter =
                          ref.watch(photoViewerConverterProvider);

                      final recordTrackArgsConverter =
                          ref.watch(recordTrackArgsConverterProvider);

                      final addOrEditRecordTrackArgsConverter =
                          ref.watch(addOrEditRecordTrackConverterProvider);

                      final detailsPath = AppPaths.community.details;
                      final photoViewerPath = detailsPath.photoViewer;
                      final trackingPath = detailsPath.tracking;
                      final editRecordTrackPath = detailsPath.editRecordTrack;
                      final editMemoryPath = detailsPath.editMemoryPath;

                      final _storeBuilder = ref.watch(detailsStoreProvider);

                      final detailsArgsConverter =
                          ref.watch(detailsArgsConverterProvider);

                      final addOrEditMemoryArgsConverter =
                          ref.watch(addOrEditMemoryArgsConverterProvider);

                      final args = detailsPath.arguments(
                        parameters: state.uri.queryParameters,
                        detailsConverter: detailsArgsConverter,
                      );

                      final navCallbackStore =
                          NavCallbackStoreBuilder.createDetailsNavCallbackStore(
                        context: context,
                        photoViewerPath: photoViewerPath,
                        trackingPath: trackingPath,
                        editRecordTrackPath: editRecordTrackPath,
                        editMemoryPath: editMemoryPath,
                        addOrEditRecordTrackArgsConverter:
                            addOrEditRecordTrackArgsConverter,
                        photoViewerConverter: photoViewerConverter,
                        recordTrackConverter: recordTrackArgsConverter,
                        addOrEditMemoryArgsConverter:
                            addOrEditMemoryArgsConverter,
                        mode: args.mode,
                      );

                      return provider.MultiProvider(
                        providers: [
                          provider.Provider.value(value: navCallbackStore),
                          provider.Provider(
                            create: (context) {
                              return _storeBuilder.create(
                                context: context,
                                canDelete: true,
                                closeWhenRemoveFromFavourites: false,
                                id: args.id,
                                mode: args.mode,
                              );
                            },
                            dispose: (context, store) => store.dispose(),
                          ),
                        ],
                        child: TrackDetailsPage(),
                      );
                    },
                    routes: [
                      GoRoute(
                        parentNavigatorKey: rootNavigatorKey,
                        path: AppPaths.community.details.photoViewer.goRoute,
                        builder: (context, state) {
                          final storeBuilder =
                              ref.watch(photoViewerStoreBuilderProvider);

                          final photoViewerConverter =
                              ref.watch(photoViewerConverterProvider);

                          final photoViewerPath =
                              AppPaths.community.details.photoViewer;

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
                        },
                      ),
                      GoRoute(
                        parentNavigatorKey: rootNavigatorKey,
                        path: AppPaths.community.details.tracking.goRoute,
                        builder: (context, state) {
                          final storeBuilder =
                              ref.watch(recordTrackStoreBuilderProvider);

                          final addOrEditMemoryArgsConverter =
                              ref.watch(addOrEditMemoryArgsConverterProvider);

                          final photoViewerConverter =
                              ref.watch(photoViewerConverterProvider);

                          final addOrEditRecordTrackConverter =
                              ref.watch(addOrEditRecordTrackConverterProvider);

                          final recordTrackArgsConverter =
                              ref.watch(recordTrackArgsConverterProvider);

                          final trackingPath =
                              AppPaths.community.details.tracking;
                          final addOrEditMemoryPath =
                              trackingPath.addOrEditMemoryPath;
                          final addOrEditRecordTrackPath =
                              trackingPath.addOrEditRecordTrack;
                          final photoViewerPath = trackingPath.photoViewer;

                          final navCallbackStore = NavCallbackStoreBuilder
                              .createRecordTrackNavCallbackStore(
                            context: context,
                            addOrEditMemoryPath: addOrEditMemoryPath,
                            addOrEditRecordTrackPath: addOrEditRecordTrackPath,
                            photoViewerPath: photoViewerPath,
                            photoViewerConverter: photoViewerConverter,
                            addOrEditRecordTrackConverter:
                                addOrEditRecordTrackConverter,
                            addOrEditMemoryArgsConverter:
                                addOrEditMemoryArgsConverter,
                          );

                          final args = trackingPath.arguments(
                            parameters: state.uri.queryParameters,
                            converter: recordTrackArgsConverter,
                          );

                          return provider.MultiProvider(
                            providers: [
                              provider.Provider(
                                create: (context) {
                                  return storeBuilder.create(
                                    context: context,
                                    track: args?.track,
                                    mode: args?.mode,
                                  );
                                },
                              ),
                              provider.Provider.value(value: navCallbackStore),
                            ],
                            child: RecordTrackPage(),
                          );
                        },
                        routes: [
                          GoRoute(
                            parentNavigatorKey: rootNavigatorKey,
                            path: AppPaths.community.details.tracking
                                .addOrEditMemoryPath.goRoute,
                            builder: (context, state) {
                              final storeBuilder = ref
                                  .watch(addOrEditMemoryStoreBuilderProvider);

                              final addOrEditMemoryArgsConverter = ref
                                  .watch(addOrEditMemoryArgsConverterProvider);

                              final photoViewerConverter =
                                  ref.watch(photoViewerConverterProvider);

                              final addOrEditMemoryPath = AppPaths.community
                                  .details.tracking.addOrEditMemoryPath;

                              final args = addOrEditMemoryPath.arguments(
                                parameters: state.uri.queryParameters,
                                converter: addOrEditMemoryArgsConverter,
                              );

                              final photoViewerPath =
                                  addOrEditMemoryPath.photoViewerPath;

                              final navCallbackStore = NavCallbackStoreBuilder
                                  .createAddOrEditMemoryNavCallbackStore(
                                context: context,
                                photoViewerPath: photoViewerPath,
                                photoViewerConverter: photoViewerConverter,
                              );

                              return provider.MultiProvider(
                                providers: [
                                  provider.Provider.value(
                                      value: navCallbackStore),
                                  provider.Provider(create: (context) {
                                    return storeBuilder.create(
                                      context,
                                      position: args?.position,
                                      memory: args?.memory,
                                      track: args?.track,
                                    );
                                  }),
                                ],
                                child: AddOrEditMemoryPage(),
                              );
                            },
                            routes: [
                              GoRoute(
                                parentNavigatorKey: rootNavigatorKey,
                                path: AppPaths
                                    .community
                                    .details
                                    .tracking
                                    .addOrEditMemoryPath
                                    .photoViewerPath
                                    .goRoute,
                                builder: (context, state) {
                                  final storeBuilder = ref
                                      .watch(photoViewerStoreBuilderProvider);

                                  final photoViewerConverter =
                                      ref.watch(photoViewerConverterProvider);

                                  final photoViewerPath = AppPaths
                                      .community
                                      .details
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
                                },
                              ),
                            ],
                          ),
                          GoRoute(
                            parentNavigatorKey: rootNavigatorKey,
                            path: AppPaths.community.details.tracking
                                .addOrEditRecordTrack.goRoute,
                            builder: (context, state) {
                              final navCallbackStore = NavCallbackStoreBuilder
                                  .createAddOrEditRecordTrackNavCallbackStore(
                                      context: context);

                              final addOrEditRecordTrackConverter = ref
                                  .watch(addOrEditRecordTrackConverterProvider);

                              final args = addOrEditRecordTrackConverter
                                  .fromJson(state.uri.queryParameters);

                              final storeBuilder = ref
                                  .watch(addOrEditRecordStoreBuilderProvider);

                              return provider.MultiProvider(
                                providers: [
                                  provider.Provider.value(
                                      value: navCallbackStore),
                                  provider.Provider(
                                    create: (context) {
                                      return storeBuilder.create(
                                        context: context,
                                        track: args?.track,
                                      );
                                    },
                                  ),
                                ],
                                child: AddOrEditRecordTrackPage(),
                              );
                            },
                          ),
                          GoRoute(
                            parentNavigatorKey: rootNavigatorKey,
                            path: AppPaths
                                .community.details.tracking.photoViewer.goRoute,
                            builder: (context, state) {
                              final storeBuilder =
                                  ref.watch(photoViewerStoreBuilderProvider);
                              final photoViewerConverter =
                                  ref.watch(photoViewerConverterProvider);

                              final photoViewerPath = AppPaths
                                  .community.details.tracking.photoViewer;

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
                            },
                          ),
                        ],
                      ),
                      GoRoute(
                        parentNavigatorKey: rootNavigatorKey,
                        path:
                            AppPaths.community.details.editRecordTrack.goRoute,
                        builder: (context, state) {
                          final navCallbackStore = NavCallbackStoreBuilder
                              .createAddOrEditRecordTrackNavCallbackStore(
                                  context: context);

                          final addOrEditRecordTrackConverter =
                              ref.watch(addOrEditRecordTrackConverterProvider);

                          final args = addOrEditRecordTrackConverter
                              .fromJson(state.uri.queryParameters);
                          final storeBuilder =
                              ref.watch(addOrEditRecordStoreBuilderProvider);

                          return provider.MultiProvider(
                            providers: [
                              provider.Provider.value(value: navCallbackStore),
                              provider.Provider(
                                create: (context) {
                                  return storeBuilder.create(
                                    context: context,
                                    track: args?.track,
                                  );
                                },
                              ),
                            ],
                            child: AddOrEditRecordTrackPage(),
                          );
                        },
                      ),
                      GoRoute(
                        parentNavigatorKey: rootNavigatorKey,
                        path: AppPaths.community.details.editMemoryPath.goRoute,
                        builder: (context, state) {
                          final storeBuilder =
                              ref.watch(addOrEditMemoryStoreBuilderProvider);

                          final addOrEditMemoryArgsConverter =
                              ref.watch(addOrEditMemoryArgsConverterProvider);

                          final photoViewerConverter =
                              ref.watch(photoViewerConverterProvider);

                          final addOrEditMemoryPath =
                              AppPaths.community.details.editMemoryPath;

                          final photoViewerPath =
                              addOrEditMemoryPath.photoViewerPath;

                          final args = addOrEditMemoryPath.arguments(
                            parameters: state.uri.queryParameters,
                            converter: addOrEditMemoryArgsConverter,
                          );

                          final navCallbackStore = NavCallbackStoreBuilder
                              .createAddOrEditMemoryNavCallbackStore(
                            context: context,
                            photoViewerPath: photoViewerPath,
                            photoViewerConverter: photoViewerConverter,
                          );

                          return provider.MultiProvider(
                            providers: [
                              provider.Provider.value(value: navCallbackStore),
                              provider.Provider(
                                create: (context) {
                                  return storeBuilder.create(
                                    context,
                                    position: args?.position,
                                    memory: args?.memory,
                                    track: args?.track,
                                  );
                                },
                              ),
                            ],
                            child: AddOrEditMemoryPage(),
                          );
                        },
                        routes: [
                          GoRoute(
                            parentNavigatorKey: rootNavigatorKey,
                            path: AppPaths.community.details.editMemoryPath
                                .photoViewerPath.goRoute,
                            builder: (context, state) {
                              final storeBuilder =
                                  ref.watch(photoViewerStoreBuilderProvider);

                              final photoViewerConverter =
                                  ref.watch(photoViewerConverterProvider);

                              final photoViewerPath = AppPaths.community.details
                                  .editMemoryPath.photoViewerPath;

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
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                  GoRoute(
                    parentNavigatorKey: rootNavigatorKey,
                    path: AppPaths.community.tracking.goRoute,
                    builder: (context, state) {
                      final storeBuilder =
                          ref.watch(recordTrackStoreBuilderProvider);

                      final addOrEditMemoryArgsConverter =
                          ref.watch(addOrEditMemoryArgsConverterProvider);

                      final photoViewerConverter =
                          ref.watch(photoViewerConverterProvider);

                      final addOrEditRecordTrackConverter =
                          ref.watch(addOrEditRecordTrackConverterProvider);

                      final tracking = AppPaths.community.tracking;
                      final addOrEditMemoryPath = tracking.addOrEditMemoryPath;
                      final addOrEditRecordTrack =
                          tracking.addOrEditRecordTrack;
                      final photoViewer = tracking.photoViewer;

                      final navCallbackStore = NavCallbackStoreBuilder
                          .createRecordTrackNavCallbackStore(
                        context: context,
                        addOrEditMemoryPath: addOrEditMemoryPath,
                        addOrEditRecordTrackPath: addOrEditRecordTrack,
                        photoViewerPath: photoViewer,
                        photoViewerConverter: photoViewerConverter,
                        addOrEditRecordTrackConverter:
                            addOrEditRecordTrackConverter,
                        addOrEditMemoryArgsConverter:
                            addOrEditMemoryArgsConverter,
                      );

                      return provider.MultiProvider(
                        providers: [
                          provider.Provider(
                            create: (context) {
                              return storeBuilder.create(
                                context: context,
                                track: null,
                                mode: null,
                              );
                            },
                          ),
                          provider.Provider.value(value: navCallbackStore),
                        ],
                        child: RecordTrackPage(),
                      );
                    },
                    routes: [
                      GoRoute(
                        parentNavigatorKey: rootNavigatorKey,
                        path: AppPaths
                            .community.tracking.addOrEditMemoryPath.goRoute,
                        builder: (context, state) {
                          final storeBuilder =
                              ref.watch(addOrEditMemoryStoreBuilderProvider);

                          final addOrEditMemoryArgsConverter =
                              ref.watch(addOrEditMemoryArgsConverterProvider);

                          final photoViewerConverter =
                              ref.watch(photoViewerConverterProvider);

                          final addOrEditMemoryPath =
                              AppPaths.community.tracking.addOrEditMemoryPath;

                          final photoViewerPath =
                              addOrEditMemoryPath.photoViewerPath;

                          final args = addOrEditMemoryPath.arguments(
                            parameters: state.uri.queryParameters,
                            converter: addOrEditMemoryArgsConverter,
                          );

                          final navCallbackStore = NavCallbackStoreBuilder
                              .createAddOrEditMemoryNavCallbackStore(
                            context: context,
                            photoViewerPath: photoViewerPath,
                            photoViewerConverter: photoViewerConverter,
                          );

                          return provider.MultiProvider(
                            providers: [
                              provider.Provider.value(value: navCallbackStore),
                              provider.Provider(
                                create: (context) {
                                  return storeBuilder.create(
                                    context,
                                    position: args?.position,
                                    memory: args?.memory,
                                    track: args?.track,
                                  );
                                },
                              ),
                            ],
                            child: AddOrEditMemoryPage(),
                          );
                        },
                        routes: [
                          GoRoute(
                            parentNavigatorKey: rootNavigatorKey,
                            path: AppPaths.community.tracking
                                .addOrEditMemoryPath.photoViewerPath.goRoute,
                            builder: (context, state) {
                              final storeBuilder =
                                  ref.watch(photoViewerStoreBuilderProvider);

                              final photoViewerConverter =
                                  ref.watch(photoViewerConverterProvider);

                              final photoViewerPath = AppPaths.community
                                  .tracking.addOrEditMemoryPath.photoViewerPath;

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
                          final storeBuilder =
                              ref.watch(addOrEditRecordStoreBuilderProvider);

                          return provider.MultiProvider(
                            providers: [
                              provider.Provider.value(value: navCallbackStore),
                              provider.Provider(
                                create: (context) {
                                  return storeBuilder.create(
                                    context: context,
                                    track: args?.track,
                                  );
                                },
                              ),
                            ],
                            child: AddOrEditRecordTrackPage(),
                          );
                        },
                      ),
                      GoRoute(
                        parentNavigatorKey: rootNavigatorKey,
                        path: AppPaths.community.tracking.photoViewer.goRoute,
                        builder: (context, state) {
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
                  final navCallbackStore =
                      NavCallbackStoreBuilder.createProfileNavCallbackStore(
                    context: context,
                    myTracksPath: AppPaths.profile.myTracksPath,
                    myFavouriteTracksPath: AppPaths.profile.myFavouriteTracks,
                  );

                  return provider.Provider.value(
                    value: navCallbackStore,
                    child: ProfilePage(),
                  );
                },
                routes: [
                  GoRoute(
                    path: AppPaths.profile.myTracksPath.goRoute,
                    builder: (context, state) {
                      final detailsArgsConverter =
                          ref.watch(detailsArgsConverterProvider);

                      final editRecordTrackArgsConverter =
                          ref.watch(addOrEditRecordTrackConverterProvider);

                      final myTracksPath = AppPaths.profile.myTracksPath;
                      final detailsPath = myTracksPath.details;
                      final editTrackPath = myTracksPath.editTrack;

                      final navCallbackStore = NavCallbackStoreBuilder
                          .createMyTracksNavCallbackStore(
                        context: context,
                        detailsPath: detailsPath,
                        editTrackPath: editTrackPath,
                        detailsArgsConverter: detailsArgsConverter,
                        editRecordTrackArgsConverter:
                            editRecordTrackArgsConverter,
                      );

                      return provider.Provider.value(
                        value: navCallbackStore,
                        child: MyTracksPage(),
                      );
                    },
                    routes: [
                      GoRoute(
                        parentNavigatorKey: rootNavigatorKey,
                        path: AppPaths.profile.myTracksPath.editTrack.goRoute,
                        builder: (context, state) {
                          final navCallbackStore = NavCallbackStoreBuilder
                              .createAddOrEditRecordTrackNavCallbackStore(
                                  context: context);

                          final addOrEditRecordTrackConverter =
                              ref.watch(addOrEditRecordTrackConverterProvider);

                          final args = addOrEditRecordTrackConverter
                              .fromJson(state.uri.queryParameters);

                          final storeBuilder =
                              ref.watch(addOrEditRecordStoreBuilderProvider);

                          return provider.MultiProvider(
                            providers: [
                              provider.Provider.value(value: navCallbackStore),
                              provider.Provider(
                                create: (context) {
                                  return storeBuilder.create(
                                    context: context,
                                    track: args?.track,
                                  );
                                },
                              ),
                            ],
                            child: AddOrEditRecordTrackPage(),
                          );
                        },
                      ),
                      GoRoute(
                        parentNavigatorKey: rootNavigatorKey,
                        path: AppPaths.profile.myTracksPath.details.goRoute,
                        builder: (context, state) {
                          final photoViewerConverter =
                              ref.watch(photoViewerConverterProvider);

                          final recordTrackConverter =
                              ref.watch(recordTrackArgsConverterProvider);

                          final addOrEditRecordTrackArgsConverter =
                              ref.watch(addOrEditRecordTrackConverterProvider);

                          final addOrEditMemoryArgsConverter =
                              ref.watch(addOrEditMemoryArgsConverterProvider);

                          final detailsArgsConverter =
                              ref.watch(detailsArgsConverterProvider);

                          final detailsPath =
                              AppPaths.profile.myTracksPath.details;
                          final photoViewerPath = detailsPath.photoViewer;
                          final trackingPath = detailsPath.tracking;
                          final editRecordTrackPath =
                              detailsPath.editRecordTrack;
                          final editMemoryPath = detailsPath.editMemoryPath;

                          final _storeBuilder = ref.watch(detailsStoreProvider);

                          final args = detailsPath.arguments(
                            parameters: state.uri.queryParameters,
                            detailsConverter: detailsArgsConverter,
                          );

                          final navCallbackStore = NavCallbackStoreBuilder
                              .createDetailsNavCallbackStore(
                            context: context,
                            photoViewerPath: photoViewerPath,
                            trackingPath: trackingPath,
                            editRecordTrackPath: editRecordTrackPath,
                            editMemoryPath: editMemoryPath,
                            addOrEditRecordTrackArgsConverter:
                                addOrEditRecordTrackArgsConverter,
                            photoViewerConverter: photoViewerConverter,
                            recordTrackConverter: recordTrackConverter,
                            addOrEditMemoryArgsConverter:
                                addOrEditMemoryArgsConverter,
                            mode: args.mode,
                          );

                          return provider.MultiProvider(
                            providers: [
                              provider.Provider.value(value: navCallbackStore),
                              provider.Provider(
                                create: (context) {
                                  return _storeBuilder.create(
                                    context: context,
                                    canDelete: true,
                                    closeWhenRemoveFromFavourites: false,
                                    id: args.id,
                                    mode: args.mode,
                                  );
                                },
                                dispose: (context, store) => store.dispose(),
                              ),
                            ],
                            child: TrackDetailsPage(),
                          );
                        },
                        routes: [
                          GoRoute(
                            parentNavigatorKey: rootNavigatorKey,
                            path: AppPaths.profile.myTracksPath.details
                                .photoViewer.goRoute,
                            builder: (context, state) {
                              final storeBuilder =
                                  ref.watch(photoViewerStoreBuilderProvider);

                              final photoViewerConverter =
                                  ref.watch(photoViewerConverterProvider);

                              final photoViewerPath = AppPaths
                                  .profile.myTracksPath.details.photoViewer;

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
                            },
                          ),
                          GoRoute(
                            parentNavigatorKey: rootNavigatorKey,
                            path: AppPaths
                                .profile.myTracksPath.details.tracking.goRoute,
                            builder: (context, state) {
                              final storeBuilder =
                                  ref.watch(recordTrackStoreBuilderProvider);

                              final addOrEditMemoryArgsConverter = ref
                                  .watch(addOrEditMemoryArgsConverterProvider);

                              final photoViewerConverter =
                                  ref.watch(photoViewerConverterProvider);

                              final addOrEditRecordTrackConverter = ref
                                  .watch(addOrEditRecordTrackConverterProvider);

                              final recordTrackArgsConverter =
                                  ref.watch(recordTrackArgsConverterProvider);

                              final trackingPath = AppPaths
                                  .profile.myTracksPath.details.tracking;
                              final addOrEditMemoryPath =
                                  trackingPath.addOrEditMemoryPath;
                              final addOrEditRecordTrack =
                                  trackingPath.addOrEditRecordTrack;
                              final photoViewerPath = trackingPath.photoViewer;

                              final navCallbackStore = NavCallbackStoreBuilder
                                  .createRecordTrackNavCallbackStore(
                                context: context,
                                addOrEditMemoryPath: addOrEditMemoryPath,
                                addOrEditRecordTrackPath: addOrEditRecordTrack,
                                photoViewerPath: photoViewerPath,
                                photoViewerConverter: photoViewerConverter,
                                addOrEditRecordTrackConverter:
                                    addOrEditRecordTrackConverter,
                                addOrEditMemoryArgsConverter:
                                    addOrEditMemoryArgsConverter,
                              );

                              final args = trackingPath.arguments(
                                parameters: state.uri.queryParameters,
                                converter: recordTrackArgsConverter,
                              );

                              return provider.MultiProvider(
                                providers: [
                                  provider.Provider(
                                    create: (context) {
                                      return storeBuilder.create(
                                        context: context,
                                        track: args?.track,
                                        mode: args?.mode,
                                      );
                                    },
                                  ),
                                  provider.Provider.value(
                                      value: navCallbackStore),
                                ],
                                child: RecordTrackPage(),
                              );
                            },
                            routes: [
                              GoRoute(
                                parentNavigatorKey: rootNavigatorKey,
                                path: AppPaths.profile.myTracksPath.details
                                    .tracking.addOrEditMemoryPath.goRoute,
                                builder: (context, state) {
                                  final storeBuilder = ref.watch(
                                      addOrEditMemoryStoreBuilderProvider);

                                  final addOrEditMemoryArgsConverter =
                                      ref.watch(
                                          addOrEditMemoryArgsConverterProvider);

                                  final photoViewerConverter =
                                      ref.watch(photoViewerConverterProvider);

                                  final addOrEditMemoryPath = AppPaths
                                      .profile
                                      .myTracksPath
                                      .details
                                      .tracking
                                      .addOrEditMemoryPath;

                                  final photoViewerPath =
                                      addOrEditMemoryPath.photoViewerPath;

                                  final args = addOrEditMemoryPath.arguments(
                                    parameters: state.uri.queryParameters,
                                    converter: addOrEditMemoryArgsConverter,
                                  );

                                  final navCallbackStore =
                                      NavCallbackStoreBuilder
                                          .createAddOrEditMemoryNavCallbackStore(
                                    context: context,
                                    photoViewerPath: photoViewerPath,
                                    photoViewerConverter: photoViewerConverter,
                                  );

                                  return provider.MultiProvider(
                                    providers: [
                                      provider.Provider.value(
                                          value: navCallbackStore),
                                      provider.Provider(
                                        create: (context) {
                                          return storeBuilder.create(
                                            context,
                                            position: args?.position,
                                            memory: args?.memory,
                                            track: args?.track,
                                          );
                                        },
                                      ),
                                    ],
                                    child: AddOrEditMemoryPage(),
                                  );
                                },
                                routes: [
                                  GoRoute(
                                    parentNavigatorKey: rootNavigatorKey,
                                    path: AppPaths
                                        .profile
                                        .myTracksPath
                                        .details
                                        .tracking
                                        .addOrEditMemoryPath
                                        .photoViewerPath
                                        .goRoute,
                                    builder: (context, state) {
                                      final storeBuilder = ref.watch(
                                          photoViewerStoreBuilderProvider);

                                      final photoViewerConverter = ref
                                          .watch(photoViewerConverterProvider);

                                      final photoViewerPath = AppPaths
                                          .profile
                                          .myTracksPath
                                          .details
                                          .tracking
                                          .addOrEditMemoryPath
                                          .photoViewerPath;

                                      final args = photoViewerPath.arguments(
                                        queryParameters:
                                            state.uri.queryParameters,
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
                                    },
                                  ),
                                ],
                              ),
                              GoRoute(
                                parentNavigatorKey: rootNavigatorKey,
                                path: AppPaths.profile.myTracksPath.details
                                    .tracking.addOrEditRecordTrack.goRoute,
                                builder: (context, state) {
                                  final navCallbackStore = NavCallbackStoreBuilder
                                      .createAddOrEditRecordTrackNavCallbackStore(
                                          context: context);

                                  final addOrEditRecordTrackConverter =
                                      ref.watch(
                                          addOrEditRecordTrackConverterProvider);

                                  final args = addOrEditRecordTrackConverter
                                      .fromJson(state.uri.queryParameters);

                                  final storeBuilder = ref.watch(
                                      addOrEditRecordStoreBuilderProvider);

                                  return provider.MultiProvider(
                                    providers: [
                                      provider.Provider.value(
                                          value: navCallbackStore),
                                      provider.Provider(
                                        create: (context) {
                                          return storeBuilder.create(
                                            context: context,
                                            track: args?.track,
                                          );
                                        },
                                      ),
                                    ],
                                    child: AddOrEditRecordTrackPage(),
                                  );
                                },
                              ),
                              GoRoute(
                                parentNavigatorKey: rootNavigatorKey,
                                path: AppPaths.profile.myTracksPath.details
                                    .tracking.photoViewer.goRoute,
                                builder: (context, state) {
                                  final storeBuilder = ref
                                      .watch(photoViewerStoreBuilderProvider);

                                  final photoViewerConverter =
                                      ref.watch(photoViewerConverterProvider);

                                  final photoViewerPath = AppPaths
                                      .profile
                                      .myTracksPath
                                      .details
                                      .tracking
                                      .photoViewer;

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
                                },
                              ),
                            ],
                          ),
                          GoRoute(
                            parentNavigatorKey: rootNavigatorKey,
                            path: AppPaths.profile.myTracksPath.details
                                .editRecordTrack.goRoute,
                            builder: (context, state) {
                              final navCallbackStore = NavCallbackStoreBuilder
                                  .createAddOrEditRecordTrackNavCallbackStore(
                                      context: context);

                              final addOrEditRecordTrackConverter = ref
                                  .watch(addOrEditRecordTrackConverterProvider);

                              final args = addOrEditRecordTrackConverter
                                  .fromJson(state.uri.queryParameters);

                              final storeBuilder = ref
                                  .watch(addOrEditRecordStoreBuilderProvider);

                              return provider.MultiProvider(
                                providers: [
                                  provider.Provider.value(
                                      value: navCallbackStore),
                                  provider.Provider(
                                    create: (context) {
                                      return storeBuilder.create(
                                        context: context,
                                        track: args?.track,
                                      );
                                    },
                                  ),
                                ],
                                child: AddOrEditRecordTrackPage(),
                              );
                            },
                          ),
                          GoRoute(
                            parentNavigatorKey: rootNavigatorKey,
                            path: AppPaths.profile.myTracksPath.details
                                .editMemoryPath.goRoute,
                            builder: (context, state) {
                              final storeBuilder = ref
                                  .watch(addOrEditMemoryStoreBuilderProvider);

                              final addOrEditMemoryArgsConverter = ref
                                  .watch(addOrEditMemoryArgsConverterProvider);

                              final photoViewerConverter =
                                  ref.watch(photoViewerConverterProvider);

                              final addOrEditMemoryPath = AppPaths
                                  .profile.myTracksPath.details.editMemoryPath;

                              final photoViewerPath =
                                  addOrEditMemoryPath.photoViewerPath;

                              final args = addOrEditMemoryPath.arguments(
                                parameters: state.uri.queryParameters,
                                converter: addOrEditMemoryArgsConverter,
                              );

                              final navCallbackStore = NavCallbackStoreBuilder
                                  .createAddOrEditMemoryNavCallbackStore(
                                context: context,
                                photoViewerPath: photoViewerPath,
                                photoViewerConverter: photoViewerConverter,
                              );

                              return provider.MultiProvider(
                                providers: [
                                  provider.Provider.value(
                                      value: navCallbackStore),
                                  provider.Provider(
                                    create: (context) {
                                      return storeBuilder.create(
                                        context,
                                        position: args?.position,
                                        memory: args?.memory,
                                        track: args?.track,
                                      );
                                    },
                                  ),
                                ],
                                child: AddOrEditMemoryPage(),
                              );
                            },
                            routes: [
                              GoRoute(
                                parentNavigatorKey: rootNavigatorKey,
                                path: AppPaths.profile.myTracksPath.details
                                    .editMemoryPath.photoViewerPath.goRoute,
                                builder: (context, state) {
                                  final storeBuilder = ref
                                      .watch(photoViewerStoreBuilderProvider);

                                  final photoViewerConverter =
                                      ref.watch(photoViewerConverterProvider);

                                  final photoViewerPath = AppPaths
                                      .profile
                                      .myTracksPath
                                      .details
                                      .editMemoryPath
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
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  GoRoute(
                    path: AppPaths.profile.myFavouriteTracks.goRoute,
                    builder: (context, state) {
                      final detailsArgsConverter =
                          ref.watch(detailsArgsConverterProvider);

                      final trackDetailsPath =
                          AppPaths.profile.myFavouriteTracks.details;

                      final navCallbackStore = NavCallbackStoreBuilder
                          .createMyFavouriteTracksNavCallbackStore(
                        context: context,
                        trackDetailsPath: trackDetailsPath,
                        detailsArgsConverter: detailsArgsConverter,
                      );

                      return provider.Provider.value(
                        value: navCallbackStore,
                        child: MyFavouriteTracksPage(),
                      );
                    },
                    routes: [
                      GoRoute(
                        parentNavigatorKey: rootNavigatorKey,
                        path:
                            AppPaths.profile.myFavouriteTracks.details.goRoute,
                        builder: (context, state) {
                          final photoViewerConverter =
                              ref.watch(photoViewerConverterProvider);

                          final recordTrackConverter =
                              ref.watch(recordTrackArgsConverterProvider);

                          final addOrEditRecordTrackArgsConverter =
                              ref.watch(addOrEditRecordTrackConverterProvider);

                          final addOrEditMemoryArgsConverter =
                              ref.watch(addOrEditMemoryArgsConverterProvider);

                          final detailsArgsConverter =
                              ref.watch(detailsArgsConverterProvider);

                          final detailsPath =
                              AppPaths.profile.myFavouriteTracks.details;
                          final photoViewerPath = detailsPath.photoViewer;
                          final trackingPath = detailsPath.tracking;

                          final _storeBuilder = ref.watch(detailsStoreProvider);

                          final args = detailsPath.arguments(
                            parameters: state.uri.queryParameters,
                            detailsConverter: detailsArgsConverter,
                          );

                          final navCallbackStore = NavCallbackStoreBuilder
                              .createDetailsNavCallbackStore(
                            context: context,
                            photoViewerPath: photoViewerPath,
                            trackingPath: trackingPath,
                            addOrEditRecordTrackArgsConverter:
                                addOrEditRecordTrackArgsConverter,
                            photoViewerConverter: photoViewerConverter,
                            recordTrackConverter: recordTrackConverter,
                            addOrEditMemoryArgsConverter:
                                addOrEditMemoryArgsConverter,
                            mode: args.mode,
                          );

                          return provider.MultiProvider(
                            providers: [
                              provider.Provider.value(value: navCallbackStore),
                              provider.Provider(
                                create: (context) {
                                  return _storeBuilder.create(
                                    context: context,
                                    canDelete: false,
                                    closeWhenRemoveFromFavourites: true,
                                    id: args.id,
                                    mode: args.mode,
                                  );
                                },
                                dispose: (context, store) => store.dispose(),
                              ),
                            ],
                            child: TrackDetailsPage(),
                          );
                        },
                        routes: [
                          GoRoute(
                            parentNavigatorKey: rootNavigatorKey,
                            path: AppPaths.profile.myFavouriteTracks.details
                                .photoViewer.goRoute,
                            builder: (context, state) {
                              final storeBuilder =
                                  ref.watch(photoViewerStoreBuilderProvider);

                              final photoViewerConverter =
                                  ref.watch(photoViewerConverterProvider);

                              final photoViewerPath = AppPaths.profile
                                  .myFavouriteTracks.details.photoViewer;

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
                            },
                          ),
                          GoRoute(
                            parentNavigatorKey: rootNavigatorKey,
                            path: AppPaths.profile.myFavouriteTracks.details
                                .tracking.goRoute,
                            builder: (context, state) {
                              final storeBuilder =
                                  ref.watch(recordTrackStoreBuilderProvider);

                              final addOrEditMemoryArgsConverter = ref
                                  .watch(addOrEditMemoryArgsConverterProvider);

                              final photoViewerConverter =
                                  ref.watch(photoViewerConverterProvider);

                              final addOrEditRecordTrackConverter = ref
                                  .watch(addOrEditRecordTrackConverterProvider);

                              final recordTrackArgsConverter =
                                  ref.watch(recordTrackArgsConverterProvider);

                              final trackingPath = AppPaths
                                  .profile.myFavouriteTracks.details.tracking;
                              final addOrEditMemoryPath =
                                  trackingPath.addOrEditMemoryPath;
                              final addOrEditRecordTrackPath =
                                  trackingPath.addOrEditRecordTrack;
                              final photoViewerPath = trackingPath.photoViewer;

                              final navCallbackStore = NavCallbackStoreBuilder
                                  .createRecordTrackNavCallbackStore(
                                context: context,
                                addOrEditMemoryPath: addOrEditMemoryPath,
                                addOrEditRecordTrackPath:
                                    addOrEditRecordTrackPath,
                                photoViewerPath: photoViewerPath,
                                photoViewerConverter: photoViewerConverter,
                                addOrEditRecordTrackConverter:
                                    addOrEditRecordTrackConverter,
                                addOrEditMemoryArgsConverter:
                                    addOrEditMemoryArgsConverter,
                              );

                              final args = trackingPath.arguments(
                                parameters: state.uri.queryParameters,
                                converter: recordTrackArgsConverter,
                              );

                              return provider.MultiProvider(
                                providers: [
                                  provider.Provider(
                                    create: (context) {
                                      return storeBuilder.create(
                                        context: context,
                                        track: args?.track,
                                        mode: args?.mode,
                                      );
                                    },
                                  ),
                                  provider.Provider.value(
                                      value: navCallbackStore),
                                ],
                                child: RecordTrackPage(),
                              );
                            },
                            routes: [
                              GoRoute(
                                parentNavigatorKey: rootNavigatorKey,
                                path: AppPaths.profile.myFavouriteTracks.details
                                    .tracking.addOrEditMemoryPath.goRoute,
                                builder: (context, state) {
                                  final storeBuilder = ref.watch(
                                      addOrEditMemoryStoreBuilderProvider);

                                  final addOrEditMemoryArgsConverter =
                                      ref.watch(
                                          addOrEditMemoryArgsConverterProvider);

                                  final photoViewerConverter =
                                      ref.watch(photoViewerConverterProvider);

                                  final trackingPath = AppPaths.profile
                                      .myFavouriteTracks.details.tracking;

                                  final addOrEditMemoryPath =
                                      trackingPath.addOrEditMemoryPath;

                                  final photoViewerPathPath =
                                      addOrEditMemoryPath.photoViewerPath;

                                  final args = addOrEditMemoryPath.arguments(
                                    parameters: state.uri.queryParameters,
                                    converter: addOrEditMemoryArgsConverter,
                                  );

                                  final navCallbackStore =
                                      NavCallbackStoreBuilder
                                          .createAddOrEditMemoryNavCallbackStore(
                                    context: context,
                                    photoViewerPath: photoViewerPathPath,
                                    photoViewerConverter: photoViewerConverter,
                                  );

                                  return provider.MultiProvider(
                                    providers: [
                                      provider.Provider.value(
                                          value: navCallbackStore),
                                      provider.Provider(
                                        create: (context) {
                                          return storeBuilder.create(
                                            context,
                                            position: args?.position,
                                            memory: args?.memory,
                                            track: args?.track,
                                          );
                                        },
                                      ),
                                    ],
                                    child: AddOrEditMemoryPage(),
                                  );
                                },
                                routes: [
                                  GoRoute(
                                    parentNavigatorKey: rootNavigatorKey,
                                    path: AppPaths
                                        .profile
                                        .myFavouriteTracks
                                        .details
                                        .tracking
                                        .addOrEditMemoryPath
                                        .photoViewerPath
                                        .goRoute,
                                    builder: (context, state) {
                                      final storeBuilder = ref.watch(
                                          photoViewerStoreBuilderProvider);

                                      final photoViewerConverter = ref
                                          .watch(photoViewerConverterProvider);

                                      final trackingPath = AppPaths.profile
                                          .myFavouriteTracks.details.tracking;
                                      final photoViewerPath = trackingPath
                                          .addOrEditMemoryPath.photoViewerPath;

                                      final args = photoViewerPath.arguments(
                                        queryParameters:
                                            state.uri.queryParameters,
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
                                    },
                                  ),
                                ],
                              ),
                              GoRoute(
                                parentNavigatorKey: rootNavigatorKey,
                                path: AppPaths.profile.myFavouriteTracks.details
                                    .tracking.addOrEditRecordTrack.goRoute,
                                builder: (context, state) {
                                  final navCallbackStore = NavCallbackStoreBuilder
                                      .createAddOrEditRecordTrackNavCallbackStore(
                                          context: context);

                                  final addOrEditRecordTrackConverter =
                                      ref.watch(
                                          addOrEditRecordTrackConverterProvider);

                                  final args = addOrEditRecordTrackConverter
                                      .fromJson(state.uri.queryParameters);

                                  final storeBuilder = ref.watch(
                                      addOrEditRecordStoreBuilderProvider);

                                  return provider.MultiProvider(
                                    providers: [
                                      provider.Provider.value(
                                          value: navCallbackStore),
                                      provider.Provider(
                                        create: (context) {
                                          return storeBuilder.create(
                                            context: context,
                                            track: args?.track,
                                          );
                                        },
                                      ),
                                    ],
                                    child: AddOrEditRecordTrackPage(),
                                  );
                                },
                              ),
                              GoRoute(
                                parentNavigatorKey: rootNavigatorKey,
                                path: AppPaths.profile.myFavouriteTracks.details
                                    .tracking.photoViewer.goRoute,
                                builder: (context, state) {
                                  final storeBuilder = ref
                                      .watch(photoViewerStoreBuilderProvider);
                                  final photoViewerConverter =
                                      ref.watch(photoViewerConverterProvider);

                                  final trackingPath = AppPaths.profile
                                      .myFavouriteTracks.details.tracking;
                                  final photoViewerPath =
                                      trackingPath.photoViewer;

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
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
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
          final storeBuilder = ref.watch(loginStoreBuilderProvider);

          final converter = ref.watch(forgotPasswordArgsConverterProvider);

          final loginPath = AppPaths.login;
          final registerPath = loginPath.register;
          final forgotPasswordPath = loginPath.forgotPassword;

          final navCallbackStore =
              NavCallbackStoreBuilder.createLoginNavCallbackStore(
            context: context,
            registerPath: registerPath,
            forgotPasswordPath: forgotPasswordPath,
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
        routes: [
          GoRoute(
            parentNavigatorKey: rootNavigatorKey,
            path: AppPaths.login.register.goRoute,
            builder: (context, state) {
              final navCallbackStore =
                  NavCallbackStoreBuilder.createRegisterNavCallbackStore(
                      context);

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
                    create: (context) {
                      return forgotPasswordStoreBuilder.create(
                        args?.email,
                      );
                    },
                  ),
                ],
                child: ForgotPasswordPage(),
              );
            },
          ),
        ],
      )
    ],
  );
}
