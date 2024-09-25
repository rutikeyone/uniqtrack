import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:generic_usecase/generic_usecase.dart';
import 'package:uniqtrack/core/common/exceptions/exceptions.dart';
import 'package:uniqtrack/features/tracks/domain/entities/entities.dart';
import 'package:uniqtrack/features/tracks/domain/track_repository.dart';

class UpdateTrackUseCase extends Usecase<Track, Either<AppError, void>> {
  final TrackRepository _trackRepository;

  const UpdateTrackUseCase({
    required TrackRepository trackRepository,
  }) : _trackRepository = trackRepository;

  @override
  Future<Either<AppError, void>> execute(Track track) {
    return _trackRepository.updateTrack(track);
  }
}
