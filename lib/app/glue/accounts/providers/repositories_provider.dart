part of 'providers.dart';

@riverpod
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

  final genderMapper = ref.watch(genderMapperProvider);

  return AccountsAdapterRepository(
    chooseImageFromCamera: cameraImageDataRepository.chooseImage,
    chooseImageFromGallery: galleryImageDataRepository.chooseImage,
    fileMapper: fileMapper,
    accountsDataRepository: accountsDataRepository,
    genderMapper: genderMapper,
  );
}
