import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_location_permission_result.freezed.dart';

@freezed
class AppLocationPermissionResult with _$AppLocationPermissionResult {
  const AppLocationPermissionResult._();

  const factory AppLocationPermissionResult.success() =
      _AppLocationPermissionSuccessResult;
  const factory AppLocationPermissionResult.serviceDisabled() = _AppLocationPermissionServiceDeniedResult;
  const factory AppLocationPermissionResult.permissionDenied() = _AppLocationPermissionDeniedResult;
  const factory AppLocationPermissionResult.permissionDeniedForever() = _AppLocationPermissionDeniedForeverResult;
}
