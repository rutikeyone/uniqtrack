import 'package:uniqtrack/app/glue/register/mappers/file_mapper.dart';
import 'package:uniqtrack/data/repositories/accounts/models/file_model.dart';
import 'package:uniqtrack/data/repositories/accounts/parameters/register_parameters.dart';
import 'package:uniqtrack/features/register/domain/entities/file.dart';
import 'package:uniqtrack/features/register/domain/repositorories/register_repository.dart';

class RegisterAdapterRepository implements RegisterRepository {
  final Future<FileModel?> Function() _chooseImageFromCamera;
  final Future<FileModel?> Function() _chooseImageFromGallery;
  final Future<void> Function(RegisterParameters) _register;
  final FileMapper _fileMapper;

  const RegisterAdapterRepository({
    required Future<FileModel?> Function() chooseImageFromCamera,
    required Future<FileModel?> Function() chooseImageFromGallery,
    required Future<void> Function(RegisterParameters) register,
    required FileMapper fileMapper,
  })  : _chooseImageFromGallery = chooseImageFromGallery,
        _chooseImageFromCamera = chooseImageFromCamera,
        _fileMapper = fileMapper,
        _register = register;

  @override
  Future<File?> chooseImageFromCamera() async {
    final fileModel = await _chooseImageFromCamera.call();
    return fileModel != null ? _fileMapper.toFile(fileModel) : null;
  }

  @override
  Future<File?> chooseImageFromGallery() async {
    final fileModel = await _chooseImageFromGallery.call();
    return fileModel != null ? _fileMapper.toFile(fileModel) : null;
  }

  @override
  Future<void> register({
    required String email,
    required String name,
    required String password,
  }) {
    final parameters = RegisterParameters(
      name: name,
      email: email,
      password: password,
    );

    return _register(parameters);
  }
}
