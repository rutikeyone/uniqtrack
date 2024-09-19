import 'dart:typed_data';

import 'package:dartz/dartz.dart';
import 'package:uniqtrack/core/common/exceptions/exceptions.dart';

abstract interface class ImageRepository {
  Future<Either<AppError, Either<AppPermissionError, Uint8List?>>>
      chooseImageFromGallery();

  Future<Either<AppError, Either<AppPermissionError, Uint8List?>>>
      chooseImageFromCamera();

  Future<Either<AppError, String>> downloadImage(Uint8List bytes);
}
