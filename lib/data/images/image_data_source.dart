import 'package:uniqtrack/core/common/exceptions/exceptions.dart';
import 'package:uniqtrack/data/images/models/models.dart';

abstract interface class ImageDataSource {
  Future<PermissionResult<FileModel?>> chooseImage();
}
