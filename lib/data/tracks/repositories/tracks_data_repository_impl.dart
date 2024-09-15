import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:uniqtrack/core/common/error_handler/app_error_handler.dart';
import 'package:uniqtrack/core/common/exceptions/exceptions.dart';
import 'package:uniqtrack/core/common/firebase_auth_constants.dart';
import 'package:uniqtrack/data/tracks/models/models.dart';
import 'package:uniqtrack/data/tracks/tracks_data_repository.dart';

class TracksDataRepositoryImpl implements TracksDataRepository {
  final FirebaseFirestore _firebaseFireStore;
  final AppErrorHandler _appErrorHandler;

  const TracksDataRepositoryImpl({
    required FirebaseFirestore firebaseFireStore,
    required AppErrorHandler appErrorHandler,
  })  : _firebaseFireStore = firebaseFireStore,
        _appErrorHandler = appErrorHandler;

  @override
  Future<Either<AppError, void>> saveRecordTrackData(TrackModel track) {
    final result = _appErrorHandler.handle(
      () => _saveRecordTrackData(track),
    );

    return result;
  }

  Future<void> _saveRecordTrackData(TrackModel track) async {
    final json = track.toJson();
    final collection =
        _firebaseFireStore.collection(FirebaseAuthConstants.recordTracks);
    final doc = collection.doc(track.id ?? '0');
    doc.set(json);
  }
}
