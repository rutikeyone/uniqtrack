part of 'accounts_provider.dart';

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
  final firebaseAuth = ref.watch(firebaseAuthProvider);
  final firebaseStorage = ref.watch(firebaseStorageProvider);
  final appErrorHandler = ref.watch(appErrorHandlerProvider);
  final uuid = ref.watch(uuidProvider);
  final firebaseFireStore = ref.watch(firebaseFireStoreProvider);

  ref.keepAlive();

  return AccountsDataRepositoryImpl(
    firebaseAuth: firebaseAuth,
    firebaseStorage: firebaseStorage,
    appErrorHandler: appErrorHandler,
    uuid: uuid,
    firebaseFireStore: firebaseFireStore,
  );
}
