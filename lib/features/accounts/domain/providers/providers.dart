import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:rxdart/rxdart.dart';
import 'package:uniqtrack/app/glue/accounts/providers/providers.dart';
import 'package:uniqtrack/features/accounts/domain/add_to_favourite_tracks_use_case.dart';
import 'package:uniqtrack/features/accounts/domain/favourite_track_ids_changes_use_case.dart';
import 'package:uniqtrack/features/accounts/domain/remove_from_favourite_tracks_use_case.dart';
import 'package:uniqtrack/features/accounts/domain/remove_track_use_case.dart';
import 'package:uniqtrack/features/accounts/domain/sign_out_use_case.dart';
import 'package:uniqtrack/features/tracks/domain/entities/entities.dart';

part 'providers.g.dart';

@Riverpod(dependencies: [accountsRepository])
Stream<List<Track>> userTracks(UserTracksRef ref) {
  final accountsRepository = ref.watch(accountsRepositoryProvider);

  return accountsRepository.listenUserTracks();
}

@Riverpod(dependencies: [accountsRepository])
AddToFavouriteTracksUseCase addToFavouriteTracksUseCase(
    AddToFavouriteTracksUseCaseRef ref) {
  final accountsRepository = ref.watch(accountsRepositoryProvider);

  return AddToFavouriteTracksUseCase(accountsRepository: accountsRepository);
}

@Riverpod(dependencies: [accountsRepository])
FavouriteTrackIdsChangesUseCase favouriteTrackIdsChangesUseCase(
    FavouriteTrackIdsChangesUseCaseRef ref) {
  final accountsRepository = ref.watch(accountsRepositoryProvider);

  return FavouriteTrackIdsChangesUseCase(
    accountsRepository: accountsRepository,
  );
}

@Riverpod(dependencies: [accountsRepository])
SignOutUseCase signOutUseCase(SignOutUseCaseRef ref) {
  final accountsRepository = ref.watch(accountsRepositoryProvider);

  return SignOutUseCase(accountsRepository: accountsRepository);
}

@Riverpod(dependencies: [accountsRepository])
RemoveFromFavouriteTracksUseCase removeFromFavouriteTracksUseCase(
    RemoveFromFavouriteTracksUseCaseRef ref) {
  final accountsRepository = ref.watch(accountsRepositoryProvider);

  return RemoveFromFavouriteTracksUseCase(
      accountsRepository: accountsRepository);
}

@Riverpod(dependencies: [accountsRepository])
RemoveTrackUseCase removeTrackUseCase(RemoveTrackUseCaseRef ref) {
  final accountsRepository = ref.watch(accountsRepositoryProvider);

  return RemoveTrackUseCase(accountsRepository: accountsRepository);
}

@Riverpod(dependencies: [accountsRepository, favouriteTrackIdsChangesUseCase])
Stream<List<TrackUI>> userFavouriteTracks(UserFavouriteTracksRef ref) {
  final accountsRepository = ref.watch(accountsRepositoryProvider);
  final userChangesUseCase = ref.watch(userChangesUseCaseProvider);
  final favouriteTrackIdsChangesUseCase =
      ref.watch(favouriteTrackIdsChangesUseCaseProvider);

  return Rx.combineLatest3(
    accountsRepository.listenUserFavouriteTracks(),
    userChangesUseCase.call(),
    favouriteTrackIdsChangesUseCase.call(),
    (tracks, user, favouriteIds) {
      return tracks.map(
        (item) {
          final creatorId = item.creatorId;
          final trackId = item.id;
          final userId = user?.userId;

          final isCurrentUserCreator = creatorId == userId;
          final isFavouriteTrack = favouriteIds.contains(trackId);

          return TrackUI(
            track: item,
            isCurrentUserCreator: isCurrentUserCreator,
            isFavouriteTrack: isFavouriteTrack,
          );
        },
      ).toList();
    },
  );
}
