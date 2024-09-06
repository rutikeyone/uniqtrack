import 'package:uniqtrack/data/accounts/models/file_model.dart';

abstract interface class ImageDataSource {
  Future<FileModel?> chooseImage();
}
