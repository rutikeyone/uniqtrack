import 'package:dartz/dartz.dart';
import 'package:uniqtrack/core/common/exceptions/exceptions.dart';
import 'package:uniqtrack/data/tracks/models/models.dart';

abstract interface class TracksDataRepository {
  Future<Either<AppError, String>> addTrack(TrackModel track);

  Future<Either<AppError, void>> addMyTrack(TrackModel track, String? trackId);

  Future<Either<AppError, void>> addFavouriteTrack(TrackModel track);

  Future<Either<AppError, void>> updateTrack(TrackModel track);

  Future<Either<AppError, void>> updateMyTrack(TrackModel track);

  Future<Either<AppError, void>> updateMemory(
      TrackModel track, MemoryModel memory);

  Future<Either<AppError, void>> updateMyTrackMemory(
      TrackModel track, MemoryModel memory);

  Future<Either<AppError, void>> updateFavouriteTracks(TrackModel track);

  Future<Either<AppError, void>> updateFavouriteTracksMemories(
      TrackModel track, MemoryModel memory);

  Future<Either<AppError, void>> removeMemory(
      TrackModel track, MemoryModel memory);

  Future<Either<AppError, void>> removeTrack(TrackModel track);

  Future<Either<AppError, void>> removeFavouriteTrack(TrackModel track);

  Future<Either<AppError, void>> removeMyTrack(TrackModel track);

  Future<Either<AppError, void>> removeMyTrackMemory(
      TrackModel track, MemoryModel memory);

  Future<Either<AppError, void>> removeFavouriteTrackMemory(
      TrackModel track, MemoryModel memory);

  Stream<List<TrackModel>> watchTracks();

  Stream<TrackModel?> watchTrack(String id);

  Stream<List<TrackModel>> watchMyTracks();

  Stream<TrackModel?> watchFavouriteTrack(String id);

  Stream<TrackModel?> watchMyTrack(String id);

  Stream<List<TrackModel>> watchFavouriteTracks();

  Future<Either<AppError, int>> addLastTrack(TrackModel track);

  Future<Either<AppError, TrackModel?>> getLastTrack();

  Future<Either<AppError, void>> removeLastTracks();
}
