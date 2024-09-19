import 'package:dartz/dartz.dart';
import 'package:generic_usecase/generic_usecase.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:uniqtrack/core/common/exceptions/exceptions.dart';
import 'package:uniqtrack/features/accounts/domain/accounts_repository.dart';
import 'package:uniqtrack/features/tracks/domain/entities/entities.dart';

class RemoveTrackUseCase extends Usecase<Track, Either<AppError, void>> {
  final AccountsRepository _accountsRepository;

  RemoveTrackUseCase({
    required AccountsRepository accountsRepository,
  }) : _accountsRepository = accountsRepository;

  @override
  FutureOr<Either<AppError, void>> execute(Track track) {
    return _accountsRepository.removeTrack(track);
  }
}
