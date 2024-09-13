import 'package:dartz/dartz.dart';
import 'package:uniqtrack/app/glue/accounts/mappers/file_mapper.dart';
import 'package:uniqtrack/app/glue/accounts/mappers/gender_mapper.dart';
import 'package:uniqtrack/core/common/exceptions/exceptions.dart';
import 'package:uniqtrack/data/accounts/accounts_data_repository.dart';
import 'package:uniqtrack/data/accounts/parameters/parameters.dart';
import 'package:uniqtrack/data/images/models/models.dart';
import 'package:uniqtrack/features/accounts/domain/accounts_repository.dart';
import 'package:uniqtrack/features/accounts/domain/entities/entities.dart';

class AccountsAdapterRepository implements AccountsRepository {
  final Future<PermissionResultWithAppError<FileModel?>> Function()
      _chooseImageFromCamera;
  final Future<PermissionResultWithAppError<FileModel?>> Function()
      _chooseImageFromGallery;

  final AccountsDataRepository _accountsDataRepository;

  final FileMapper _fileMapper;
  final GenderMapper _genderMapper;

  const AccountsAdapterRepository({
    required Future<PermissionResultWithAppError<FileModel?>> Function()
        chooseImageFromCamera,
    required Future<PermissionResultWithAppError<FileModel?>> Function()
        chooseImageFromGallery,
    required AccountsDataRepository accountsDataRepository,
    required FileMapper fileMapper,
    required GenderMapper genderMapper,
  })  : _chooseImageFromGallery = chooseImageFromGallery,
        _chooseImageFromCamera = chooseImageFromCamera,
        _fileMapper = fileMapper,
        _accountsDataRepository = accountsDataRepository,
        _genderMapper = genderMapper;

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
}
