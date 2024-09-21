import 'package:dartz/dartz.dart';
import 'package:uniqtrack/app/glue/accounts/mappers/file_mapper.dart';
import 'package:uniqtrack/app/glue/accounts/mappers/gender_mapper.dart';
import 'package:uniqtrack/app/glue/tracks/mappers/track_mapper.dart';
import 'package:uniqtrack/core/common/exceptions/exceptions.dart';
import 'package:uniqtrack/data/accounts/accounts_data_repository.dart';
import 'package:uniqtrack/data/accounts/parameters/parameters.dart';
import 'package:uniqtrack/data/images/models/models.dart';
import 'package:uniqtrack/data/tracks/tracks_data_repository.dart';
import 'package:uniqtrack/features/accounts/domain/accounts_repository.dart';
import 'package:uniqtrack/features/accounts/domain/entities/entities.dart';
import 'package:uniqtrack/features/tracks/domain/entities/entities.dart';

class AccountsAdapterRepository implements AccountsRepository {
  final Future<PermissionResultWithAppError<FileModel?>> Function()
      _chooseImageFromCamera;
  final Future<PermissionResultWithAppError<FileModel?>> Function()
      _chooseImageFromGallery;

  final AccountsDataRepository _accountsDataRepository;
  final TracksDataRepository _tracksDataRepository;

  final FileMapper _fileMapper;
  final GenderMapper _genderMapper;
  final TrackMapper _trackMapper;

  const AccountsAdapterRepository({
    required Future<PermissionResultWithAppError<FileModel?>> Function()
        chooseImageFromCamera,
    required Future<PermissionResultWithAppError<FileModel?>> Function()
        chooseImageFromGallery,
    required AccountsDataRepository accountsDataRepository,
    required TracksDataRepository tracksDataRepository,
    required FileMapper fileMapper,
    required GenderMapper genderMapper,
    required TrackMapper trackMapper,
  })  : _chooseImageFromGallery = chooseImageFromGallery,
        _chooseImageFromCamera = chooseImageFromCamera,
        _fileMapper = fileMapper,
        _tracksDataRepository = tracksDataRepository,
        _accountsDataRepository = accountsDataRepository,
        _genderMapper = genderMapper,
        _trackMapper = trackMapper;

  @override
  Future<PermissionResultWithAppError<File?>> chooseImageFromCamera() async {
    final chooseImageResult = await _chooseImageFromCamera.call();
    return chooseImageResult.fold(
      (error) => Left(error),
      (result) {
        return result.fold(
          (error) => Left(error),
          (fileModel) {
            final file =
                fileModel != null ? _fileMapper.toFile(fileModel) : null;
            return Right(Right(file));
          },
        );
      },
    );
  }

  @override
  Future<PermissionResultWithAppError<File?>> chooseImageFromGallery() async {
    final chooseImageResult = await _chooseImageFromGallery.call();
    return chooseImageResult.fold(
      (error) => Left(error),
      (result) {
        return result.fold(
          (error) => Left(error),
          (fileModel) {
            final file =
                fileModel != null ? _fileMapper.toFile(fileModel) : null;
            return Right(Right(file));
          },
        );
      },
    );
  }

  @override
  Future<Either<AppError, void>> register({
    required String email,
    required String name,
    required String password,
    required Gender gender,
    required File? file,
  }) {
    final genderModel = _genderMapper.toGenderModel(gender);
    final parameters = RegisterDataParameters(
      name: name,
      email: email,
      password: password,
      gender: genderModel,
      file: file != null ? _fileMapper.toFileModel(file) : null,
    );

    return _accountsDataRepository.register(parameters);
  }

  @override
  Future<Either<AppError, void>> sendPasswordResetEmail({
    required String email,
  }) {
    return _accountsDataRepository.sendPasswordResetEmail(email: email);
  }

  @override
  Future<Either<AppError, void>> signInWithEmailAndPassword({
    required String email,
    required String password,
  }) {
    final parameters = LoginDataParameters(
      email: email,
      password: password,
    );
    return _accountsDataRepository.login(parameters);
  }

  @override
  Stream<List<Track>> watchUserTracks() {
    return _accountsDataRepository.watchUserTracks().map((list) {
      return list.map((item) {
        return _trackMapper.toTrack(item);
      }).toList();
    });
  }

  @override
  Stream<List<Track>> watchUserFavouriteTracks() {
    return _accountsDataRepository.watchUserFavouriteTracks().map((list) {
      return list.map((item) {
        return _trackMapper.toTrack(item);
      }).toList();
    });
  }

  @override
  Future<Either<AppError, void>> addToFavouriteTracks(Track track) {
    final trackModel = _trackMapper.toTrackModel(track);

    return _accountsDataRepository.addToFavouriteTracks(trackModel);
  }

  @override
  Future<Either<AppError, void>> addToFavouritesTrack(Track track) {
    final trackModel = _trackMapper.toTrackModel(track);

    return _accountsDataRepository.addToFavouriteTracks(trackModel);
  }

  @override
  Future<Either<AppError, void>> signOut() {
    return _accountsDataRepository.signOut();
  }

  @override
  Future<Either<AppError, void>> removeFromFavouriteTracks(Track track) {
    final trackModel = _trackMapper.toTrackModel(track);

    return _accountsDataRepository.removeFromFavouriteTracks(trackModel);
  }

  @override
  Future<Either<AppError, void>> removeTrack(Track track) async {
    final trackModel = _trackMapper.toTrackModel(track);

    final removeTrackResult =
        await _tracksDataRepository.removeTrack(trackModel);
    final removeTrackFailureResult = removeTrackResult.fold(
      (error) => error,
      (_) => null,
    );

    if (removeTrackFailureResult != null) {
      return Left(removeTrackFailureResult);
    }

    final removeFromMyTracksResult =
        await _accountsDataRepository.removeFromMyTracks(trackModel);
    final removeFromMyTracksFailureResult = removeFromMyTracksResult.fold(
      (error) => error,
      (_) => null,
    );

    if (removeFromMyTracksFailureResult != null) {
      return Left(removeFromMyTracksFailureResult);
    }

    return Right(removeFromMyTracksFailureResult);
  }

  @override
  Stream<Track?> watchFavouriteTrack(String id) {
    return _accountsDataRepository.watchFavouriteTrack(id).map(
      (item) {
        if (item == null) return null;
        return _trackMapper.toTrack(item);
      },
    );
  }

  @override
  Stream<Track?> watchMyTrack(String id) {
    return _accountsDataRepository.watchMyTrack(id).map(
      (item) {
        if (item == null) return null;
        return _trackMapper.toTrack(item);
      },
    );
  }
}
