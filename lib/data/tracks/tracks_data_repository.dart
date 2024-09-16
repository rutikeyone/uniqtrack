import 'package:dartz/dartz.dart';
import 'package:uniqtrack/core/common/exceptions/exceptions.dart';
import 'package:uniqtrack/data/tracks/models/models.dart';

abstract interface class TracksDataRepository {
  Future<Either<AppError, void>> addRecordTrackData(TrackModel track);

  Stream<List<TrackModel>> listenTracks();
}
