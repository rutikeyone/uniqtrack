import 'package:dartz/dartz.dart';
import 'package:image_picker/image_picker.dart';
import 'package:uniqtrack/core/common/app_permission_handler/app_permission_handler.dart';
import 'package:uniqtrack/core/common/exceptions/exceptions.dart';
import 'package:uniqtrack/data/images/image_data_source.dart';
import 'package:uniqtrack/data/images/models/models.dart';

class GalleryDataSource implements ImageDataSource {
  final ImagePicker _imagePicker;
  final AppPermissionHandler _appPermissionHandler;

  const GalleryDataSource({
    required ImagePicker imagePicker,
    required AppPermissionHandler appPermissionHandler,
  })  : _imagePicker = imagePicker,
        _appPermissionHandler = appPermissionHandler;

  @override
  Future<PermissionResult<FileModel?>> chooseImage() async {
    final storagePermissionResult =
        await _appPermissionHandler.requestStorage();

    return storagePermissionResult.when(
      success: () async {
        final file = await _imagePicker.pickImage(source: ImageSource.gallery);
        if (file == null) {
          return Right(null);
        }

        final bytes = await file.readAsBytes();
        final name = file.name;

        final result = FileModel(name: name, bytes: bytes);
        return Right(result);
      },
      error: (error) => Left(error),
    );
  }
}
