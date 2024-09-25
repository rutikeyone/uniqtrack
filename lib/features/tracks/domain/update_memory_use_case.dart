import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:generic_usecase/generic_usecase.dart';
import 'package:uniqtrack/core/common/exceptions/exceptions.dart';
import 'package:uniqtrack/features/tracks/domain/entities/entities.dart';
import 'package:uniqtrack/features/tracks/domain/track_repository.dart';

class UpdateMemoryUseCase
    extends Usecase<(Track, Memory), Either<AppError, void>> {
  final TrackRepository _trackRepository;

  const UpdateMemoryUseCase({
    required TrackRepository trackRepository,
  }) : _trackRepository = trackRepository;

  @override
  FutureOr<Either<AppError, void>> execute((Track, Memory) params) {
    return _trackRepository.updateMemory(
      params.$1,
      params.$2,
    );
  }
}
