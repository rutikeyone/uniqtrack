// ignore_for_file: avoid_manual_providers_as_generated_provider_dependency
part of 'providers.dart';

@Riverpod(dependencies: [
  appLocationHandler,
  positionMapper,
  trackMapper,
  memoryMapper,
])
TrackRepository trackRepository(TrackRepositoryRef ref) {
  final appLocationHandler = ref.watch(appLocationHandlerProvider);
  final positionMapper = ref.watch(positionMapperProvider);
  final trackMapper = ref.watch(trackMapperProvider);
  final memoryMapper = ref.watch(memoryMapperProvider);

  final tracksDataRepository = ref.watch(tracksDataRepositoryProvider);
  final accountsDataRepository = ref.watch(accountsDataRepositoryProvider);

  return TrackAdapterRepository(
    appLocationHandler: appLocationHandler,
    positionMapper: positionMapper,
    trackMapper: trackMapper,
    memoryMapper: memoryMapper,
    tracksDataRepository: tracksDataRepository,
    accountsDataRepository: accountsDataRepository,
  );
}

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

  return ImagesAdapterRepository(
    chooseImageFromCamera: cameraImageDataRepository.chooseImage,
    chooseImageFromGallery: galleryImageDataRepository.chooseImage,
    downloadImage: galleryImageDataRepository.downloadImage,
  );
}
