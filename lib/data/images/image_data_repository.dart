import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:uniqtrack/core/common/exceptions/exceptions.dart';
import 'package:uniqtrack/data/images/models/models.dart';

abstract interface class ImageDataRepository {
  Future<Either<AppError, PermissionResult<FileModel?>>> chooseImage();

  Future<Either<AppError, String>> downloadImage(Uint8List bytes);
}
