import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:uniqtrack/core/common/error_handler/app_error_handler.dart';
import 'package:uniqtrack/core/common/exceptions/exceptions.dart';
import 'package:uniqtrack/core/common/firebase_auth_constants.dart';
import 'package:uniqtrack/data/accounts/models/user_model.dart';
import 'package:uniqtrack/data/accounts/parameters/parameters.dart';
import 'package:uniqtrack/data/accounts/accounts_data_repository.dart';
import 'package:uuid/uuid.dart';

class AccountsDataRepositoryImpl implements AccountsDataRepository {
  final FirebaseAuth _firebaseAuth;
  final FirebaseStorage _firebaseStorage;
  final FirebaseFirestore _firebaseFireStore;
  final AppErrorHandler _appErrorHandler;
  final Uuid _uuid;

  const AccountsDataRepositoryImpl({
    required FirebaseAuth firebaseAuth,
    required FirebaseStorage firebaseStorage,
    required AppErrorHandler appErrorHandler,
    required Uuid uuid,
    required FirebaseFirestore firebaseFireStore,
  })  : _firebaseAuth = firebaseAuth,
        _appErrorHandler = appErrorHandler,
        _firebaseStorage = firebaseStorage,
        _uuid = uuid,
        _firebaseFireStore = firebaseFireStore;

  Future<String> _register({
    required String email,
    required String password,
  }) async {
    final createUserWithEmailAndPasswordResult =
        await _firebaseAuth.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );

    final uid = createUserWithEmailAndPasswordResult.user!.uid;
    return uid;
  }

  Future<void> _registerWithoutHandleError(
      RegisterParameters parameters) async {
    final uid = await _register(
      email: parameters.email,
      password: parameters.password,
    );

    final downloadUrl = await _uploadAvatarImage(
      parameters: parameters,
      uid: uid,
    );

    await _uploadUserData(
      parameters: parameters,
      uid: uid,
      photo: downloadUrl,
    );

    return;
  }

  Future<String?> _uploadAvatarImage({
    required RegisterParameters parameters,
    required String uid,
  }) async {
    final file = parameters.file;
    if (file != null) {
      final data = file.bytes;

      final ref = _firebaseStorage
          .ref()
          .child(FirebaseAuthConstants.profilePictures)
          .child(uid);
      final childRef = ref.child(_uuid.v1());

      final uploadTask = childRef.putData(data);
      final snapshot = await uploadTask;
      final downloadUrl = await snapshot.ref.getDownloadURL();
      return downloadUrl;
    }

    return null;
  }

  Future<void> _loginWithoutHandleError(LoginParameters parameters) async {
    final email = parameters.email;
    final password = parameters.password;

    await _firebaseAuth.signInWithEmailAndPassword(
        email: email, password: password);
  }

  Future<void> _uploadUserData({
    required RegisterParameters parameters,
    required String uid,
    required String? photo,
  }) async {
    final user = UserModel(
      name: parameters.name,
      email: parameters.email,
      photo: photo,
      gender: parameters.gender,
    );

    final json = user.toJson();
    final collection =
        _firebaseFireStore.collection(FirebaseAuthConstants.users);
    final doc = collection.doc(uid);

    doc.set(json);
  }

  Future<UserModel> _fetchUser(String uid) async {
    final collection =
        _firebaseFireStore.collection(FirebaseAuthConstants.users);
    final doc = await collection.doc(uid).get();
    final userModel = UserModel.fromJson(doc.data()!);
    return userModel;
  }

  @override
  Future<Either<AppError, void>> register(RegisterParameters parameters) async {
    final result = _appErrorHandler.handle(
      () => _registerWithoutHandleError(parameters),
    );

    return result;
  }

  @override
  Future<Either<AppError, void>> login(LoginParameters parameters) {
    final result = _appErrorHandler.handle(
      () {
        return _loginWithoutHandleError(parameters);
      },
    );

    return result;
  }

  @override
  Future<Either<AppError, UserModel>> fetchUser(String uid) async {
    final result = _appErrorHandler.handle(
      () {
        return _fetchUser(uid);
      },
    );

    return result;
  }

  @override
  Stream<UserModel?> authStateChanges() {
    return _firebaseAuth.authStateChanges().asyncMap(
      (event) async {
        final uid = event?.uid;
        if (uid == null) {
          return null;
        }

        final fetchUserResult = await _appErrorHandler.handle(
          () {
            return _fetchUser(uid);
          },
        );

        return fetchUserResult.fold(
          (_) => null,
          (user) => user,
        );
      },
    );
  }

  @override
  Future<Either<AppError, void>> sendPasswordResetEmail({
    required String email,
  }) {
    final result = _appErrorHandler.handle(() async {
      final result = await _firebaseAuth.sendPasswordResetEmail(email: email);
      return result;
    });

    return result;
  }

  @override
  Future<Either<AppError, void>> signOut() {
    final signOutResult = _appErrorHandler.handle(() async {
      final result = _firebaseAuth.signOut();
      return result;
    });

    return signOutResult;
  }
}
