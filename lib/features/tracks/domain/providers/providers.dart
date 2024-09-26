import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:rxdart/rxdart.dart';
import 'package:uniqtrack/app/glue/accounts/providers/providers.dart';
import 'package:uniqtrack/app/glue/tracks/providers/providers.dart';
import 'package:uniqtrack/features/tracks/domain/add_favourite_track_use_case.dart';
import 'package:uniqtrack/features/tracks/domain/entities/entities.dart';
import 'package:uniqtrack/features/tracks/domain/favourite_track_ids_changes_use_case.dart';
import 'package:uniqtrack/features/tracks/domain/remove_favourite_track_use_case.dart';
import 'package:uniqtrack/features/tracks/domain/remove_memory_use_case.dart';
import 'package:uniqtrack/features/tracks/domain/remove_track_use_case.dart';
import 'package:uniqtrack/features/tracks/domain/update_memory_use_case.dart';
import 'package:uniqtrack/features/tracks/domain/update_track_use_case.dart';
import 'package:uniqtrack/features/tracks/domain/watch_favourite_track_use_case.dart';
import 'package:uniqtrack/features/tracks/domain/watch_my_track_use_case.dart';
import 'package:uniqtrack/features/tracks/domain/watch_track_use_case.dart';

part 'providers.g.dart';

@Riverpod(dependencies: [trackRepository])
Stream<List<TrackUI>> tracks(TracksRef ref) {
  final tracksRepository = ref.watch(trackRepositoryProvider);
  final authStateChangesUseCase = ref.watch(authStateChangesUseCaseProvider);

  return Rx.combineLatest2(
    tracksRepository.watchTracks(),
    authStateChangesUseCase.call(),
    (tracks, state) => tracks.map((item) {
      return TrackUI(track: item, canMore: state.isAuthenticated);
    }).toList(),
  );
}

@Riverpod(dependencies: [trackRepository, favouriteTrackIdsChangesUseCase])
Stream<TrackUI?> trackDetails(TrackDetailsRef ref, String id) {
  final trackRepository = ref.watch(trackRepositoryProvider);
  final userChangesUseCase = ref.watch(userChangesUseCaseProvider);
  final favouriteTrackIdsChangesUseCase =
      ref.watch(favouriteTrackIdsChangesUseCaseProvider);

  return Rx.combineLatest3(
    trackRepository.watchTrack(id),
    userChangesUseCase.call(),
    favouriteTrackIdsChangesUseCase.call(),
    (track, user, favouriteIds) {
      final creatorId = track?.creatorId;
      final trackId = track?.id;
      final userId = user?.userId;

      final isCurrentUserCreator = creatorId == userId;
      final isFavouriteTrack = favouriteIds.contains(trackId);

      if (track == null) {
        return null;
      }

      return TrackUI(
        track: track,
        currentUserCreator: isCurrentUserCreator,
        favouriteTrack: isFavouriteTrack,
        favouriteEnabled: false,
        deleteEnabled: false,
      );
    },
  );
}

@Riverpod(dependencies: [trackRepository, favouriteTrackIdsChangesUseCase])
Stream<List<TrackUI>> userFavouriteTracks(UserFavouriteTracksRef ref) {
  final trackRepository = ref.watch(trackRepositoryProvider);
  final userChangesUseCase = ref.watch(userChangesUseCaseProvider);
  final favouriteTrackIdsChangesUseCase =
      ref.watch(favouriteTrackIdsChangesUseCaseProvider);

  return Rx.combineLatest3(
    trackRepository.watchFavouriteTracks(),
    userChangesUseCase.call(),
    favouriteTrackIdsChangesUseCase.call(),
    (tracks, user, favouriteIds) {
      return tracks.map(
        (item) {
          final creatorId = item.creatorId;
          final trackId = item.trackId;
          final userId = user?.userId;

          final isCurrentUserCreator = creatorId == userId;
          final isFavouriteTrack = favouriteIds.contains(trackId);

          return TrackUI(
            track: item,
            currentUserCreator: isCurrentUserCreator,
            favouriteTrack: isFavouriteTrack,
            favouriteEnabled: false,
            deleteEnabled: false,
            canMore: user != null,
          );
        },
      ).toList();
    },
  );
}

@Riverpod(dependencies: [trackRepository])
Stream<List<TrackUI>> userTracks(UserTracksRef ref) {
  final tracksRepository = ref.watch(trackRepositoryProvider);
  final authStateChangesUseCase = ref.watch(authStateChangesUseCaseProvider);

  return Rx.combineLatest2(
    tracksRepository.watchUserTracks(),
    authStateChangesUseCase.call(),
        (tracks, state) => tracks.map((item) {
      return TrackUI(track: item, canMore: state.isAuthenticated);
    }).toList(),
  );
}

@Riverpod(dependencies: [trackRepository, favouriteTrackIdsChangesUseCase])
WatchTrackDetailsUseCase watchTrackDetailsUseCase(
    WatchTrackDetailsUseCaseRef ref) {
  final trackRepository = ref.watch(trackRepositoryProvider);
  final userChangesUseCase = ref.watch(userChangesUseCaseProvider);
  final favouriteTrackIdsChangesUseCase =
      ref.watch(favouriteTrackIdsChangesUseCaseProvider);

  return WatchTrackDetailsUseCase(
    trackRepository: trackRepository,
    userChangesUseCase: userChangesUseCase,
    favouriteTrackIdsChangesUseCase: favouriteTrackIdsChangesUseCase,
  );
}

@Riverpod(dependencies: [favouriteTrackIdsChangesUseCase, trackRepository])
WatchMyTrackUseCase watchMyTrackUseCase(WatchMyTrackUseCaseRef ref) {
  final userChangesUseCase = ref.watch(userChangesUseCaseProvider);
  final favouriteTrackIdsChangesUseCase =
      ref.watch(favouriteTrackIdsChangesUseCaseProvider);
  final trackRepository = ref.watch(trackRepositoryProvider);

  return WatchMyTrackUseCase(
    trackRepository: trackRepository,
    userChangesUseCase: userChangesUseCase,
    favouriteTrackIdsChangesUseCase: favouriteTrackIdsChangesUseCase,
  );
}

@Riverpod(dependencies: [trackRepository])
AddFavouriteTrackUseCase addToFavouriteTracksUseCase(
    AddToFavouriteTracksUseCaseRef ref) {
  final trackRepository = ref.watch(trackRepositoryProvider);

  return AddFavouriteTrackUseCase(trackRepository: trackRepository);
}

@Riverpod(dependencies: [trackRepository])
FavouriteTrackIdsChangesUseCase favouriteTrackIdsChangesUseCase(
    FavouriteTrackIdsChangesUseCaseRef ref) {
  final trackRepository = ref.watch(trackRepositoryProvider);

  return FavouriteTrackIdsChangesUseCase(trackRepository: trackRepository);
}

@Riverpod(dependencies: [trackRepository])
RemoveFavouriteTracksUseCase removeFromFavouriteTracksUseCase(
    RemoveFromFavouriteTracksUseCaseRef ref) {
  final trackRepository = ref.watch(trackRepositoryProvider);

  return RemoveFavouriteTracksUseCase(trackRepository: trackRepository);
}

@Riverpod(dependencies: [trackRepository])
RemoveMemoryUseCase removeMemoryUseCase(RemoveMemoryUseCaseRef ref) {
  final trackRepository = ref.watch(trackRepositoryProvider);

  return RemoveMemoryUseCase(trackRepository: trackRepository);
}

@Riverpod(dependencies: [trackRepository])
RemoveTrackUseCase removeTrackUseCase(RemoveTrackUseCaseRef ref) {
  final trackRepository = ref.watch(trackRepositoryProvider);

  return RemoveTrackUseCase(trackRepository: trackRepository);
}

@Riverpod(dependencies: [favouriteTrackIdsChangesUseCase, trackRepository])
WatchFavouriteTrackUseCase watchFavouriteTrackDetailsUseCase(
    WatchFavouriteTrackDetailsUseCaseRef ref) {
  final userChangesUseCase = ref.watch(userChangesUseCaseProvider);
  final favouriteTrackIdsChangesUseCase =
      ref.watch(favouriteTrackIdsChangesUseCaseProvider);
  final trackRepository = ref.watch(trackRepositoryProvider);

  return WatchFavouriteTrackUseCase(
    trackRepository: trackRepository,
    userChangesUseCase: userChangesUseCase,
    favouriteTrackIdsChangesUseCase: favouriteTrackIdsChangesUseCase,
  );
}

@Riverpod(dependencies: [trackRepository])
UpdateTrackUseCase updateTrackUseCase(UpdateTrackUseCaseRef ref) {
  final trackRepository = ref.watch(trackRepositoryProvider);

  return UpdateTrackUseCase(trackRepository: trackRepository);
}

@Riverpod(dependencies: [trackRepository])
UpdateMemoryUseCase updateMemoryUseCase(UpdateMemoryUseCaseRef ref) {
  final trackRepository = ref.watch(trackRepositoryProvider);

  return UpdateMemoryUseCase(trackRepository: trackRepository);
}
