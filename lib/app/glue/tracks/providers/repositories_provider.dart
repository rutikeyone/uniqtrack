// ignore_for_file: avoid_manual_providers_as_generated_provider_dependency
part of 'providers.dart';

@Riverpod(dependencies: [appLocationHandler, positionMapper, trackMapper])
RecordTrackRepository recordTrackRepository(RecordTrackRepositoryRef ref) {
  final appLocationHandler = ref.watch(appLocationHandlerProvider);
  final positionMapper = ref.watch(positionMapperProvider);
  final trackMapper = ref.watch(trackMapperProvider);

  final tracksDataRepository = ref.watch(tracksDataRepositoryProvider);
  final accountsDataRepository = ref.watch(accountsDataRepositoryProvider);

  return RecordTrackAdapterRepository(
    appLocationHandler: appLocationHandler,
    positionMapper: positionMapper,
    trackMapper: trackMapper,
    tracksDataRepository: tracksDataRepository,
    accountsDataRepository: accountsDataRepository,
  );
}

@riverpod
ChooseImageRepository chooseImageRepository(ChooseImageRepositoryRef ref) {
  final galleryDataSource = ref.watch(galleryDataSourceProvider);
  final cameraDataSource = ref.watch(cameraDataSourceProvider);

  final galleryImageDataRepository = ref.watch(
    imageDataRepositoryProvider(imageSource: galleryDataSource),
  );

  final cameraImageDataRepository = ref.watch(
    imageDataRepositoryProvider(imageSource: cameraDataSource),
  );

  return ChooseImagesAdapterRepository(
    chooseImageFromCamera: cameraImageDataRepository.chooseImage,
    chooseImageFromGallery: galleryImageDataRepository.chooseImage,
  );
}
