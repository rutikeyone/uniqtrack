part of 'providers.dart';

@Riverpod(dependencies: [appLocationHandler, positionMapper])
RecordTrackRepository recordTrackRepository(RecordTrackRepositoryRef ref) {
  final appLocationHandler = ref.watch(appLocationHandlerProvider);
  final positionMapper = ref.watch(positionMapperProvider);

  return RecordTrackAdapterRepository(
    appLocationHandler: appLocationHandler,
    positionMapper: positionMapper,
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
