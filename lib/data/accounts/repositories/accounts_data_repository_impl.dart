import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:uniqtrack/core/common/error_handler/app_error_handler.dart';
import 'package:uniqtrack/core/common/exceptions/exceptions.dart';
import 'package:uniqtrack/core/common/firebase_auth_constants.dart';
import 'package:uniqtrack/data/accounts/models/models.dart';
import 'package:uniqtrack/data/accounts/accounts_data_repository.dart';
import 'package:uniqtrack/data/accounts/parameters/parameters.dart';
import 'package:uniqtrack/data/tracks/models/models.dart';
import 'package:uuid/uuid.dart';

class AccountsDataRepositoryImpl implements AccountsDataRepository {
  final FirebaseAuth _firebaseAuth;
  final FirebaseStorage _firebaseStorage;
  final FirebaseFirestore _firebaseFireStore;
  final AppErrorHandler _appErrorHandler;
  final Uuid _uuid;

  static String userTracksPath(String uid) => "users/$uid/tracks";
  static String usersPath = "users";

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

  @override
  Future<Either<AppError, void>> register(
      RegisterDataParameters parameters) async {
    final result = _appErrorHandler.handle(
      () => _registerWithoutHandleError(parameters),
    );

    return result;
  }

  @override
  Future<Either<AppError, void>> login(LoginDataParameters parameters) {
    final result = _appErrorHandler.handle(
      () {
        return _loginWithoutHandleError(parameters);
      },
    );

    return result;
  }

  @override
  Future<Either<AppError, UserModel>> fetchUserByUid(String uid) async {
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

  @override
  Future<Either<AppError, void>> addMyRecordTrackData(TrackModel track) {
    final result = _appErrorHandler.handle(
      () => _saveMyRecordTrackData(track),
    );

    return result;
  }

  @override
  Future<UserModel?> fetchCurrentUser() async {
    final result = await _appErrorHandler.handle(
      () async {
        final currentUser = _firebaseAuth.currentUser;
        final uid = currentUser?.uid;
        if (uid == null) return null;
        final user = await _fetchUser(uid);

        listenUserTracks(uid);

        return user;
      },
    );

    return result.fold(
      (_) => null,
      (user) => user,
    );
  }

  @override
  Stream<List<TrackModel>?> listenUserTracks(String uid) {
    return queryTracks(uid).snapshots().map(
      (snapshot) {
        final docs = snapshot.docs;
        final result = docs.map((doc) {
          return doc.data();
        }).toList();
        return result;
      },
    );
  }

  Query<TrackModel> queryTracks(String uid) =>
      _firebaseFireStore.collection(userTracksPath(uid)).withConverter(
            fromFirestore: (snapshot, _) =>
                TrackModel.fromJson(snapshot.data()!),
            toFirestore: (track, _) => track.toJson(),
          );

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
      RegisterDataParameters parameters) async {
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
    required RegisterDataParameters parameters,
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

  Future<void> _loginWithoutHandleError(LoginDataParameters parameters) async {
    final email = parameters.email;
    final password = parameters.password;

    await _firebaseAuth.signInWithEmailAndPassword(
        email: email, password: password);
  }

  Future<void> _uploadUserData({
    required RegisterDataParameters parameters,
    required String uid,
    required String? photo,
  }) async {
    final user = UserModel(
      userId: uid,
      name: parameters.name,
      email: parameters.email,
      photo: photo,
      gender: parameters.gender,
    );

    final json = user.toJson();
    final collection = _firebaseFireStore.collection(usersPath);

    final doc = collection.doc(uid);

    doc.set(json);
  }

  Future<UserModel> _fetchUser(String uid) async {
    final collection = _firebaseFireStore.collection(usersPath);
    final doc = await collection.doc(uid).get();
    final userModel = UserModel.fromJson(doc.data()!);
    return userModel;
  }

  Future<void> _saveMyRecordTrackData(TrackModel track) async {
    final userId = _firebaseAuth.currentUser?.uid;

    if (userId == null) {
      final category = AuthenticationErrorCategory.notAuth();
      throw AppError.authentication(category: category);
    }

    final json = track.copyWith(creatorId: userId).toJson();
    final collection = _firebaseFireStore.collection(userTracksPath(userId));
    collection.add(json);
  }
}
