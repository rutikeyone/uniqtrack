part of 'accounts_provider.dart';

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
