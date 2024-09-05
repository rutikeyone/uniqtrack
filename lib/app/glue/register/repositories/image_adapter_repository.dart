import 'package:dartz/dartz.dart';
import 'package:uniqtrack/app/glue/register/mappers/file_mapper.dart';
import 'package:uniqtrack/app/glue/register/mappers/gender_mapper.dart';
import 'package:uniqtrack/core/common/exceptions/exceptions.dart';
import 'package:uniqtrack/data/repositories/accounts/models/file_model.dart';
import 'package:uniqtrack/data/repositories/accounts/parameters/register_parameters.dart';
import 'package:uniqtrack/features/register/domain/entities/file.dart';
import 'package:uniqtrack/features/register/domain/entities/gender.dart';
import 'package:uniqtrack/features/register/domain/repositorories/register_repository.dart';

class RegisterAdapterRepository implements RegisterRepository {
  final Future<Either<AppError, FileModel?>> Function()
      _chooseImageFromCamera;
  final Future<Either<AppError, FileModel?>> Function()
      _chooseImageFromGallery;
  final Future<Either<AppError, void>> Function(RegisterParameters)
      _register;
  final FileMapper _fileMapper;
  final GenderMapper _genderMapper;

  const RegisterAdapterRepository({
    required Future<Either<AppError, FileModel?>> Function()
        chooseImageFromCamera,
    required Future<Either<AppError, FileModel?>> Function()
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
  Future<Either<AppError, File?>> chooseImageFromCamera() async {
    final chooseImageResult = await _chooseImageFromCamera.call();
    return chooseImageResult.fold(
      (error) => Left(error),
      (fileModel) {
        final file = fileModel != null ? _fileMapper.toFile(fileModel) : null;
        return Right(file);
      },
    );
  }

  @override
  Future<Either<AppError, File?>> chooseImageFromGallery() async {
    final chooseImageResult = await _chooseImageFromGallery.call();
    return chooseImageResult.fold(
      (error) => Left(error),
      (fileModel) {
        final file = fileModel != null ? _fileMapper.toFile(fileModel) : null;
        return Right(file);
      },
    );
  }

  @override
  Future<Either<AppError, void>> register({
    required String email,
    required String name,
    required String password,
    required Gender gender,
  }) {
    final genderModel = _genderMapper.toGenderModel(gender);
    final parameters = RegisterParameters(
      name: name,
      email: email,
      password: password,
      gender: genderModel,
    );

    return _register(parameters);
  }
}
