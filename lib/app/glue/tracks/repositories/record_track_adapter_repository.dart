import 'package:dartz/dartz.dart';
import 'package:uniqtrack/app/glue/tracks/mappers/position_mapper.dart';
import 'package:uniqtrack/app/glue/tracks/mappers/track_mapper.dart';
import 'package:uniqtrack/core/common/app_location_handler/app_location_handler.dart';
import 'package:uniqtrack/core/common/app_location_handler/entities/app_location_permission_result.dart';
import 'package:uniqtrack/core/common/app_location_handler/entities/location_settings.dart';
import 'package:uniqtrack/core/common/exceptions/exceptions.dart';
import 'package:uniqtrack/data/accounts/accounts_data_repository.dart';
import 'package:uniqtrack/data/tracks/tracks_data_repository.dart';
import 'package:uniqtrack/features/tracks/domain/entities/entities.dart';
import 'package:uniqtrack/features/tracks/domain/record_track_repository.dart';

class RecordTrackAdapterRepository implements RecordTrackRepository {
  final AppLocationHandler _appLocationHandler;
  final PositionMapper _positionMapper;
  final TrackMapper _trackMapper;

  final AccountsDataRepository _accountsDataRepository;
  final TracksDataRepository _tracksDataRepository;

  const RecordTrackAdapterRepository({
    required AppLocationHandler appLocationHandler,
    required PositionMapper positionMapper,
    required TrackMapper trackMapper,
    required AccountsDataRepository accountsDataRepository,
    required TracksDataRepository tracksDataRepository,
  })  : _appLocationHandler = appLocationHandler,
        _positionMapper = positionMapper,
        _trackMapper = trackMapper,
        _accountsDataRepository = accountsDataRepository,
        _tracksDataRepository = tracksDataRepository;

  @override
  Future<AppLocationPermissionResult> requestLocationPermission() {
    return _appLocationHandler.requestLocationPermission();
  }

  @override
  Future<Position?> getCurrentPosition() async {
    final currentPosition = await _appLocationHandler.getCurrentPosition();
    return currentPosition != null
        ? _positionMapper.toPosition(currentPosition)
        : null;
  }

  @override
  Stream<Position> listenPositions(AppLocationSettings settings) {
    return _appLocationHandler.listenPositions(settings).map(
      (event) {
        return _positionMapper.toPosition(event);
      },
    );
  }

  @override
  Future<Either<AppError, void>> addRecordTrackData(Track track) async {
    final trackModel = _trackMapper.toTrackModel(track);

    final addRecordTrackDataResult =
        await _tracksDataRepository.addRecordTrackData(trackModel);

    final addRecordTrackDataFailureResult = addRecordTrackDataResult.fold(
      (value) => value,
      (_) => null,
    );

    if (addRecordTrackDataFailureResult != null) {
      return Left(addRecordTrackDataFailureResult);
    }

    final addMyRecordTrackDataResult =
        await _accountsDataRepository.addMyRecordTrackData(trackModel);

    final addMyRecordTrackDataFailureResult = addMyRecordTrackDataResult.fold(
      (value) => value,
      (_) => null,
    );

    if (addMyRecordTrackDataFailureResult != null) {
      return Left(addMyRecordTrackDataFailureResult);
    }

    return Right(addMyRecordTrackDataFailureResult);
  }

  @override
  Stream<List<Track>> listenTracks() {
    return _tracksDataRepository.listenTracks().map((list) {
      return list.map((item) {
        return _trackMapper.toTrack(item);
      }).toList();
    });
  }
}
