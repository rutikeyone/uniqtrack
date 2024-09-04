import 'package:uniqtrack/features/register/domain/entities/file.dart';

abstract interface class RegisterRepository {
  Future<File?> chooseImageFromGallery();

  Future<File?> chooseImageFromCamera();

  Future<void> register({
    required String email,
    required String name,
    required String password,
  });
}
