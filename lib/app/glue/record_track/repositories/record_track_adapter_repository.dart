import 'package:uniqtrack/app/glue/record_track/mappers/position_mapper.dart';
import 'package:uniqtrack/core/common/app_location_handler/app_location_handler.dart';
import 'package:uniqtrack/core/common/app_location_handler/entities/app_location_permission_result.dart';
import 'package:uniqtrack/core/common/app_location_handler/entities/location_settings.dart';
import 'package:uniqtrack/features/record_track/domain/entities/position.dart';
import 'package:uniqtrack/features/record_track/domain/repositories/record_track_repository.dart';

class RecordTrackAdapterRepository implements RecordTrackRepository {
  final AppLocationHandler _appLocationHandler;
  final PositionMapper _positionMapper;

  const RecordTrackAdapterRepository({
    required AppLocationHandler appLocationHandler,
    required PositionMapper positionMapper,
  })  : _appLocationHandler = appLocationHandler,
        _positionMapper = positionMapper;

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
}
