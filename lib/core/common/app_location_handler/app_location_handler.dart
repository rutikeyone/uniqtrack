import 'package:uniqtrack/core/common/app_location_handler/entities/app_location_data_settings.dart';
import 'package:uniqtrack/core/common/app_location_handler/entities/app_location_permission_result.dart';
import 'package:uniqtrack/core/common/app_location_handler/entities/app_position.dart';
import 'package:uniqtrack/core/common/app_location_handler/entities/app_location_settings.dart';

abstract interface class AppLocationHandler {
  Future<AppLocationPermissionResult> requestLocationPermission();

  Future<AppPosition?> getCurrentPosition();

  Future<(Stream<AppPosition>, AppLocationDataSettings?)> watchPositions(AppLocationSettings settings);

  double betweenDistance(AppPosition firstPosition, AppPosition secondPosition);
}
