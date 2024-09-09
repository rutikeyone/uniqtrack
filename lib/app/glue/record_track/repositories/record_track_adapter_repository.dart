import 'package:geolocator/geolocator.dart';
import 'package:geolocator_platform_interface/src/models/position.dart';
import 'package:uniqtrack/core/common/app_location_handler/app_location_handler.dart';
import 'package:uniqtrack/core/common/app_location_handler/result/app_location_permission_result.dart';
import 'package:uniqtrack/features/record_track/domain/repositories/record_track_repository.dart';

class RecordTrackAdapterRepository implements RecordTrackRepository {
  final AppLocationHandler _appLocationHandler;

  const RecordTrackAdapterRepository({
    required AppLocationHandler appLocationHandler,
  }) : _appLocationHandler = appLocationHandler;

  @override
  Future<AppLocationPermissionResult> requestLocationPermission() {
    return _appLocationHandler.requestLocationPermission();
  }

  @override
  Future<Position?> getCurrentPosition() async {
    Position? result;

    const duration = Duration(seconds: 4);

    try {
      result = await Geolocator.getCurrentPosition(
        timeLimit: duration,
        desiredAccuracy: LocationAccuracy.best,
      );
    } catch (e) {
      try {
        result = await Geolocator.getLastKnownPosition();
      } catch (e) {
        result = null;
      }
    }

    return result;
  }
}
