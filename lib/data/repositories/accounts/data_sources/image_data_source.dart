import 'package:uniqtrack/data/repositories/accounts/models/file_model.dart';

abstract interface class ImageDataSource {
  Future<FileModel?> chooseImage();
}
