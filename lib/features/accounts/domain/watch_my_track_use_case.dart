import 'package:generic_usecase/generic_usecase.dart';
import 'package:rxdart/rxdart.dart';
import 'package:uniqtrack/features/accounts/domain/accounts_repository.dart';
import 'package:uniqtrack/features/accounts/domain/favourite_track_ids_changes_use_case.dart';
import 'package:uniqtrack/features/tracks/domain/entities/entities.dart';

import 'user_changes_use_case.dart';

class WatchMyTrackUseCase extends StreamUsecase<String, TrackUI> {
  final AccountsRepository _accountsRepository;
  final UserChangesUseCase _userChangesUseCase;
  final FavouriteTrackIdsChangesUseCase _favouriteTrackIdsChangesUseCase;

  const WatchMyTrackUseCase({
    required AccountsRepository accountRepository,
    required UserChangesUseCase userChangesUseCase,
    required FavouriteTrackIdsChangesUseCase favouriteTrackIdsChangesUseCase,
  })  : _accountsRepository = accountRepository,
        _userChangesUseCase = userChangesUseCase,
        _favouriteTrackIdsChangesUseCase = favouriteTrackIdsChangesUseCase;

  @override
  Stream<TrackUI> execute(String id) {
    return Rx.combineLatest3(
      _accountsRepository.watchMyTrack(id),
      _userChangesUseCase.call(),
      _favouriteTrackIdsChangesUseCase.call(),
      (track, user, favouriteIds) {
        final creatorId = track?.creatorId;
        final trackId = track?.trackId;
        final userId = user?.userId;

        final currentUserCreator = track != null ? creatorId == userId : false;
        final favouriteTrack =
            track != null ? favouriteIds.contains(trackId) : false;

        return TrackUI(
          track: track,
          currentUserCreator: currentUserCreator,
          favouriteTrack: favouriteTrack,
        );
      },
    );
  }
}
