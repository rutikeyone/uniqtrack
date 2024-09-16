import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:uniqtrack/core/common/error_handler/app_error_handler.dart';
import 'package:uniqtrack/core/common/exceptions/exceptions.dart';
import 'package:uniqtrack/data/tracks/models/models.dart';
import 'package:uniqtrack/data/tracks/tracks_data_repository.dart';

class TracksDataRepositoryImpl implements TracksDataRepository {
  final FirebaseFirestore _firebaseFireStore;
  final AppErrorHandler _appErrorHandler;

  final FirebaseAuth _firebaseAuth;

  static String tracksPath = "tracks";

  const TracksDataRepositoryImpl({
    required FirebaseFirestore firebaseFireStore,
    required AppErrorHandler appErrorHandler,
    required FirebaseAuth firebaseAuth,
  })  : _firebaseFireStore = firebaseFireStore,
        _appErrorHandler = appErrorHandler,
        _firebaseAuth = firebaseAuth;

  @override
  Future<Either<AppError, void>> addRecordTrackData(TrackModel track) {
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
        }).toList();
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

  Future<void> _addRecordTrackData(TrackModel track) async {
    final userId = _firebaseAuth.currentUser?.uid;

    if (userId == null) {
      final category = AuthenticationErrorCategory.notAuth();
      throw AppError.authentication(category: category);
    }

    final json = track.copyWith(creatorId: userId).toJson();
    final collection = _firebaseFireStore.collection(tracksPath);
    collection.add(json);
  }
}
