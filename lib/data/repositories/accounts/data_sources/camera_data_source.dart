import 'dart:typed_data';

import 'package:image_picker/image_picker.dart';
import 'package:uniqtrack/data/repositories/accounts/data_sources/image_data_source.dart';

class CameraDataSource implements ImageDataSource {
  final ImagePicker _imagePicker;

  const CameraDataSource({required ImagePicker imagePicker})
      : _imagePicker = imagePicker;

  @override
  Future<Uint8List?> chooseImage() async {
    final file = await _imagePicker.pickImage(source: ImageSource.camera);
    final bytes = await file?.readAsBytes();
    return bytes;
  }
}
