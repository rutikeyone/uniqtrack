import 'package:dartz/dartz.dart';
import 'package:generic_usecase/generic_usecase.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:uniqtrack/core/common/exceptions/exceptions.dart';
import 'package:uniqtrack/features/tracks/domain/entities/entities.dart';
import 'package:uniqtrack/features/tracks/domain/track_repository.dart';

class RemoveTrackUseCase extends Usecase<Track, Either<AppError, void>> {
  final TrackRepository _trackRepository;

  RemoveTrackUseCase({
    required TrackRepository trackRepository,
  }) : _trackRepository = trackRepository;

  @override
  FutureOr<Either<AppError, void>> execute(Track track) {
    return _trackRepository.removeTrack(track);
  }
}
