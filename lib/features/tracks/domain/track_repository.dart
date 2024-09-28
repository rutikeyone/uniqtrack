import 'package:dartz/dartz.dart';
import 'package:uniqtrack/core/common/app_location_handler/entities/app_location_data_settings.dart';
import 'package:uniqtrack/core/common/app_location_handler/entities/app_location_permission_result.dart';
import 'package:uniqtrack/core/common/app_location_handler/entities/app_location_settings.dart';
import 'package:uniqtrack/core/common/exceptions/exceptions.dart';
import 'package:uniqtrack/features/tracks/domain/entities/entities.dart';

abstract interface class TrackRepository {
  Future<Either<AppError, void>> addTrack(Track track);

  Future<Either<AppError, void>> addFavouriteTrack(Track track);

  Future<Either<AppError, void>> updateTrack(Track track);

  Future<Either<AppError, void>> updateMemory(Track track, Memory memory);

  Future<Either<AppError, void>> removeFavouriteTrack(Track track);

  Future<Either<AppError, void>> removeTrack(Track track);

  Future<Either<AppError, void>> removeMemory({
    required Track track,
    required Memory memory,
  });

  Future<(Stream<Position>, AppLocationDataSettings?)> watchPositions(AppLocationSettings settings);

  Stream<List<Track>> watchTracks();

  Stream<Track?> watchTrack(String id);

  Stream<List<Track>> watchUserTracks();

  Stream<List<Track>> watchFavouriteTracks();

  Stream<Track?> watchFavouriteTrack(String id);

  Stream<Track?> watchMyTrack(String id);

  Future<AppLocationPermissionResult> requestLocationPermission();

  Future<Position?> getCurrentPosition();
}
