import 'package:dartz/dartz.dart';
import 'package:uniqtrack/core/common/exceptions/exceptions.dart';
import 'package:uniqtrack/data/tracks/models/models.dart';

abstract interface class TracksDataRepository {
  Future<Either<AppError, String>> saveTrack(TrackModel track);

  Future<Either<AppError, void>> removeTrack(TrackModel track);

  Stream<List<TrackModel>> listenTracks();

  Stream<TrackModel?> listenTrack(String id);

  Future<Either<AppError, int>> addTrack(TrackModel track);

  Future<Either<AppError, TrackModel?>> getTrack();

  Future<Either<AppError, void>> deleteAllTracks();
}
