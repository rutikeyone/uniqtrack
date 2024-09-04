import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:uniqtrack/app/glue/register/repositories/image_adapter_repository.dart';
import 'package:uniqtrack/data/repositories/accounts/providers/accounts_provider.dart';
import 'package:uniqtrack/features/register/domain/repositorories/image_repository.dart';

part 'image_adapter_repository_provider.g.dart';

@riverpod
ImageRepository imageRepository(ImageRepositoryRef ref) {
  final galleryDataSource = ref.watch(galleryDataSourceProvider);
  final cameraDataSource = ref.watch(cameraDataSourceProvider);

  final galleryImageDataRepository = ref.watch(
    imageDataRepositoryProvider(imageSource: galleryDataSource),
  );

  final cameraImageDataRepository = ref.watch(
    imageDataRepositoryProvider(imageSource: cameraDataSource),
  );

  return ImageAdapterRepository(
    chooseImageFromCamera: cameraImageDataRepository.chooseImage,
    chooseImageFromGallery: galleryImageDataRepository.chooseImage,
  );
}
