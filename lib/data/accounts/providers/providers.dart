import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:image_picker/image_picker.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:uniqtrack/core/common/error_handler/impl/app_error_handler_impl.dart';
import 'package:uniqtrack/data/accounts/accounts_data_repository.dart';
import 'package:uniqtrack/data/accounts/repositories/accounts_data_repository_impl.dart';
import 'package:uniqtrack/data/accounts/sorters/sorter.dart';
import 'package:uuid/uuid.dart';

part 'providers.g.dart';

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
Sorter sorter(SorterRef ref) {
  return SorterImpl();
}

@riverpod
AccountsDataRepository accountsDataRepository(AccountsDataRepositoryRef ref) {
  final firebaseAuth = ref.watch(firebaseAuthProvider);
  final firebaseStorage = ref.watch(firebaseStorageProvider);
  final appErrorHandler = ref.watch(appErrorHandlerProvider);
  final uuid = ref.watch(uuidProvider);
  final firebaseFireStore = ref.watch(firebaseFireStoreProvider);

  final sorter = ref.watch(sorterProvider);

  ref.keepAlive();

  return AccountsDataRepositoryImpl(
    firebaseAuth: firebaseAuth,
    firebaseStorage: firebaseStorage,
    appErrorHandler: appErrorHandler,
    uuid: uuid,
    firebaseFireStore: firebaseFireStore,
    sorter: sorter,
  );
}
