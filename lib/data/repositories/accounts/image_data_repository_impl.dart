import 'dart:typed_data';

import 'package:uniqtrack/data/repositories/accounts/data_sources/image_data_source.dart';
import 'package:uniqtrack/data/repositories/image_data_repository.dart';

class ImageDataRepositoryImpl implements ImageDataRepository {
  final ImageDataSource _imageDataSource;

  const ImageDataRepositoryImpl({required ImageDataSource imageDataSource})
      : _imageDataSource = imageDataSource;

  @override
  Future<Uint8List?> chooseImage() {
    return _imageDataSource.chooseImage();
  }
}
