import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_location_permission_result.freezed.dart';

@freezed
class AppLocationPermissionResult with _$AppLocationPermissionResult {
  bool get isSuccess => this is AppLocationPermissionSuccessResult;

  const AppLocationPermissionResult._();

  const factory AppLocationPermissionResult.success() =
      AppLocationPermissionSuccessResult;
  const factory AppLocationPermissionResult.serviceDisabled() = AppLocationPermissionServiceDeniedResult;
  const factory AppLocationPermissionResult.permissionDenied() = AppLocationPermissionDeniedResult;
  const factory AppLocationPermissionResult.permissionDeniedForever() = AppLocationPermissionDeniedForeverResult;
}
