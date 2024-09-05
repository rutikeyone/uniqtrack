import 'package:image_picker/image_picker.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:uniqtrack/core/common/error_handler/app_error_handler.dart';
import 'package:uniqtrack/core/common/error_handler/impl/app_error_handler_impl.dart';
import 'package:uniqtrack/data/repositories/accounts/accounts_data_repository_impl.dart';
import 'package:uniqtrack/data/repositories/accounts/data_sources/camera_data_source.dart';
import 'package:uniqtrack/data/repositories/accounts/data_sources/gallery_data_source.dart';
import 'package:uniqtrack/data/repositories/accounts/data_sources/image_data_source.dart';
import 'package:uniqtrack/data/repositories/accounts/image_data_repository_impl.dart';
import 'package:uniqtrack/data/repositories/accounts_data_repository.dart';
import 'package:uniqtrack/data/repositories/image_data_repository.dart';

part 'accounts_provider.g.dart';

@riverpod
ImagePicker imagePicker(ImagePickerRef ref) {
  return ImagePicker();
}

@riverpod
AppErrorHandler appErrorHandler(AppErrorHandlerRef ref) {
  return const AppErrorHandlerImpl();
}

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

@riverpod
ImageDataRepository imageDataRepository(
  ImageDataRepositoryRef ref, {
  required ImageDataSource imageSource,
}) {
  final appErrorHandler = ref.watch(appErrorHandlerProvider);

  return ImageDataRepositoryImpl(
    imageDataSource: imageSource,
    appErrorHandler: appErrorHandler,
  );
}

@riverpod
AccountsDataRepository accountsDataRepository(AccountsDataRepositoryRef ref) {
  return AccountsDataRepositoryImpl();
}
