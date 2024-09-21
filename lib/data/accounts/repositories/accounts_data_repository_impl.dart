import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:rxdart/rxdart.dart';
import 'package:uniqtrack/core/common/error_handler/app_error_handler.dart';
import 'package:uniqtrack/core/common/exceptions/exceptions.dart';
import 'package:uniqtrack/core/common/iterable_extensions.dart';
import 'package:uniqtrack/data/accounts/models/models.dart';
import 'package:uniqtrack/data/accounts/accounts_data_repository.dart';
import 'package:uniqtrack/data/accounts/parameters/parameters.dart';
import 'package:uniqtrack/data/accounts/sorters/sorter.dart';
import 'package:uniqtrack/data/tracks/models/models.dart';
import 'package:uuid/uuid.dart';

class AccountsDataRepositoryImpl implements AccountsDataRepository {
  final FirebaseAuth _firebaseAuth;
  final FirebaseStorage _firebaseStorage;
  final FirebaseFirestore _firebaseFireStore;
  final AppErrorHandler _appErrorHandler;
  final Sorter _sorter;
  final Uuid _uuid;

  static String userTracksPath(String userId) => "users/$userId/tracks";

  static String userTrackPath(String userId, String id) =>
      "users/$userId/tracks/$id";

  static String userFavouriteTracksPath(String userId) =>
      "users/$userId/favouriteTracks";

  static String userFavouriteTrackPath(String userId, String trackId) =>
      "users/$userId/favouriteTracks/$trackId";

  static String usersPath = "users";
  static String profilePicturesPath = "profilePictures";

  const AccountsDataRepositoryImpl({
    required FirebaseAuth firebaseAuth,
    required FirebaseStorage firebaseStorage,
    required AppErrorHandler appErrorHandler,
    required Uuid uuid,
    required FirebaseFirestore firebaseFireStore,
    required Sorter sorter,
  })  : _firebaseAuth = firebaseAuth,
        _appErrorHandler = appErrorHandler,
        _firebaseStorage = firebaseStorage,
        _uuid = uuid,
        _firebaseFireStore = firebaseFireStore,
        _sorter = sorter;

  @override
  Future<Either<AppError, void>> register(
      RegisterDataParameters parameters) async {
    final result = _appErrorHandler.handle(
      call: () => _registerWithoutHandleError(parameters),
    );

    return result;
  }

  @override
  Future<Either<AppError, void>> login(LoginDataParameters parameters) {
    final result = _appErrorHandler.handle(
      call: () => _loginWithoutHandleError(parameters),
    );

    return result;
  }

  @override
  Future<Either<AppError, UserModel?>> fetchUserByUid(String uid) async {
    final result = _appErrorHandler.handle(
      call: () => _fetchUser(uid),
    );

    return result;
  }

  @override
  Stream<UserModel?> authStateChanges() {
    return _firebaseAuth.authStateChanges().asyncMap(
      (event) async {
        final uid = event?.uid;
        if (uid == null) return null;

        final fetchUserResult = await _appErrorHandler.handle(
          call: () => _fetchUser(uid),
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
    final result = _appErrorHandler.handle(
      call: () async {
        final result = await _firebaseAuth.sendPasswordResetEmail(email: email);
        return result;
      },
    );

    return result;
  }

  @override
  Future<Either<AppError, void>> signOut() {
    final signOutResult = _appErrorHandler.handle(
      call: () async {
        final result = _firebaseAuth.signOut();
        return result;
      },
    );

    return signOutResult;
  }

  @override
  Future<Either<AppError, void>> addMyRecordTrackData({
    required TrackModel track,
    required String trackId,
  }) {
    final result = _appErrorHandler.handle(
      call: () => _saveMyRecordTrackData(
        track: track,
        trackId: trackId,
      ),
    );

    return result;
  }

  @override
  Future<UserModel?> fetchCurrentUser() async {
    final result = await _appErrorHandler.handle(
      call: () async {
        final currentUser = _firebaseAuth.currentUser;
        final uid = currentUser?.uid;
        if (uid == null) return null;
        final user = await _fetchUser(uid);
        return user;
      },
    );

    return result.fold(
      (_) => null,
      (user) => user,
    );
  }

  @override
  Stream<List<TrackModel>> watchUserTracks() {
    return _firebaseAuth.authStateChanges().exhaustMap(_watchUserTracks);
  }

  Stream<List<TrackModel>> _watchUserTracks(User? user) {
    final userId = _firebaseAuth.currentUser?.uid;

    if (userId == null) {
      final category = AuthenticationErrorCategory.notAuth();
      final error = AppError.authentication(category: category);
      return Stream.error(error);
    }

    return _queryTracks(userTracksPath(userId))
        .snapshots()
        .map(_snapshotListTracks);
  }

  @override
  Stream<List<TrackModel>> watchUserFavouriteTracks() {
    return _firebaseAuth
        .authStateChanges()
        .exhaustMap(_watchUserFavouriteTracks);
  }

  Stream<List<TrackModel>> _watchUserFavouriteTracks(User? user) {
    final userId = _firebaseAuth.currentUser?.uid;

    if (userId == null) {
      final category = AuthenticationErrorCategory.notAuth();
      final error = AppError.authentication(category: category);
      return Stream.error(error);
    }

    return _queryTracks(userFavouriteTracksPath(userId))
        .snapshots()
        .map(_snapshotListTracks);
  }

  Query<TrackModel?> _queryTracks(String path) {
    return _firebaseFireStore.collection(path).withConverter<TrackModel?>(
          fromFirestore: _fromFirebaseTrackConverter,
          toFirestore: _toFirebaseTrackConverter,
        );
  }

  Future<String> _register({
    required String email,
    required String password,
  }) async {
    final createUserWithEmailAndPasswordResult =
        await _firebaseAuth.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );

    final uid = createUserWithEmailAndPasswordResult.user?.uid;
    return uid!;
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

      final ref = _firebaseStorage.ref().child(profilePicturesPath).child(uid);
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
      email: email,
      password: password,
    );
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

    await doc.set(json);
  }

  Future<UserModel?> _fetchUser(String uid) async {
    final collection = _firebaseFireStore.collection(usersPath);
    final doc = await collection.doc(uid).get();
    final data = doc.data();
    final userModel = data != null ? UserModel.fromJson(data) : null;
    return userModel;
  }

  Future<String> _saveMyRecordTrackData({
    required TrackModel track,
    required String trackId,
  }) async {
    final userId = _firebaseAuth.currentUser?.uid;

    if (userId == null) {
      final category = AuthenticationErrorCategory.notAuth();
      throw AppError.authentication(category: category);
    }

    final withCreatorIdTrack =
        track.copyWith(creatorId: userId, trackId: trackId);
    final json = withCreatorIdTrack.toJson();
    final collection = _firebaseFireStore.collection(userTracksPath(userId));
    final doc = await collection.add(json);
    final newTrack = withCreatorIdTrack.copyWith(id: doc.id);
    final withIdTrackJson = newTrack.toJson();
    await doc.set(withIdTrackJson);
    return doc.id;
  }

  @override
  Future<Either<AppError, void>> addToFavouriteTracks(TrackModel track) {
    return _appErrorHandler.handle(
      call: () async {
        final userId = _firebaseAuth.currentUser?.uid;
        final trackId = track.id;

        if (userId == null) {
          final category = AuthenticationErrorCategory.notAuth();
          throw AppError.authentication(category: category);
        }

        final favouriteTracks = await _queryFavouriteTracks(userId);
        final hasFavouriteTrack = favouriteTracks
            .firstWhereOrNull((item) => item.trackId == track.trackId);

        final alreadyAddedInFavourites = hasFavouriteTrack != null;

        if (alreadyAddedInFavourites) {
          final category = AccessErrorCategory.alreadyAddedInFavourite();
          throw AppError.access(category: category);
        }

        if (trackId == null) {
          final category = AccessErrorCategory.noID();
          throw AppError.access(category: category);
        }

        final path = userFavouriteTracksPath(userId);

        final jsonTrack = track.toJson();
        final collection = _firebaseFireStore.collection(path);
        final doc = await collection.add(jsonTrack);
        final id = doc.id;
        final newTrack = track.copyWith(id: id);
        final jsonNewTrack = newTrack.toJson();
        await doc.set(jsonNewTrack);
      },
    );
  }

  Future<List<TrackModel>> _queryMyTracksTracks(String userId) async {
    final path = userTracksPath(userId);
    final query = await _queryTracks(path).get();

    return query.docs.map(_snapshotToTrackModel).nonNulls.toList();
  }

  Future<List<TrackModel>> _queryFavouriteTracks(String userId) async {
    final path = userFavouriteTracksPath(userId);
    final query = await _queryTracks(path).get();

    return query.docs.map(_snapshotToTrackModel).nonNulls.toList();
  }

  @override
  Future<Either<AppError, void>> removeFromFavouriteTracks(TrackModel track) {
    return _appErrorHandler.handle(
      call: () async {
        final userId = _firebaseAuth.currentUser?.uid;
        final trackId = track.id;

        if (userId == null) {
          final category = AuthenticationErrorCategory.notAuth();
          throw AppError.authentication(category: category);
        }

        final favouriteTracks = await _queryFavouriteTracks(userId);
        final hasFavouriteTrack = favouriteTracks
            .firstWhereOrNull((item) => item.trackId == track.trackId);

        final alreadyAddedInFavourites = hasFavouriteTrack != null;

        if (!alreadyAddedInFavourites) {
          final category = AccessErrorCategory.notAddedToFavorites();
          throw AppError.access(category: category);
        }

        if (trackId == null) {
          final category = AccessErrorCategory.noID();
          throw AppError.access(category: category);
        }

        final path = userFavouriteTracksPath(userId);

        final collectionRef = _firebaseFireStore.collection(path);
        final items = await collectionRef.get();

        await Future.forEach(
          items.docs,
          (item) async {
            final data = item.data();
            final itemTrack = TrackModel.fromJson(data);

            final trackId = track.trackId;
            final itemTrackId = itemTrack.trackId;

            if (trackId == itemTrackId) {
              await item.reference.delete();
            }
          },
        );

        final trackPath = userFavouriteTrackPath(userId, trackId);

        final trackRef = await _firebaseFireStore.doc(trackPath);
        await trackRef.delete();
      },
    );
  }

  @override
  Future<Either<AppError, void>> removeFromMyTracks(TrackModel track) {
    return _appErrorHandler.handle(
      call: () async {
        final userId = _firebaseAuth.currentUser?.uid;
        final trackId = track.id;
        final creatorId = track.creatorId;

        if (userId == null) {
          final category = AuthenticationErrorCategory.notAuth();
          throw AppError.authentication(category: category);
        }

        final userTracks = await _queryMyTracksTracks(userId);
        final hasMyTrackTrack = userTracks
            .firstWhereOrNull((item) => item.trackId == track.trackId);

        final alreadyAddedInFavourites = hasMyTrackTrack != null;

        if (!alreadyAddedInFavourites) {
          final category = AccessErrorCategory.notAddedToUserTracks();
          throw AppError.access(category: category);
        }

        if (userId != creatorId) {
          final category = AccessErrorCategory.noRemoveRights();
          throw AppError.access(category: category);
        }

        if (trackId == null) {
          final category = AccessErrorCategory.noID();
          throw AppError.access(category: category);
        }

        final tracksPath = userTracksPath(userId);

        final collectionRef = _firebaseFireStore.collection(tracksPath);
        final items = await collectionRef.get();

        await Future.forEach(
          items.docs,
          (item) async {
            final data = item.data();
            final itemTrack = TrackModel.fromJson(data);

            final trackId = track.trackId;
            final itemTrackId = itemTrack.trackId;

            if (trackId == itemTrackId) {
              await item.reference.delete();
            }
          },
        );

        final trackPath = userTrackPath(userId, trackId);

        final trackRef = await _firebaseFireStore.doc(trackPath);
        await trackRef.delete();
      },
    );
  }

  @override
  Stream<TrackModel?> watchFavouriteTrack(String id) {
    return _firebaseAuth.authStateChanges().exhaustMap(
      (user) {
        final userId = user?.uid;

        if (userId == null) {
          final category = AuthenticationErrorCategory.notAuth();
          return Stream.error(AppError.authentication(category: category));
        }

        return _watchFavouriteTrack(id: id, userId: userId);
      },
    );
  }

  Stream<TrackModel?> _watchFavouriteTrack({
    required String id,
    required String userId,
  }) {
    final path = userFavouriteTrackPath(userId, id);

    return _firebaseFireStore
        .doc(path)
        .withConverter<TrackModel?>(
          fromFirestore: _fromFirebaseTrackConverter,
          toFirestore: _toFirebaseTrackConverter,
        )
        .snapshots()
        .map(_snapshotToTrackModel);
  }

  @override
  Stream<TrackModel?> watchMyTrack(String id) {
    return _firebaseAuth.authStateChanges().exhaustMap(
      (user) {
        final userId = user?.uid;

        if (userId == null) {
          final category = AuthenticationErrorCategory.notAuth();
          return Stream.error(AppError.authentication(category: category));
        }

        return _watchMyTrack(id: id, userId: userId);
      },
    );
  }

  Stream<TrackModel?> _watchMyTrack({
    required String id,
    required String userId,
  }) {
    final trackPath = userTrackPath(userId, id);

    return _firebaseFireStore
        .doc(trackPath)
        .withConverter<TrackModel?>(
          fromFirestore: _fromFirebaseTrackConverter,
          toFirestore: _toFirebaseTrackConverter,
        )
        .snapshots()
        .map(_snapshotToTrackModel);
  }

  TrackModel? _fromFirebaseTrackConverter(
      DocumentSnapshot<Map<String, dynamic>> snapshot,
      SnapshotOptions? options) {
    final data = snapshot.data();
    if (data == null) return null;
    return TrackModel.fromJson(data);
  }

  Map<String, Object?> _toFirebaseTrackConverter(
      TrackModel? value, SetOptions? options) {
    return value?.toJson() ?? {};
  }

  TrackModel? _snapshotToTrackModel(DocumentSnapshot<TrackModel?> event) {
    return event.data();
  }

  int _sortTracks(TrackModel? firstItem, TrackModel? secondItem) {
    final firstDateCreated = firstItem?.dateCreated;
    final secondDateCreated = secondItem?.dateCreated;
    return _sorter.sortByDate(firstDateCreated, secondDateCreated);
  }

  List<TrackModel> _snapshotListTracks(QuerySnapshot<TrackModel?> snapshot) {
    final docs = snapshot.docs;
    final result = docs.map((doc) {
      return doc.data();
    }).toList()
      ..sort(_sortTracks);

    return result.nonNulls.toList();
  }
}
