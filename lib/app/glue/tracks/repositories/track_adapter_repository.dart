import 'package:dartz/dartz.dart';
import 'package:uniqtrack/app/glue/tracks/mappers/position_mapper.dart';
import 'package:uniqtrack/app/glue/tracks/mappers/track_mapper.dart';
import 'package:uniqtrack/core/common/app_location_handler/app_location_handler.dart';
import 'package:uniqtrack/core/common/app_location_handler/entities/app_location_permission_result.dart';
import 'package:uniqtrack/core/common/app_location_handler/entities/location_settings.dart';
import 'package:uniqtrack/core/common/exceptions/exceptions.dart';
import 'package:uniqtrack/data/accounts/accounts_data_repository.dart';
import 'package:uniqtrack/data/tracks/tracks_data_repository.dart';
import 'package:uniqtrack/features/tracks/domain/entities/entities.dart';
import 'package:uniqtrack/features/tracks/domain/track_repository.dart';

class TrackAdapterRepository implements TrackRepository {
  final AppLocationHandler _appLocationHandler;
  final PositionMapper _positionMapper;
  final TrackMapper _trackMapper;

  final AccountsDataRepository _accountsDataRepository;
  final TracksDataRepository _tracksDataRepository;

  const TrackAdapterRepository({
    required AppLocationHandler appLocationHandler,
    required PositionMapper positionMapper,
    required TrackMapper trackMapper,
    required AccountsDataRepository accountsDataRepository,
    required TracksDataRepository tracksDataRepository,
  })  : _appLocationHandler = appLocationHandler,
        _positionMapper = positionMapper,
        _trackMapper = trackMapper,
        _accountsDataRepository = accountsDataRepository,
        _tracksDataRepository = tracksDataRepository;

  @override
  Future<AppLocationPermissionResult> requestLocationPermission() {
    return _appLocationHandler.requestLocationPermission();
  }

  @override
  Future<Position?> getCurrentPosition() async {
    final currentPosition = await _appLocationHandler.getCurrentPosition();
    return currentPosition != null
        ? _positionMapper.toPosition(currentPosition)
        : null;
  }

  @override
  Stream<Position> watchPositions(AppLocationSettings settings) {
    return _appLocationHandler.listenPositions(settings).map(
      (event) {
        return _positionMapper.toPosition(event);
      },
    );
  }

  @override
  Future<Either<AppError, void>> saveData(Track track) async {
    final trackModel = _trackMapper.toTrackModel(track);

    final addRecordTrackDataResult =
        await _tracksDataRepository.saveTrack(trackModel);

    final addRecordTrackDataFailureResult = addRecordTrackDataResult.fold(
      (value) => value,
      (_) => null,
    );

    final trackId = addRecordTrackDataResult.fold(
      (_) => null,
      (id) => id,
    );

    if (addRecordTrackDataFailureResult != null) {
      return Left(addRecordTrackDataFailureResult);
    }

    if (trackId == null) {
      final accessCategory = AccessErrorCategory.noID();
      final error = AppError.access(category: accessCategory);
      return Left(error);
    }

    final addMyRecordTrackDataResult =
        await _accountsDataRepository.addMyRecordTrackData(
      track: trackModel,
      trackId: trackId,
    );

    final addMyRecordTrackDataFailureResult = addMyRecordTrackDataResult.fold(
      (value) => value,
      (_) => null,
    );

    if (addMyRecordTrackDataFailureResult != null) {
      return Left(addMyRecordTrackDataFailureResult);
    }

    await _tracksDataRepository.deleteAllTracks();

    return Right(addMyRecordTrackDataFailureResult);
  }

  @override
  Stream<List<Track>> watchTracks() {
    return _tracksDataRepository.watchTracks().map((list) {
      return list.map((item) {
        return _trackMapper.toTrack(item);
      }).toList();
    });
  }

  @override
  Future<Either<AppError, int>> addTrack(Track track) {
    final trackModel = _trackMapper.toTrackModel(track);
    return _tracksDataRepository.addTrack(trackModel);
  }

  @override
  Future<Either<AppError, void>> deleteAllTracks() {
    return _tracksDataRepository.deleteAllTracks();
  }

  @override
  Future<Either<AppError, Track?>> getTrack() async {
    final getTrackResult = await _tracksDataRepository.getTrack();

    return getTrackResult.fold(
      (error) => Left(error),
      (model) {
        if (model == null) return Right(null);
        final entity = _trackMapper.toTrack(model);
        return Right(entity);
      },
    );
  }

  @override
  Stream<Track?> watchTrack(String id) {
    return _tracksDataRepository.watchTrack(id).map((item) {
      if (item == null) return null;
      final track = _trackMapper.toTrack(item);
      return track;
    });
  }
}
