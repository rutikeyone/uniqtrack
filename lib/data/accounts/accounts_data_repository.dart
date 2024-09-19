import 'package:dartz/dartz.dart';
import 'package:uniqtrack/core/common/exceptions/exceptions.dart';
import 'package:uniqtrack/data/accounts/models/models.dart';
import 'package:uniqtrack/data/accounts/parameters/parameters.dart';
import 'package:uniqtrack/data/tracks/models/models.dart';

abstract interface class AccountsDataRepository {
  Stream<UserModel?> authStateChanges();

  Future<Either<AppError, void>> register(RegisterDataParameters parameters);

  Future<Either<AppError, void>> login(LoginDataParameters parameters);

  Future<Either<AppError, void>> sendPasswordResetEmail({
    required String email,
  });

  Future<Either<AppError, UserModel>> fetchUserByUid(String uid);

  Future<Either<AppError, void>> signOut();

  Future<Either<AppError, void>> addMyRecordTrackData(TrackModel track);

  Future<UserModel?> fetchCurrentUser();

  Stream<List<TrackModel>> listenUserTracks();

  Stream<List<TrackModel>> listenUserFavouriteTracks();

  Future<Either<AppError, void>> addToFavouriteTracks(TrackModel track);

  Future<Either<AppError, void>> removeFromFavouriteTracks(TrackModel track);

  Future<Either<AppError, void>> removeFromMyTracks(TrackModel track);
}
