part of 'accounts_provider.dart';

@riverpod
Uuid uuid(UuidRef ref) {
  return const Uuid();
}

@riverpod
FirebaseFirestore firebaseFireStore(FirebaseFireStoreRef ref) {
  return FirebaseFirestore.instance;
}

@riverpod
ImagePicker imagePicker(ImagePickerRef ref) {
  return ImagePicker();
}

@riverpod
FirebaseAuth firebaseAuth(FirebaseAuthRef ref) {
  return FirebaseAuth.instance;
}

@riverpod
FirebaseStorage firebaseStorage(FirebaseStorageRef ref) {
  return FirebaseStorage.instance;
}

@riverpod
AppErrorHandler appErrorHandler(AppErrorHandlerRef ref) {
  return const AppErrorHandlerImpl();
}