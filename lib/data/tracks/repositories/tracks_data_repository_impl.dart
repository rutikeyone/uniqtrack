import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:uniqtrack/core/common/error_handler/app_error_handler.dart';
import 'package:uniqtrack/core/common/exceptions/exceptions.dart';
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
  Future<Either<AppError, String>> saveTrack(TrackModel track) {
    final result = _appErrorHandler.handle(
      () => _addRecordTrackData(track),
    );

    return result;
  }

  @override
  Stream<List<TrackModel>> listenTracks() {
    return queryTracks().snapshots().map(
      (snapshot) {
        final docs = snapshot.docs;
        final result = docs.map((doc) {
          return doc.data();
        }).toList()
          ..sort(
            (firstItem, secondItem) {
              final firstDateCreated = firstItem.dateCreated;
              final secondDateCreated = secondItem.dateCreated;
              return _sorter.sortByDate(firstDateCreated, secondDateCreated);
            },
          );
        ;
        return result;
      },
    );
  }

  Query<TrackModel> queryTracks() =>
      _firebaseFireStore.collection(tracksPath).withConverter(
            fromFirestore: (snapshot, _) {
              return TrackModel.fromJson(snapshot.data()!);
            },
            toFirestore: (track, _) => track.toJson(),
          );

  Future<String> _addRecordTrackData(TrackModel track) async {
    final userId = _firebaseAuth.currentUser?.uid;

    if (userId == null) {
      final category = AuthenticationErrorCategory.notAuth();
      throw AppError.authentication(category: category);
    }

    final withCreatorIdTrack = track.copyWith(creatorId: userId);
    final withoutJson = withCreatorIdTrack.toJson();
    final collection = _firebaseFireStore.collection(tracksPath);
    final doc = await collection.add(withoutJson);
    final newTrack = withCreatorIdTrack.copyWith(id: doc.id);
    final withIdTrackJson = newTrack.toJson();
    await doc.set(withIdTrackJson);
    return doc.id;
  }

  @override
  Future<Either<AppError, int>> addTrack(TrackModel track) {
    final insertTrackResult = _appErrorHandler.handle(() {
      final trackCompanion = _trackMapper.toCompanion(track);
      return _appDatabase.tracksDao.insertTrack(trackCompanion);
    });

    return insertTrackResult;
  }

  @override
  Future<Either<AppError, void>> deleteAllTracks() {
    final deleteAllTracksResult = _appErrorHandler.handle(() {
      return _appDatabase.tracksDao.deleteAllTracks();
    });

    return deleteAllTracksResult;
  }

  @override
  Future<Either<AppError, TrackModel?>> getTrack() async {
    final getTrackResult = await _appErrorHandler.handle(() async {
      final track = await _appDatabase.tracksDao.getTrack();
      if (track == null) {
        return null;
      }
      return _trackMapper.toModel(track);
    });

    return getTrackResult;
  }

  @override
  Stream<TrackModel?> listenTrack(String id) {
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
  Future<Either<AppError, void>> removeTrack(TrackModel track) {
    return _appErrorHandler.handle(
      () async {
        final userId = _firebaseAuth.currentUser?.uid;
        final trackId = track.id;
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
            if (itemTrack.id == track.id) {
              await item.reference.delete();
            }
          },
        );

        final trackRef = await _firebaseFireStore.doc(trackPath(trackId));
        await trackRef.delete();
      },
    );
  }
}
