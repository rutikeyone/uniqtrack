import 'package:uniqtrack/core/common/app_location_handler/entities/app_location_permission_result.dart';
import 'package:uniqtrack/core/common/app_location_handler/entities/location_settings.dart';
import 'package:uniqtrack/features/tracks/domain/entities/position.dart';

abstract interface class RecordTrackRepository {

  Future<AppLocationPermissionResult> requestLocationPermission();

  Future<Position?> getCurrentPosition();

  Stream<Position> listenPositions(AppLocationSettings settings);

}