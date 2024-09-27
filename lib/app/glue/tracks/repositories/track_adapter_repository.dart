import 'package:dartz/dartz.dart';
import 'package:uniqtrack/app/glue/tracks/mappers/memory_mapper.dart';
import 'package:uniqtrack/app/glue/tracks/mappers/position_mapper.dart';
import 'package:uniqtrack/app/glue/tracks/mappers/track_mapper.dart';
import 'package:uniqtrack/core/common/app_location_handler/app_location_handler.dart';
import 'package:uniqtrack/core/common/app_location_handler/entities/app_location_data_settings.dart';
import 'package:uniqtrack/core/common/app_location_handler/entities/app_location_permission_result.dart';
import 'package:uniqtrack/core/common/app_location_handler/entities/app_location_settings.dart';
import 'package:uniqtrack/core/common/exceptions/exceptions.dart';
import 'package:uniqtrack/data/accounts/accounts_data_repository.dart';
import 'package:uniqtrack/data/tracks/tracks_data_repository.dart';
import 'package:uniqtrack/features/tracks/domain/entities/entities.dart';
import 'package:uniqtrack/features/tracks/domain/track_repository.dart';

class TrackAdapterRepository implements TrackRepository {
  final AppLocationHandler _appLocationHandler;
  final PositionMapper _positionMapper;
  final TrackMapper _trackMapper;
  final MemoryMapper _memoryMapper;

  final TracksDataRepository _tracksDataRepository;

  const TrackAdapterRepository({
    required AppLocationHandler appLocationHandler,
    required PositionMapper positionMapper,
    required TrackMapper trackMapper,
    required MemoryMapper memoryMapper,
    required AccountsDataRepository accountsDataRepository,
    required TracksDataRepository tracksDataRepository,
  })  : _appLocationHandler = appLocationHandler,
        _positionMapper = positionMapper,
        _trackMapper = trackMapper,
        _memoryMapper = memoryMapper,
        _tracksDataRepository = tracksDataRepository;

  @override
  Future<Either<AppError, void>> addTrack(Track track) async {
    final trackModel = _trackMapper.toTrackModel(track);

    final addRecordTrackDataResult =
        await _tracksDataRepository.addTrack(trackModel);

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

    final addMyRecordTrackDataResult =
        await _tracksDataRepository.addMyTrack(trackModel, trackId);

    final addMyRecordTrackDataFailureResult = addMyRecordTrackDataResult.fold(
      (value) => value,
      (_) => null,
    );

    if (addMyRecordTrackDataFailureResult != null) {
      return Left(addMyRecordTrackDataFailureResult);
    }

    final deleteAllTracksResult =
        await _tracksDataRepository.removeLastTracks();

    final deleteAllTracksResultFailureResult = deleteAllTracksResult.fold(
      (value) => value,
      (_) => null,
    );

    if (deleteAllTracksResultFailureResult != null) {
      return Left(deleteAllTracksResultFailureResult);
    }

    return Right(addMyRecordTrackDataFailureResult);
  }

  @override
  Future<Either<AppError, int>> addLastTrack(Track track) {
    final trackModel = _trackMapper.toTrackModel(track);
    return _tracksDataRepository.addLastTrack(trackModel);
  }

  @override
  Future<Either<AppError, void>> addFavouriteTrack(Track track) {
    final trackModel = _trackMapper.toTrackModel(track);

    return _tracksDataRepository.addFavouriteTrack(trackModel);
  }

  @override
  Future<(Stream<Position>, AppLocationDataSettings?)> watchPositions(AppLocationSettings settings) async {
    final data = await _appLocationHandler.watchPositions(settings);
    final stream = data.$1.map((event) {
      return _positionMapper.toPosition(event);
    });

    return (stream, data.$2);
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
  Stream<Track?> watchTrack(String id) {
    return _tracksDataRepository.watchTrack(id).map((item) {
      if (item == null) return null;
      final track = _trackMapper.toTrack(item);
      return track;
    });
  }

  @override
  Stream<Track?> watchFavouriteTrack(String id) {
    return _tracksDataRepository.watchFavouriteTrack(id).map(
      (item) {
        if (item == null) return null;
        return _trackMapper.toTrack(item);
      },
    );
  }

  @override
  Stream<List<Track>> watchFavouriteTracks() {
    return _tracksDataRepository.watchFavouriteTracks().map((list) {
      return list.map((item) {
        return _trackMapper.toTrack(item);
      }).toList();
    });
  }

  @override
  Stream<Track?> watchMyTrack(String id) {
    return _tracksDataRepository.watchMyTrack(id).map(
      (item) {
        if (item == null) return null;
        return _trackMapper.toTrack(item);
      },
    );
  }

  @override
  Stream<List<Track>> watchUserTracks() {
    return _tracksDataRepository.watchMyTracks().map((list) {
      return list.map((item) {
        return _trackMapper.toTrack(item);
      }).toList();
    });
  }

  @override
  Future<Either<AppError, void>> updateMemory(
      Track track, Memory memory) async {
    final trackModel = _trackMapper.toTrackModel(track);
    final memoryModel = _memoryMapper.toMemoryModel(memory);

    final updateMemoryResult =
        await _tracksDataRepository.updateMemory(trackModel, memoryModel);

    final updateMemoryFailureResult = updateMemoryResult.fold(
      (error) => error,
      (_) => null,
    );

    if (updateMemoryFailureResult != null) {
      return Left(updateMemoryFailureResult);
    }

    final updateMyTrackMemoryResult =
        await _tracksDataRepository.updateMyTrackMemory(
      trackModel,
      memoryModel,
    );

    final updateMyTrackMemoryFailureResult = updateMyTrackMemoryResult.fold(
      (error) => error,
      (_) => null,
    );

    if (updateMyTrackMemoryFailureResult != null) {
      return Left(updateMyTrackMemoryFailureResult);
    }

    final updateFavouriteTracksMemoryResult =
        await _tracksDataRepository.updateFavouriteTracksMemories(
      trackModel,
      memoryModel,
    );

    final updateFavouriteTrackMemoriesFailureResult =
        updateFavouriteTracksMemoryResult.fold(
      (error) => error,
      (_) => null,
    );

    if (updateFavouriteTrackMemoriesFailureResult != null) {
      return Left(updateFavouriteTrackMemoriesFailureResult);
    }

    return Right(updateFavouriteTrackMemoriesFailureResult);
  }

  @override
  Future<Either<AppError, void>> updateTrack(Track track) async {
    final trackModel = _trackMapper.toTrackModel(track);

    final updateTrackResult =
        await _tracksDataRepository.updateTrack(trackModel);

    final updateTrackError = updateTrackResult.fold(
      (error) => error,
      (_) => null,
    );

    if (updateTrackError != null) {
      return Left(updateTrackError);
    }

    final updateMyTrackResult =
        await _tracksDataRepository.updateMyTrack(trackModel);

    final updateMyTrackError = updateMyTrackResult.fold(
      (error) => error,
      (_) => null,
    );

    if (updateMyTrackError != null) {
      return Left(updateMyTrackError);
    }

    final updateFavouriteTracksResult =
        await _tracksDataRepository.updateFavouriteTracks(trackModel);

    final updateFavouriteTracksError = updateFavouriteTracksResult.fold(
      (error) => error,
      (_) => null,
    );

    if (updateFavouriteTracksError != null) {
      return Left(updateFavouriteTracksError);
    }

    return Right(updateFavouriteTracksError);
  }

  @override
  Future<Either<AppError, void>> removeFavouriteTrack(Track track) {
    final trackModel = _trackMapper.toTrackModel(track);

    return _tracksDataRepository.removeFavouriteTrack(trackModel);
  }

  @override
  Future<Either<AppError, void>> removeMemory({
    required Track track,
    required Memory memory,
  }) async {
    final trackModel = _trackMapper.toTrackModel(track);
    final memoryModel = _memoryMapper.toMemoryModel(memory);

    final removeTrackResult =
        await _tracksDataRepository.removeMemory(trackModel, memoryModel);

    final removeTrackFailureResult = removeTrackResult.fold(
      (error) => error,
      (_) => null,
    );

    if (removeTrackFailureResult != null) {
      return Left(removeTrackFailureResult);
    }

    final removeMyTracksResult =
        await _tracksDataRepository.removeMyTrackMemory(
      trackModel,
      memoryModel,
    );

    final removeMyTracksFailureResult = removeMyTracksResult.fold(
      (error) => error,
      (_) => null,
    );

    if (removeMyTracksFailureResult != null) {
      return Left(removeMyTracksFailureResult);
    }

    return Right(removeMyTracksFailureResult);
  }

  @override
  Future<Either<AppError, void>> removeTrack(Track track) async {
    final trackModel = _trackMapper.toTrackModel(track);

    final removeTrackResult =
        await _tracksDataRepository.removeTrack(trackModel);
    final removeTrackFailureResult = removeTrackResult.fold(
      (error) => error,
      (_) => null,
    );

    if (removeTrackFailureResult != null) {
      return Left(removeTrackFailureResult);
    }

    final removeFromMyTracksResult =
        await _tracksDataRepository.removeMyTrack(trackModel);
    final removeFromMyTracksFailureResult = removeFromMyTracksResult.fold(
      (error) => error,
      (_) => null,
    );

    if (removeFromMyTracksFailureResult != null) {
      return Left(removeFromMyTracksFailureResult);
    }

    return Right(removeFromMyTracksFailureResult);
  }

  @override
  Future<Either<AppError, void>> removeLastTracks() {
    return _tracksDataRepository.removeLastTracks();
  }

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
  Future<Either<AppError, Track?>> getLastTrack() async {
    final getTrackResult = await _tracksDataRepository.getLastTrack();

    return getTrackResult.fold(
      (error) => Left(error),
      (model) {
        if (model == null) return Right(null);
        final entity = _trackMapper.toTrack(model);
        return Right(entity);
      },
    );
  }
}
