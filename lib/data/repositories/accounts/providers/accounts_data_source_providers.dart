part of 'accounts_provider.dart';

@riverpod
ImageDataSource galleryDataSource(GalleryDataSourceRef ref) {
  final imagePicker = ref.watch(imagePickerProvider);
  return GalleryDataSource(imagePicker: imagePicker);
}

@riverpod
ImageDataSource cameraDataSource(CameraDataSourceRef ref) {
  final imagePicker = ref.watch(imagePickerProvider);
  return CameraDataSource(imagePicker: imagePicker);
}