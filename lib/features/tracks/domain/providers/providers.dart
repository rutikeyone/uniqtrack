import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:rxdart/rxdart.dart';
import 'package:uniqtrack/app/glue/accounts/providers/providers.dart';
import 'package:uniqtrack/app/glue/tracks/providers/providers.dart';
import 'package:uniqtrack/features/accounts/domain/providers/providers.dart';
import 'package:uniqtrack/features/tracks/domain/entities/entities.dart';
import 'package:uniqtrack/features/tracks/domain/watch_track_details_use_case.dart';

part 'providers.g.dart';

@Riverpod(dependencies: [trackRepository])
Stream<List<Track>> tracks(TracksRef ref) {
  final repository = ref.watch(trackRepositoryProvider);

  return repository.watchTracks();
}

@Riverpod(dependencies: [trackRepository, favouriteTrackIdsChangesUseCase])
Stream<TrackUI> trackDetails(TrackDetailsRef ref, String id) {
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

      return TrackUI(
        track: track,
        currentUserCreator: track != null ? isCurrentUserCreator : false,
        favouriteTrack: track != null ? isFavouriteTrack : false,
        favouriteEnabled: false,
        deleteEnabled: false,
      );
    },
  );
}

@Riverpod(dependencies: [trackRepository, favouriteTrackIdsChangesUseCase])
WatchTrackDetailsUseCase watchTrackDetailsUseCase(
    WatchTrackDetailsUseCaseRef ref, String id) {
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
