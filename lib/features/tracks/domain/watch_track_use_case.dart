import 'package:generic_usecase/generic_usecase.dart';
import 'package:rxdart/rxdart.dart';
import 'package:uniqtrack/features/tracks/domain/favourite_track_ids_changes_use_case.dart';
import 'package:uniqtrack/features/accounts/domain/user_changes_use_case.dart';
import 'package:uniqtrack/features/tracks/domain/entities/entities.dart';
import 'package:uniqtrack/features/tracks/domain/track_repository.dart';

class WatchTrackDetailsUseCase extends StreamUsecase<String, TrackUI?> {
  final TrackRepository _trackRepository;
  final UserChangesUseCase _userChangesUseCase;
  final FavouriteTrackIdsChangesUseCase _favouriteTrackIdsChangesUseCase;

  const WatchTrackDetailsUseCase({
    required TrackRepository trackRepository,
    required UserChangesUseCase userChangesUseCase,
    required FavouriteTrackIdsChangesUseCase favouriteTrackIdsChangesUseCase,
  })  : _trackRepository = trackRepository,
        _userChangesUseCase = userChangesUseCase,
        _favouriteTrackIdsChangesUseCase = favouriteTrackIdsChangesUseCase;

  @override
  Stream<TrackUI?> execute(String id) {
    return Rx.combineLatest3(
      _trackRepository.watchTrack(id),
      _userChangesUseCase.call(),
      _favouriteTrackIdsChangesUseCase.call(),
      (track, user, favouriteIds) {
        final creatorId = track?.creatorId;
        final trackId = track?.id;
        final userId = user?.userId;

        final currentUserCreator = track != null ? creatorId == userId : false;
        final favouriteTrack =
            track != null ? favouriteIds.contains(trackId) : false;

        if(track == null) {
          return null;
        }

        return TrackUI(
          track: track,
          currentUserCreator: currentUserCreator,
          favouriteTrack: favouriteTrack,
          canMore: user != null,
        );
      },
    );
  }
}
