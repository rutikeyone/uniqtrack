import 'package:flutter/foundation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:uniqtrack/core/common/app_image_picker.dart';
import 'package:uniqtrack/core/common_impl/app_image_gallery_picker.dart';

final appImageCameraPickerProvider = Provider.autoDispose<AppImagePicker>(
  (ref) {
    final imagePicker = ref.watch(imagePickerProvider);
    return AppImageCameraPicker(imagePicker: imagePicker);
  },
);

class AppImageCameraPicker implements AppImagePicker {
  final ImagePicker _imagePicker;

  const AppImageCameraPicker({
    required ImagePicker imagePicker,
  }) : _imagePicker = imagePicker;

  @override
  Future<Uint8List?> getImage() async {
    final file = await _imagePicker.pickImage(source: ImageSource.camera);
    final bytes = await file?.readAsBytes();
    return bytes;
  }
}
