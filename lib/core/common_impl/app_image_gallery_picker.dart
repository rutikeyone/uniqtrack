import 'dart:typed_data';

import 'package:image_picker/image_picker.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:uniqtrack/core/common/app_image_picker.dart';

final imagePickerProvider =
    Provider.autoDispose<ImagePicker>((_) => ImagePicker());

final appImageGalleryPickerProvider =
    Provider.autoDispose<AppImageGalleryPicker>(
  (ref) {
    final imagePicker = ref.watch(imagePickerProvider);
    return AppImageGalleryPicker(imagePicker: imagePicker);
  },
);

class AppImageGalleryPicker implements AppImagePicker {
  final ImagePicker _imagePicker;

  const AppImageGalleryPicker({
    required ImagePicker imagePicker,
  }) : _imagePicker = imagePicker;

  @override
  Future<Uint8List?> getImage() async {
    final file = await _imagePicker.pickImage(source: ImageSource.gallery);
    final bytes = await file?.readAsBytes();
    return bytes;
  }
}
