import 'package:flutter/foundation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:uniqtrack/data/repositories/accounts/data_sources/image_data_source.dart';

class GalleryDataSource implements ImageDataSource {
  final ImagePicker _imagePicker;

  const GalleryDataSource({
    required ImagePicker imagePicker,
  }) : _imagePicker = imagePicker;

  @override
  Future<Uint8List?> chooseImage() async {
    final file = await _imagePicker.pickImage(source: ImageSource.gallery);
    final bytes = await file?.readAsBytes();
    return bytes;
  }
}
