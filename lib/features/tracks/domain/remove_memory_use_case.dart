import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:generic_usecase/generic_usecase.dart';
import 'package:uniqtrack/core/common/exceptions/exceptions.dart';
import 'package:uniqtrack/features/tracks/domain/entities/entities.dart';
import 'package:uniqtrack/features/tracks/domain/track_repository.dart';

class RemoveMemoryUseCase
    extends Usecase<(Track, Memory), Either<AppError, void>> {
  final TrackRepository _trackRepository;

  const RemoveMemoryUseCase({
    required TrackRepository trackRepository,
  }) : _trackRepository = trackRepository;

  @override
  Future<Either<AppError, void>> execute((Track, Memory) params) {
    final track = params.$1;
    final memory = params.$2;

    return _trackRepository.removeMemory(
      track: track,
      memory: memory,
    );
  }
}
