import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:generic_usecase/generic_usecase.dart';
import 'package:uniqtrack/core/common/exceptions/exceptions.dart';
import 'package:uniqtrack/features/accounts/domain/accounts_repository.dart';
import 'package:uniqtrack/features/tracks/domain/entities/entities.dart';

class RemoveFromFavouriteTracksUseCase
    extends Usecase<Track, Either<AppError, void>> {
  final AccountsRepository _accountsRepository;

  const RemoveFromFavouriteTracksUseCase({
    required AccountsRepository accountsRepository,
  }) : _accountsRepository = accountsRepository;

  @override
  Future<Either<AppError, void>> execute(Track track) {
    return _accountsRepository.removeFromFavouriteTracks(track);
  }
}
