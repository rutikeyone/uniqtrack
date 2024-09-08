import 'package:uniqtrack/core/common/exceptions/exceptions.dart';
import 'package:uniqtrack/data/accounts/models/file_model.dart';

abstract interface class ImageDataSource {
  Future<PermissionResult<FileModel?>> chooseImage();
}
