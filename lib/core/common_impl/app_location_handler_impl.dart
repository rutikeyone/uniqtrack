import 'package:flutter/foundation.dart';
import 'package:geolocator/geolocator.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:uniqtrack/core/common/app_location_handler/app_location_handler.dart';
import 'package:uniqtrack/core/common/app_location_handler/entities/app_location_permission_result.dart';
import 'package:uniqtrack/core/common/app_location_handler/entities/app_position.dart';
import 'package:uniqtrack/core/common/app_location_handler/entities/location_settings.dart';

part 'app_location_handler_impl.g.dart';

@Riverpod(dependencies: [])
AppLocationHandler appLocationHandler(AppLocationHandlerRef ref) {
  return AppLocationHandlerImpl();
}

class AppLocationHandlerImpl implements AppLocationHandler {
  @override
  Future<AppLocationPermissionResult> requestLocationPermission() async {
    final isLocationServiceEnabled =
        await Geolocator.isLocationServiceEnabled();

    if (!isLocationServiceEnabled) {
      return AppLocationPermissionResult.serviceDisabled();
    }

    final permission = await Geolocator.checkPermission();
    final isPermissionDeniedByFirstCheck =
        permission == LocationPermission.denied;
    final isPermissionDeniedForeverByFirstCheck =
        permission == LocationPermission.deniedForever;

    if (isPermissionDeniedByFirstCheck) {
      final permissionResult = await Geolocator.requestPermission();
      final isPermissionDeniedBySecondCheck =
          permissionResult == LocationPermission.denied;
      final isPermissionDeniedForeverBySecondCheck =
          permissionResult == LocationPermission.deniedForever;

      if (isPermissionDeniedBySecondCheck) {
        return const AppLocationPermissionResult.permissionDenied();
      } else if (isPermissionDeniedForeverBySecondCheck) {
        return const AppLocationPermissionResult.permissionDeniedForever();
      }

      return const AppLocationPermissionResult.success();
    }

    if (isPermissionDeniedForeverByFirstCheck) {
      return const AppLocationPermissionResult.permissionDeniedForever();
    }

    return const AppLocationPermissionResult.success();
  }

  @override
  Future<AppPosition?> getCurrentPosition() async {
    const duration = Duration(seconds: 4);

    Position? result;

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

    final appPosition = result != null
        ? AppPosition(
            latitude: result.latitude,
            longitude: result.longitude,
          )
        : null;

    return appPosition;
  }

  @override
  Stream<AppPosition> listenPositions(AppLocationSettings settings) {
    final isAndroid = defaultTargetPlatform == TargetPlatform.android;
    final isIOS = defaultTargetPlatform == TargetPlatform.iOS;
    final isMacOS = defaultTargetPlatform == TargetPlatform.macOS;

    final foregroundNotificationConfig = ForegroundNotificationConfig(
      notificationText: settings.notificationTitle,
      notificationTitle: settings.notificationBody,
      enableWakeLock: true,
    );

    late final LocationSettings locationSettings;

    if (isAndroid) {
      locationSettings = AndroidSettings(
        accuracy: LocationAccuracy.best,
        distanceFilter: settings.distanceFilter,
        intervalDuration: settings.intervalDuration,
        foregroundNotificationConfig: foregroundNotificationConfig,
      );
    } else if (isIOS || isMacOS) {
      locationSettings = AppleSettings(
        accuracy: LocationAccuracy.high,
        distanceFilter: settings.distanceFilter,
        pauseLocationUpdatesAutomatically: true,
        showBackgroundLocationIndicator: true,
        allowBackgroundLocationUpdates: true,
      );
    } else {
      locationSettings = LocationSettings(
        accuracy: LocationAccuracy.best,
        distanceFilter: settings.distanceFilter,
      );
    }

    return Geolocator.getPositionStream(locationSettings: locationSettings).map(
      (event) {
        return AppPosition(
          latitude: event.latitude,
          longitude: event.longitude,
        );
      },
    );
  }

  @override
  double betweenDistance(
      AppPosition firstPosition, AppPosition secondPosition) {
    return Geolocator.distanceBetween(
      firstPosition.latitude,
      firstPosition.longitude,
      secondPosition.latitude,
      secondPosition.longitude,
    );
  }
}
