import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:geolocator/geolocator.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:uniqtrack/core/common/app_location_handler/app_location_handler.dart';
import 'package:uniqtrack/core/common/app_location_handler/entities/app_location_data_settings.dart';
import 'package:uniqtrack/core/common/app_location_handler/entities/app_location_permission_result.dart';
import 'package:uniqtrack/core/common/app_location_handler/entities/app_position.dart';
import 'package:uniqtrack/core/common/app_location_handler/entities/app_location_settings.dart';
import 'package:uniqtrack/core/common/error_handler/app_error_handler.dart';
import 'package:uniqtrack/core/common/error_handler/impl/app_error_handler_impl.dart';
import 'package:uniqtrack/core/common/exceptions/exceptions.dart';
import 'package:uniqtrack/data/accounts/providers/providers.dart';

part 'app_location_handler_impl.g.dart';

@riverpod
AppLocationHandler appLocationHandler(AppLocationHandlerRef ref) {
  final firebaseFireStore = ref.watch(firebaseFireStoreProvider);
  final appErrorHandler = ref.watch(appErrorHandlerProvider);

  return AppLocationHandlerImpl(
    firebaseFireStore: firebaseFireStore,
    appErrorHandler: appErrorHandler,
  );
}

class AppLocationHandlerImpl implements AppLocationHandler {
  final FirebaseFirestore _firebaseFireStore;
  final AppErrorHandler _appErrorHandler;

  static get settingsPath => "settings/locationSettings";

  const AppLocationHandlerImpl({
    required FirebaseFirestore firebaseFireStore,
    required AppErrorHandler appErrorHandler,
  })  : _firebaseFireStore = firebaseFireStore,
        _appErrorHandler = appErrorHandler;

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
      final settingsResult = await _getAppLocationDataSettings();
      final settingsData = settingsResult.fold(
        (_) => null,
        (data) => data,
      );

      result = await Geolocator.getCurrentPosition(
        timeLimit: duration,
        desiredAccuracy: settingsData?.accuracy ?? LocationAccuracy.best,
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
            altitude: result.altitude,
          )
        : null;

    return appPosition;
  }

  @override
  Future<(Stream<AppPosition>, AppLocationDataSettings?)> watchPositions(
      AppLocationSettings settings) async {
    final isAndroid = defaultTargetPlatform == TargetPlatform.android;
    final isIOS = defaultTargetPlatform == TargetPlatform.iOS;
    final isMacOS = defaultTargetPlatform == TargetPlatform.macOS;

    final foregroundNotificationConfig = ForegroundNotificationConfig(
      notificationText: settings.notificationTitle,
      notificationTitle: settings.notificationBody,
      enableWakeLock: true,
    );

    late final LocationSettings locationSettings;

    final settingsResult = await _getAppLocationDataSettings();
    final settingsData = settingsResult.fold(
      (_) => null,
      (data) => data,
    );

    if (isAndroid) {
      locationSettings = AndroidSettings(
        accuracy: settingsData?.accuracy ?? LocationAccuracy.best,
        distanceFilter: settingsData?.distanceFilter ?? 0,
        intervalDuration: settingsData?.intervalDuration,
        foregroundNotificationConfig: foregroundNotificationConfig,
      );
    } else if (isIOS || isMacOS) {
      locationSettings = AppleSettings(
        accuracy: settingsData?.accuracy ?? LocationAccuracy.best,
        distanceFilter: settingsData?.distanceFilter ?? 0,
        pauseLocationUpdatesAutomatically: true,
        showBackgroundLocationIndicator: true,
        allowBackgroundLocationUpdates: true,
      );
    } else {
      locationSettings = LocationSettings(
        accuracy: settingsData?.accuracy ?? LocationAccuracy.best,
        distanceFilter: settingsData?.distanceFilter ?? 0,
      );
    }

    final stream = Geolocator.getPositionStream(locationSettings: locationSettings).map(
          (event) {
        return AppPosition(
          latitude: event.latitude,
          longitude: event.longitude,
          altitude: event.altitude,
        );
      },
    );

    return (stream, settingsData);
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

  Future<Either<AppError, AppLocationDataSettings>>
      _getAppLocationDataSettings() async {
    final result = _appErrorHandler.handle(call: () async {
      final doc = await _firebaseFireStore.doc(settingsPath).get();
      final data = doc.data()!;
      return AppLocationDataSettings.fromJson(data);
    });

    return result;
  }
}
