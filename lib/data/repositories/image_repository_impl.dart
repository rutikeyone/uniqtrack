import 'package:flutter/foundation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:uniqtrack/core/common/app_image_picker.dart';
import 'package:uniqtrack/core/common_impl/app_image_camera_picker.dart';
import 'package:uniqtrack/core/common_impl/app_image_gallery_picker.dart';
import 'package:uniqtrack/features/register/domain/repositorories/image_repository.dart';

final imageRepositoryWithCameraProvider =
    Provider.autoDispose<ImageRepository>((ref) {
  final appImageCameraPicker = ref.watch(appImageCameraPickerProvider);
  return ImageRepositoryImpl(appImagePicker: appImageCameraPicker);
});

final imageRepositoryWithGalleryProvider =
    Provider.autoDispose<ImageRepository>((ref) {
  final appImageGalleryPicker = ref.watch(appImageGalleryPickerProvider);
  return ImageRepositoryImpl(appImagePicker: appImageGalleryPicker);
});

class ImageRepositoryImpl implements ImageRepository {
  final AppImagePicker _appImagePicker;

  const ImageRepositoryImpl({
    required AppImagePicker appImagePicker,
  }) : _appImagePicker = appImagePicker;

  @override
  Future<Uint8List?> getImage() {
    //TODO make handle errors
    return _appImagePicker.getImage();
  }
}
