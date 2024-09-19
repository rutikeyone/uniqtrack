import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:uniqtrack/core/common/error_handler/impl/app_error_handler_impl.dart';
import 'package:uniqtrack/core/common_impl/app_permission_handler_impl.dart';
import 'package:uniqtrack/data/accounts/providers/providers.dart';
import 'package:uniqtrack/data/images/data_sources/camera_data_source.dart';
import 'package:uniqtrack/data/images/data_sources/gallery_data_source.dart';
import 'package:uniqtrack/data/images/image_data_repository.dart';
import 'package:uniqtrack/data/images/image_data_source.dart';
import 'package:uniqtrack/data/images/repositories/image_data_repository_impl.dart';

part 'providers.g.dart';

@riverpod
ImageDataSource galleryDataSource(GalleryDataSourceRef ref) {
  final imagePicker = ref.watch(imagePickerProvider);
  final appPermissionHandler = ref.watch(appPermissionHandlerProvider);

  return GalleryDataSource(
    imagePicker: imagePicker,
    appPermissionHandler: appPermissionHandler,
  );
}

@riverpod
ImageDataSource cameraDataSource(CameraDataSourceRef ref) {
  final imagePicker = ref.watch(imagePickerProvider);
  final appPermissionHandler = ref.watch(appPermissionHandlerProvider);

  return CameraDataSource(
    imagePicker: imagePicker,
    appPermissionHandler: appPermissionHandler,
  );
}

@riverpod
ImageDataRepository imageDataRepository(
  ImageDataRepositoryRef ref, {
  required ImageDataSource imageSource,
}) {
  final appErrorHandler = ref.watch(appErrorHandlerProvider);
  final firebaseStorage = ref.watch(firebaseStorageProvider);
  final uuid = ref.watch(uuidProvider);

  return ImageDataRepositoryImpl(
    imageDataSource: imageSource,
    appErrorHandler: appErrorHandler,
    uuid: uuid,
    firebaseStorage: firebaseStorage,
  );
}
