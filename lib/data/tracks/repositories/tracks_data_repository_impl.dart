import 'dart:collection';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';
import 'package:uniqtrack/core/common/error_handler/app_error_handler.dart';
import 'package:uniqtrack/core/common/exceptions/exceptions.dart';
import 'package:uniqtrack/core/common/extensions/iterable_extensions.dart';
import 'package:uniqtrack/data/accounts/sorters/sorter.dart';
import 'package:uniqtrack/data/app_database.dart';
import 'package:uniqtrack/data/tracks/mappers/track_db_mapper.dart';
import 'package:uniqtrack/data/tracks/models/models.dart';
import 'package:uniqtrack/data/tracks/tracks_data_repository.dart';

class TracksDataRepositoryImpl implements TracksDataRepository {
  final AppDatabase _appDatabase;
  final FirebaseFirestore _firebaseFireStore;
  final FirebaseAuth _firebaseAuth;
  final AppErrorHandler _appErrorHandler;
  final Sorter _sorter;
  final TrackDbMapper _trackMapper;

  static String tracksPath = "tracks";

  static String trackPath(String id) => "tracks/$id";

  static String myTracksPath(String userId) => "users/$userId/tracks";

  static String userTrackPath(String userId, String id) =>
      "users/$userId/tracks/$id";

  static String userFavouriteTracksPath(String userId) =>
      "users/$userId/favouriteTracks";

  static String userFavouriteTrackPath(String userId, String trackId) =>
      "users/$userId/favouriteTracks/$trackId";

  static String favouriteTracksPath = "favouriteTracks";

  static String favouriteTrackPath(String trackId) =>
      "tracks/$trackId/favouriteTracks";

  const TracksDataRepositoryImpl({
    required AppDatabase appDatabase,
    required FirebaseFirestore firebaseFireStore,
    required FirebaseAuth firebaseAuth,
    required AppErrorHandler appErrorHandler,
    required Sorter sorter,
    required TrackDbMapper trackMapper,
  })  : _appDatabase = appDatabase,
        _firebaseFireStore = firebaseFireStore,
        _firebaseAuth = firebaseAuth,
        _appErrorHandler = appErrorHandler,
        _sorter = sorter,
        _trackMapper = trackMapper;

  @override
  Future<Either<AppError, String>> addTrack(TrackModel track) {
    final result = _appErrorHandler.handle(
      call: () => _addTrack(track),
    );

    return result;
  }

  @override
  Future<Either<AppError, void>> addMyTrack(TrackModel track, String? trackId) {
    final result = _appErrorHandler.handle(
      call: () => _addMyTrack(
        track: track,
        trackId: trackId,
      ),
    );

    return result;
  }

  @override
  Future<Either<AppError, void>> addFavouriteTrack(TrackModel track) {
    return _appErrorHandler.handle(
      call: () async {
        final userId = _firebaseAuth.currentUser?.uid;
        final trackId = track.trackId;
        final creatorId = track.creatorId;

        if (userId == null) {
          final category = AuthenticationErrorCategory.notAuth();
          throw AppError.authentication(category: category);
        }

        if (trackId == null) {
          final category = AccessErrorCategory.noID();
          throw AppError.access(category: category);
        }

        if (userId == creatorId) {
          final category = AccessErrorCategory.userIsTheCreatorOfTheTrack();
          throw AppError.access(category: category);
        }

        final favouriteTracks = await _queryFavouriteTracks(userId);
        final hasFavouriteTrack = favouriteTracks
            .firstWhereOrNull((item) => item.trackId == track.trackId);

        final alreadyAddedInFavourites = hasFavouriteTrack != null;

        if (alreadyAddedInFavourites) {
          final category = AccessErrorCategory.alreadyAddedInFavourite();
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

        await _addFavouriteTrackData(
          favouriteTrackId: id,
          userId: userId,
          trackId: trackId,
        );
      },
    );
  }

  @override
  Future<Either<AppError, int>> addLastTrack(TrackModel track) {
    final insertTrackResult = _appErrorHandler.handle(
      call: () {
        final trackCompanion = _trackMapper.toCompanion(track);
        return _appDatabase.tracksDao.insertTrack(trackCompanion);
      },
    );

    return insertTrackResult;
  }

  @override
  Stream<List<TrackModel>> watchTracks() {
    return _queryTracks(tracksPath).snapshots().map(
      (snapshot) {
        final docs = snapshot.docs;
        final result = docs.map((doc) {
          return doc.data();
        }).toList()
          ..sort(_sortTracks);

        return result.nonNulls.toList();
      },
    );
  }

  @override
  Stream<TrackModel?> watchTrack(String id) {
    return _firebaseFireStore
        .doc(trackPath(id))
        .withConverter<TrackModel?>(
          fromFirestore: (snapshot, _) {
            final data = snapshot.data();
            if (data == null) return null;
            return TrackModel.fromJson(data);
          },
          toFirestore: (track, _) => track?.toJson() ?? {},
        )
        .snapshots()
        .map((snapshot) => snapshot.data());
  }

  @override
  Stream<List<TrackModel>> watchFavouriteTracks() {
    return _firebaseAuth
        .authStateChanges()
        .exhaustMap(_watchUserFavouriteTracks);
  }

  @override
  Stream<TrackModel?> watchFavouriteTrack(String id) {
    return _firebaseAuth.authStateChanges().exhaustMap(
      (user) {
        final userId = user?.uid;

        if (userId == null) {
          final category = AuthenticationErrorCategory.notAuth();
          final error = AppError.authentication(category: category);
          return Stream.error(error);
        }

        return _watchFavouriteTrack(id: id, userId: userId);
      },
    );
  }

  @override
  Stream<List<TrackModel>> watchMyTracks() {
    return _firebaseAuth.authStateChanges().exhaustMap(_watchMyTracks);
  }

  @override
  Stream<TrackModel?> watchMyTrack(String id) {
    return _firebaseAuth.authStateChanges().exhaustMap(
      (user) {
        final userId = user?.uid;

        if (userId == null) {
          final category = AuthenticationErrorCategory.notAuth();
          final error = AppError.authentication(category: category);
          return Stream.error(error);
        }

        return _watchMyTrack(id: id, userId: userId);
      },
    );
  }

  @override
  Future<Either<AppError, void>> updateTrack(TrackModel track) {
    return _appErrorHandler.handle(
      call: () async {
        final userId = _firebaseAuth.currentUser?.uid;

        final trackId = track.trackId;
        final creatorId = track.creatorId;

        if (userId == null) {
          final category = AuthenticationErrorCategory.notAuth();
          throw AppError.authentication(category: category);
        }

        if (userId != creatorId) {
          final category = AccessErrorCategory.noUpdateRights();
          throw AppError.access(category: category);
        }

        final tracks = await _getTracks();
        final docId =
            tracks.firstWhereOrNull((item) => item.trackId == trackId)?.id;

        if (docId == null) {
          final category = AccessErrorCategory.noID();
          throw AppError.access(category: category);
        }

        final trackRef = await _firebaseFireStore.doc(trackPath(docId));
        final newTrack = track.copyWith(id: docId);
        final data = newTrack.toJson();
        await trackRef.update(data);
      },
    );
  }

  @override
  Future<Either<AppError, void>> updateMemory(
      TrackModel track, MemoryModel memory) {
    return _appErrorHandler.handle(
      call: () {
        final oldMemories = track.memories;
        final containsMemory =
            oldMemories?.firstWhereOrNull((item) => item.id == memory.id) !=
                null;
        if (oldMemories == null || oldMemories.isEmpty || !containsMemory) {
          final category = AccessErrorCategory.notContainsElement();
          final error = AppError.access(category: category);
          throw error;
        }

        final index = oldMemories.indexWhere((item) => item.id == memory.id);
        final newMemories = List.of(oldMemories, growable: true);
        newMemories[index] = memory;

        final newTrack = track.copyWith(memories: newMemories);

        return updateTrack(newTrack);
      },
    );
  }

  @override
  Future<Either<AppError, void>> updateFavouriteTracks(TrackModel track) {
    return _appErrorHandler.handle(
      call: () async {
        final trackId = track.trackId;

        if (trackId == null) {
          final category = AccessErrorCategory.noID();
          throw AppError.access(category: category);
        }

        final favouriteTracksData = await _queryFavouriteTracksData(trackId);

        await Future.forEach(
          favouriteTracksData,
          (item) async {
            final userId = item.userId;
            final favouriteTrackId = item.favouriteTrackId;

            await _updateFavouriteTrack(
              userId: userId,
              favouriteTrackId: favouriteTrackId,
              track: track,
            );
          },
        );
      },
    );
  }

  @override
  Future<Either<AppError, void>> updateFavouriteTracksMemories(
      TrackModel track, MemoryModel memory) {
    return _appErrorHandler.handle(
      call: () {
        final oldMemories = track.memories;
        final containsMemory =
            oldMemories?.firstWhereOrNull((item) => item.id == memory.id) !=
                null;
        if (oldMemories == null || oldMemories.isEmpty || !containsMemory) {
          final category = AccessErrorCategory.notContainsElement();
          final error = AppError.access(category: category);
          throw error;
        }

        final index = oldMemories.indexWhere((item) => item.id == memory.id);
        final newMemories = List.of(oldMemories, growable: true);
        newMemories[index] = memory;

        final newTrack = track.copyWith(memories: newMemories);

        return updateFavouriteTracks(newTrack);
      },
    );
  }

  @override
  Future<Either<AppError, void>> updateMyTrackMemory(
      TrackModel track, MemoryModel memory) {
    return _appErrorHandler.handle(
      call: () {
        final oldMemories = track.memories;
        final containsMemory =
            oldMemories?.firstWhereOrNull((item) => item.id == memory.id) !=
                null;
        if (oldMemories == null || oldMemories.isEmpty || !containsMemory) {
          final category = AccessErrorCategory.notContainsElement();
          final error = AppError.access(category: category);
          throw error;
        }

        final index = oldMemories.indexWhere((item) => item.id == memory.id);
        final newMemories = List.of(oldMemories, growable: true);
        newMemories[index] = memory;

        final newTrack = track.copyWith(memories: newMemories);

        return updateMyTrack(newTrack);
      },
    );
  }

  @override
  Future<Either<AppError, void>> updateMyTrack(TrackModel track) {
    return _appErrorHandler.handle(
      call: () async {
        final userId = _firebaseAuth.currentUser?.uid;

        final trackId = track.trackId;
        final creatorId = track.creatorId;

        if (userId == null) {
          final category = AuthenticationErrorCategory.notAuth();
          throw AppError.authentication(category: category);
        }

        if (userId != creatorId) {
          final category = AccessErrorCategory.noUpdateRights();
          throw AppError.access(category: category);
        }

        final myTracks = await _queryMyTracksTracks(userId);
        final docId =
            myTracks.firstWhereOrNull((item) => item.trackId == trackId)?.id;

        if (docId == null) {
          final category = AccessErrorCategory.noID();
          throw AppError.access(category: category);
        }

        final trackRef =
            await _firebaseFireStore.doc(userTrackPath(userId, docId));

        final newTrack = track.copyWith(id: docId);
        final data = newTrack.toJson();
        await trackRef.update(data);
      },
    );
  }

  @override
  Future<Either<AppError, void>> removeMemory(
    TrackModel track,
    MemoryModel memory,
  ) {
    return _appErrorHandler.handle(
      call: () {
        final oldMemories = track.memories;
        final containsMemory = oldMemories?.contains(memory) ?? false;
        if (oldMemories == null || oldMemories.isEmpty || !containsMemory) {
          final category = AccessErrorCategory.notContainsElement();
          final error = AppError.access(category: category);
          throw error;
        }

        final newMemories = [...oldMemories]
          ..removeWhere((item) => item.id == memory.id);
        final newTrack = track.copyWith(memories: newMemories);

        return updateTrack(newTrack);
      },
    );
  }

  @override
  Future<Either<AppError, void>> removeTrack(TrackModel track) {
    return _appErrorHandler.handle(
      call: () async {
        final userId = _firebaseAuth.currentUser?.uid;
        final trackId = track.trackId;
        final creatorId = track.creatorId;

        if (userId == null) {
          final category = AuthenticationErrorCategory.notAuth();
          throw AppError.authentication(category: category);
        }

        if (userId != creatorId) {
          final category = AccessErrorCategory.noRemoveRights();
          throw AppError.access(category: category);
        }

        if (trackId == null) {
          final category = AccessErrorCategory.noID();
          throw AppError.access(category: category);
        }

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

        final trackRef = await _firebaseFireStore.doc(trackPath(trackId));
        await trackRef.delete();
      },
    );
  }

  @override
  Future<Either<AppError, void>> removeFavouriteTrack(TrackModel track) {
    return _appErrorHandler.handle(
      call: () async {
        final userId = _firebaseAuth.currentUser?.uid;
        final trackId = track.trackId;

        final creatorId = track.creatorId;

        if (userId == null) {
          final category = AuthenticationErrorCategory.notAuth();
          throw AppError.authentication(category: category);
        }

        if (userId == creatorId) {
          final category = AccessErrorCategory.userIsTheCreatorOfTheTrack();
          throw AppError.access(category: category);
        }

        final favouriteTracks = await _queryFavouriteTracks(userId);
        final hasFavouriteTrack = favouriteTracks
            .firstWhereOrNull((item) => item.trackId == track.trackId);

        final alreadyAddedInFavourites = hasFavouriteTrack != null;

        final id = hasFavouriteTrack?.id;

        if (!alreadyAddedInFavourites) {
          final category = AccessErrorCategory.notAddedToFavorites();
          throw AppError.access(category: category);
        }

        if (trackId == null || id == null) {
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

        final trackPath = userFavouriteTrackPath(userId, id);

        final trackRef = await _firebaseFireStore.doc(trackPath);
        await trackRef.delete();

        await _removeFavouriteData(
          userId: userId,
          trackId: trackId,
          favouriteTrackId: id,
        );
      },
    );
  }

  @override
  Future<Either<AppError, void>> removeMyTrack(TrackModel track) {
    return _appErrorHandler.handle(
      call: () async {
        final userId = _firebaseAuth.currentUser?.uid;
        final trackId = track.trackId;
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

        final myTracks = await _queryMyTracksTracks(userId);
        final docId =
            myTracks.firstWhereOrNull((item) => item.trackId == trackId)?.id;

        if (docId == null) {
          final category = AccessErrorCategory.noID();
          throw AppError.access(category: category);
        }

        final tracksPath = myTracksPath(userId);

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

        final trackPath = userTrackPath(userId, docId);

        final trackRef = await _firebaseFireStore.doc(trackPath);
        await trackRef.delete();
      },
    );
  }

  @override
  Future<Either<AppError, void>> removeFavouriteTrackMemory(
      TrackModel track, MemoryModel memory) async {
    return _appErrorHandler.handle(
      call: () {
        final oldMemories = track.memories;
        final containsMemory = oldMemories?.contains(memory) ?? false;
        if (oldMemories == null || oldMemories.isEmpty || !containsMemory) {
          final category = AccessErrorCategory.notContainsElement();
          final error = AppError.access(category: category);
          throw error;
        }

        final newMemories = [...oldMemories]
          ..removeWhere((item) => item.id == memory.id);
        final newTrack = track.copyWith(memories: newMemories);

        return updateFavouriteTracks(newTrack);
      },
    );
  }

  @override
  Future<Either<AppError, void>> removeMyTrackMemory(
    TrackModel track,
    MemoryModel memory,
  ) {
    return _appErrorHandler.handle(
      call: () {
        final oldMemories = track.memories;
        final containsMemory = oldMemories?.contains(memory) ?? false;
        if (oldMemories == null || oldMemories.isEmpty || !containsMemory) {
          final category = AccessErrorCategory.notContainsElement();
          final error = AppError.access(category: category);
          throw error;
        }

        final newMemories = [...oldMemories]
          ..removeWhere((item) => item.id == memory.id);
        final newTrack = track.copyWith(memories: newMemories);

        return updateMyTrack(newTrack);
      },
    );
  }

  @override
  Future<Either<AppError, void>> removeLastTracks() {
    final deleteAllTracksResult = _appErrorHandler.handle(
      call: () {
        return _appDatabase.tracksDao.deleteAllTracks();
      },
    );

    return deleteAllTracksResult;
  }

  @override
  Future<Either<AppError, TrackModel?>> getLastTrack() async {
    final getTrackResult = await _appErrorHandler.handle(
      call: () async {
        final track = await _appDatabase.tracksDao.getTrack();
        return track != null ? _trackMapper.toModel(track) : null;
      },
    );

    return getTrackResult;
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

  Future<List<TrackModel>> _queryMyTracksTracks(String userId) async {
    final path = myTracksPath(userId);
    final query = await _queryTracks(path).get();

    return query.docs.map(_snapshotToTrackModel).nonNulls.toList();
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

  Stream<List<TrackModel>> _watchUserFavouriteTracks(User? user) {
    final userId = _firebaseAuth.currentUser?.uid;

    if (userId == null) {
      final emptyList = List<TrackModel>.empty();
      return Stream.value(emptyList);
    }

    return _queryTracks(userFavouriteTracksPath(userId))
        .snapshots()
        .map(_snapshotListTracks);
  }

  List<TrackModel> _snapshotListTracks(QuerySnapshot<TrackModel?> snapshot) {
    final docs = snapshot.docs;
    final result = docs.map((doc) {
      return doc.data();
    }).toList()
      ..sort(_sortTracks);

    return result.nonNulls.toList();
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

  Future<String> _addTrack(TrackModel track) async {
    final userId = _firebaseAuth.currentUser?.uid;

    if (userId == null) {
      final category = AuthenticationErrorCategory.notAuth();
      throw AppError.authentication(category: category);
    }

    final withCreatorIdTrack = track.copyWith(
      creatorId: userId,
      memories: track.memories?.map((item) {
        return item.copyWith(creatorId: userId);
      }).toList(),
    );
    final withoutJson = withCreatorIdTrack.toJson();
    final collection = _firebaseFireStore.collection(tracksPath);
    final doc = await collection.add(withoutJson);
    final newTrack = withCreatorIdTrack.copyWith(id: doc.id, trackId: doc.id);
    final withIdTrackJson = newTrack.toJson();
    await doc.set(withIdTrackJson);
    return doc.id;
  }

  Future<String> _addMyTrack({
    required TrackModel track,
    required String? trackId,
  }) async {
    final userId = _firebaseAuth.currentUser?.uid;

    if (trackId == null) {
      final accessCategory = AccessErrorCategory.noID();
      final error = AppError.access(category: accessCategory);
      throw error;
    }

    if (userId == null) {
      final category = AuthenticationErrorCategory.notAuth();
      throw AppError.authentication(category: category);
    }

    final withCreatorIdTrack = track.copyWith(
      creatorId: userId,
      trackId: trackId,
      memories: track.memories?.map((item) {
        return item.copyWith(creatorId: userId);
      }).toList(),
    );

    final json = withCreatorIdTrack.toJson();
    final collection = _firebaseFireStore.collection(myTracksPath(userId));
    final doc = await collection.add(json);
    final newTrack = withCreatorIdTrack.copyWith(id: doc.id);
    final withIdTrackJson = newTrack.toJson();
    await doc.set(withIdTrackJson);
    return doc.id;
  }

  Stream<List<TrackModel>> _watchMyTracks(User? user) {
    final userId = _firebaseAuth.currentUser?.uid;

    if (userId == null) {
      final emptyList = List<TrackModel>.empty();
      return Stream.value(emptyList);
    }

    return _queryTracks(myTracksPath(userId))
        .snapshots()
        .map(_snapshotListTracks);
  }

  Query<TrackModel?> _queryTracks(String path) {
    return _firebaseFireStore.collection(path).withConverter<TrackModel?>(
          fromFirestore: (snapshot, _) {
            final data = snapshot.data();
            if (data == null) return null;
            return TrackModel.fromJson(data);
          },
          toFirestore: (track, _) => track?.toJson() ?? {},
        );
  }

  Future<List<TrackModel>> _queryFavouriteTracks(String userId) async {
    final path = userFavouriteTracksPath(userId);
    final query = await _queryTracks(path).get();

    return query.docs.map(_snapshotToTrackModel).nonNulls.toList();
  }

  Future<List<TrackModel>> _getTracks() async {
    final query = await _queryTracks(tracksPath).get();

    return query.docs.map((item) => item.data()).nonNulls.toList();
  }

  Future<List<FavouriteTrackDataModel>> _queryFavouriteTracksData(
      String trackId) async {
    final collection = await _firebaseFireStore
        .collection(favouriteTrackPath(trackId))
        .withConverter(
          fromFirestore: _fromFirebaseFavouriteTrackDataConverter,
          toFirestore: _toFirebaseFavouriteTrackConverter,
        )
        .get();

    final docs = collection.docs;
    final docsIterable = docs.map((item) {
      return item.data();
    });
    final result = docsIterable.nonNulls.toList();

    return result;
  }

  Future<void> _addFavouriteTrackData({
    required String userId,
    required String favouriteTrackId,
    required String trackId,
  }) async {
    final data = await _queryFavouriteTracksData(trackId);

    final favouriteTrack = data.firstWhereOrNull((item) {
      final itemFavouriteTrackId = item.favouriteTrackId;
      final itemUserId = item.userId;

      return itemUserId == userId && itemFavouriteTrackId == favouriteTrackId;
    });

    final containsData = favouriteTrack != null;

    if (containsData) {
      final alreadyContainsElementErrorCategory =
          AccessErrorCategory.alreadyContainsElement();
      throw AppError.access(category: alreadyContainsElementErrorCategory);
    }

    final model = FavouriteTrackDataModel(
      id: '-1',
      userId: userId,
      favouriteTrackId: favouriteTrackId,
    );
    final collection =
        await _firebaseFireStore.collection(favouriteTrackPath(trackId));
    final json = model.toJson();

    final doc = await collection.add(json);
    final id = doc.id;

    final withIdModel = model.copyWith(id: id);
    final jsonWithIdModel = withIdModel.toJson();

    await doc.set(jsonWithIdModel);
  }

  Future<void> _removeFavouriteData({
    required String userId,
    required String favouriteTrackId,
    required String trackId,
  }) async {
    final data = await _queryFavouriteTracksData(trackId);

    final favouriteTrackData = data.firstWhereOrNull((item) {
      final itemFavouriteTrackId = item.favouriteTrackId;
      final itemUserId = item.userId;

      return itemUserId == userId && itemFavouriteTrackId == favouriteTrackId;
    });

    final containsData = favouriteTrackData != null;

    if (!containsData) {
      final notContainsElementErrorCategory =
          AccessErrorCategory.notContainsElement();
      throw AppError.access(category: notContainsElementErrorCategory);
    }

    final id = favouriteTrackData.id;
    final collection =
        await _firebaseFireStore.collection(favouriteTrackPath(trackId));

    await collection.doc(id).delete();
  }

  FavouriteTrackDataModel? _fromFirebaseFavouriteTrackDataConverter(
      DocumentSnapshot<Map<String, dynamic>> snapshot,
      SnapshotOptions? options) {
    final data = snapshot.data();
    final favouriteTrackData =
        data != null ? FavouriteTrackDataModel.fromJson(data) : null;

    return favouriteTrackData;
  }

  Map<String, dynamic> _toFirebaseFavouriteTrackConverter(
      FavouriteTrackDataModel? data, SetOptions? options) {
    return data?.toJson() ?? {};
  }

  Future<void> _updateFavouriteTrack({
    required String userId,
    required TrackModel track,
    required String favouriteTrackId,
  }) async {
    final updatedTrack = track.copyWith(id: favouriteTrackId);
    final json = updatedTrack.toJson();

    final trackRef = await _firebaseFireStore
        .doc(userFavouriteTrackPath(userId, favouriteTrackId));
    await trackRef.update(json);
  }

  int _sortTracks(TrackModel? firstItem, TrackModel? secondItem) {
    final firstDateCreated = firstItem?.dateCreated;
    final secondDateCreated = secondItem?.dateCreated;
    return _sorter.sortByDate(firstDateCreated, secondDateCreated);
  }
}
