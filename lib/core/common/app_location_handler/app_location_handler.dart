import 'package:uniqtrack/core/common/app_location_handler/entities/app_location_permission_result.dart';
import 'package:uniqtrack/core/common/app_location_handler/entities/app_position.dart';
import 'package:uniqtrack/core/common/app_location_handler/entities/location_settings.dart';

abstract interface class AppLocationHandler {
  Future<AppLocationPermissionResult> requestLocationPermission();

  Future<AppPosition?> getCurrentPosition();

  Stream<AppPosition> listenPositions(AppLocationSettings settings);
}
