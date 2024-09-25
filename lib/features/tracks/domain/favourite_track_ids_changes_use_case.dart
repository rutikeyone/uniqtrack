import 'package:generic_usecase/generic_usecase.dart';
import 'package:uniqtrack/features/tracks/domain/track_repository.dart';

class FavouriteTrackIdsChangesUseCase
    extends NoParamsStreamUsecase<List<String>> {
  final TrackRepository _trackRepository;

  FavouriteTrackIdsChangesUseCase({
    required TrackRepository trackRepository,
  }) : _trackRepository = trackRepository;

  @override
  Stream<List<String>> execute() {
    return _trackRepository.watchFavouriteTracks().map((list) {
      return list.map((item) => item.trackId).nonNulls.toList();
    });
  }
}
