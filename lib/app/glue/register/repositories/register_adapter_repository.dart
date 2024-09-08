import 'package:dartz/dartz.dart';
import 'package:uniqtrack/app/glue/register/mappers/file_mapper.dart';
import 'package:uniqtrack/app/glue/register/mappers/gender_mapper.dart';
import 'package:uniqtrack/core/common/exceptions/exceptions.dart';
import 'package:uniqtrack/data/accounts/models/file_model.dart';
import 'package:uniqtrack/data/accounts/parameters/parameters.dart';
import 'package:uniqtrack/features/register/domain/entities/file.dart';
import 'package:uniqtrack/features/register/domain/entities/gender.dart';
import 'package:uniqtrack/features/register/domain/repositorories/register_repository.dart';

class RegisterAdapterRepository implements RegisterRepository {
  final Future<PermissionResultWithAppError<FileModel?>> Function()
      _chooseImageFromCamera;
  final Future<PermissionResultWithAppError<FileModel?>> Function()
      _chooseImageFromGallery;
  final Future<Either<AppError, void>> Function(RegisterParameters) _register;
  final FileMapper _fileMapper;
  final GenderMapper _genderMapper;

  const RegisterAdapterRepository({
    required Future<PermissionResultWithAppError<FileModel?>> Function()
        chooseImageFromCamera,
    required Future<PermissionResultWithAppError<FileModel?>> Function()
        chooseImageFromGallery,
    required Future<Either<AppError, void>> Function(RegisterParameters)
        register,
    required FileMapper fileMapper,
    required GenderMapper genderMapper,
  })  : _chooseImageFromGallery = chooseImageFromGallery,
        _chooseImageFromCamera = chooseImageFromCamera,
        _fileMapper = fileMapper,
        _register = register,
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
    final parameters = RegisterParameters(
      name: name,
      email: email,
      password: password,
      gender: genderModel,
      file: file != null ? _fileMapper.toFileModel(file) : null,
    );

    return _register(parameters);
  }
}
