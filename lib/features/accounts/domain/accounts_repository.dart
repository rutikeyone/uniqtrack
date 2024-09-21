import 'package:dartz/dartz.dart';
import 'package:uniqtrack/core/common/exceptions/exceptions.dart';
import 'package:uniqtrack/features/accounts/domain/entities/entities.dart';
import 'package:uniqtrack/features/tracks/domain/entities/entities.dart';

abstract interface class AccountsRepository {
  Future<Either<AppError, void>> sendPasswordResetEmail({
    required String email,
  });

  Future<Either<AppError, void>> signInWithEmailAndPassword({
    required String email,
    required String password,
  });

  Future<Either<AppError, Either<AppPermissionError, File?>>>
      chooseImageFromGallery();

  Future<Either<AppError, Either<AppPermissionError, File?>>>
      chooseImageFromCamera();

  Future<Either<AppError, void>> register({
    required String email,
    required String name,
    required String password,
    required Gender gender,
    required File? file,
  });

  Stream<List<Track>> watchUserTracks();

  Stream<List<Track>> watchUserFavouriteTracks();

  Future<Either<AppError, void>> addToFavouriteTracks(Track track);

  Future<Either<AppError, void>> addToFavouritesTrack(Track track);

  Future<Either<AppError, void>> signOut();

  Future<Either<AppError, void>> removeFromFavouriteTracks(Track track);

  Future<Either<AppError, void>> removeTrack(Track track);

  Stream<Track?> watchFavouriteTrack(String id);

  Stream<Track?> watchMyTrack(String id);
}
