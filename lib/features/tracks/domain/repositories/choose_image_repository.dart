import 'dart:typed_data';

import 'package:dartz/dartz.dart';
import 'package:uniqtrack/core/common/exceptions/exceptions.dart';

abstract interface class ChooseImageRepository {
  Future<Either<AppError, Either<AppPermissionError, Uint8List?>>>
      chooseImageFromGallery();

  Future<Either<AppError, Either<AppPermissionError, Uint8List?>>>
      chooseImageFromCamera();
}
