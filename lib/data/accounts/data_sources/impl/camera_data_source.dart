import 'package:image_picker/image_picker.dart';
import 'package:uniqtrack/data/accounts/data_sources/image_data_source.dart';
import 'package:uniqtrack/data/accounts/models/file_model.dart';

class CameraDataSource implements ImageDataSource {
  final ImagePicker _imagePicker;

  const CameraDataSource({required ImagePicker imagePicker})
      : _imagePicker = imagePicker;

  @override
  Future<FileModel?> chooseImage() async {
    final file = await _imagePicker.pickImage(source: ImageSource.camera);
    if (file == null) {
      return null;
    }

    final bytes = await file.readAsBytes();
    final name = file.name;

    final result = FileModel(name: name, bytes: bytes);
    return result;
  }
}
