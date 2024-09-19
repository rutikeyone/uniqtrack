import 'package:dartz/dartz.dart';
import 'package:uniqtrack/core/common/app_location_handler/entities/app_location_permission_result.dart';
import 'package:uniqtrack/core/common/app_location_handler/entities/location_settings.dart';
import 'package:uniqtrack/core/common/exceptions/exceptions.dart';
import 'package:uniqtrack/features/tracks/domain/entities/entities.dart';

abstract interface class TrackRepository {
  Future<AppLocationPermissionResult> requestLocationPermission();

  Future<Position?> getCurrentPosition();

  Stream<Position> listenPositions(AppLocationSettings settings);

  Future<Either<AppError, void>> saveData(Track track);

  Future<Either<AppError, int>> addTrack(Track track);

  Future<Either<AppError, Track?>> getTrack();

  Future<Either<AppError, void>> deleteAllTracks();

  Stream<List<Track>> listenTracks();

  Stream<Track?> listenTrack(String id);
}
