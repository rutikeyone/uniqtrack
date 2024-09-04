import 'package:uniqtrack/data/repositories/accounts/models/file_model.dart';

abstract class ImageDataRepository {
  Future<FileModel?> chooseImage();
}
