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
import 'package:uuid/uuid.dart';

class RecordTrackAdapterRepository implements RecordTrackRepository {
  final AppLocationHandler _appLocationHandler;
  final PositionMapper _positionMapper;
  final TrackMapper _trackMapper;

  final AccountsDataRepository _accountsDataRepository;
  final TracksDataRepository _tracksDataRepository;

  final Uuid _uuid;

  const RecordTrackAdapterRepository({
    required AppLocationHandler appLocationHandler,
    required PositionMapper positionMapper,
    required TrackMapper trackMapper,
    required AccountsDataRepository accountsDataRepository,
    required TracksDataRepository tracksDataRepository,
    required Uuid uuid,
  })  : _appLocationHandler = appLocationHandler,
        _positionMapper = positionMapper,
        _trackMapper = trackMapper,
        _accountsDataRepository = accountsDataRepository,
        _tracksDataRepository = tracksDataRepository,
        _uuid = uuid;

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
  Future<Either<AppError, void>> saveRecordTrackData(Track track) async {
    final currentUser = await _accountsDataRepository.fetchCurrentUser();
    final user = currentUser?.userId;

    if (user == null) {
      final category = AuthenticationErrorCategory.notAuth();
      final appError = AppError.authentication(category: category);
      return Left(appError);
    }

    final trackModel = _trackMapper.toTrackModel(track).copyWith(
          id: _uuid.v1(),
          creatorId: user,
        );

    final saveRecordTrackDataResult =
        await _tracksDataRepository.saveRecordTrackData(trackModel);

    final saveRecordTrackDataFailureResult = saveRecordTrackDataResult.fold(
      (value) => value,
      (_) => null,
    );

    if (saveRecordTrackDataFailureResult != null) {
      return Left(saveRecordTrackDataFailureResult);
    }

    final saveMyRecordTrackDataResult =
        await _accountsDataRepository.saveMyRecordTrackData(
      track: trackModel,
      id: user,
    );

    final saveMyRecordTrackDataFailureResult = saveMyRecordTrackDataResult.fold(
      (value) => value,
      (_) => null,
    );

    if (saveMyRecordTrackDataFailureResult != null) {
      return Left(saveMyRecordTrackDataFailureResult);
    }

    return Right(saveMyRecordTrackDataFailureResult);
  }
}
