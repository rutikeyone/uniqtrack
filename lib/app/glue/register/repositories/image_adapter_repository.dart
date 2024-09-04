import 'package:flutter/foundation.dart';
import 'package:uniqtrack/features/register/domain/repositorories/image_repository.dart';

class ImageAdapterRepository implements ImageRepository {
  final Future<Uint8List?> Function() _chooseImageFromCamera;
  final Future<Uint8List?> Function() _chooseImageFromGallery;

  const ImageAdapterRepository({
    required Future<Uint8List?> Function() chooseImageFromCamera,
    required Future<Uint8List?> Function() chooseImageFromGallery,
  })  : _chooseImageFromGallery = chooseImageFromGallery,
        _chooseImageFromCamera = chooseImageFromCamera;

  @override
  Future<Uint8List?> chooseImageFromCamera() => _chooseImageFromCamera.call();

  @override
  Future<Uint8List?> chooseImageFromGallery() => _chooseImageFromGallery.call();
}
