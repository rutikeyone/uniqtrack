part of 'providers.dart';

@Riverpod(dependencies: [trackMapper])
AccountsRepository accountsRepository(AccountsRepositoryRef ref) {
  final galleryDataSource = ref.watch(galleryDataSourceProvider);
  final cameraDataSource = ref.watch(cameraDataSourceProvider);

  final galleryImageDataRepository = ref.watch(
    imageDataRepositoryProvider(imageSource: galleryDataSource),
  );

  final cameraImageDataRepository = ref.watch(
    imageDataRepositoryProvider(imageSource: cameraDataSource),
  );

  final fileMapper = ref.watch(fileMapperProvider);

  final accountsDataRepository = ref.watch(
    accountsDataRepositoryProvider,
  );

  final tracksDataRepository = ref.watch(tracksDataRepositoryProvider);

  final genderMapper = ref.watch(genderMapperProvider);
  final trackMapper = ref.watch(trackMapperProvider);

  return AccountsAdapterRepository(
    chooseImageFromCamera: cameraImageDataRepository.chooseImage,
    chooseImageFromGallery: galleryImageDataRepository.chooseImage,
    fileMapper: fileMapper,
    accountsDataRepository: accountsDataRepository,
    tracksDataRepository: tracksDataRepository,
    genderMapper: genderMapper,
    trackMapper: trackMapper,
  );
}
