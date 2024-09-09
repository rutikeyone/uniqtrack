import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:uniqtrack/core/common/activity.dart';
import 'package:uniqtrack/core/common/app_location_handler/entities/location_settings.dart';
import 'package:uniqtrack/core/common/common_ui/common_ui_delegate.dart';
import 'package:uniqtrack/core/common/exceptions/exceptions.dart';
import 'package:uniqtrack/core/common/strings/app_strings.dart';
import 'package:uniqtrack/features/record_track/domain/entities/position.dart';
import 'package:uniqtrack/features/record_track/domain/repositories/record_track_repository.dart';
import 'package:uniqtrack/features/record_track/presentation/stores/states/states.dart';

part 'record_track_store.g.dart';

abstract interface class RecordTrackStoreBuilder {
  RecordTrackStore create(BuildContext context);
}

class RecordTrackStore = _RecordTrackStore with _$RecordTrackStore;

abstract class _RecordTrackStore with Store {
  final RecordTrackRepository _recordTrackRepository;
  final CommonUIDelegate _commonUIDelegate;

  StreamSubscription<Position>? _userPositionChangedSubscription;

  @observable
  RecordTrackPermissionState trackLocationPermissionState =
      RecordTrackPermissionState.pure();

  @observable
  UserLocationState userLocationState = UserLocationState.empty();

  @observable
  Activity<RecordTrackActions>? actions = null;

  @computed
  RecordTrackState get state => RecordTrackState(
        permissionState: trackLocationPermissionState,
        locationState: userLocationState,
      );

  _RecordTrackStore({
    required RecordTrackRepository recordTrackRepository,
    required CommonUIDelegate commonUIDelegate,
  })  : _recordTrackRepository = recordTrackRepository,
        _commonUIDelegate = commonUIDelegate {
    _checkInitialLocationPermission();
  }

  Future<void> _checkInitialLocationPermission() async {
    _showAndHideLoader(
      callback: () async {
        final requestLocationPermissionResult =
            await _recordTrackRepository.requestLocationPermission();

        final callback = requestLocationPermissionResult.map(
          success: (_) => _handleInitialSuccessLocationPermission,
          serviceDisabled: (_) => _handleServiceDisabledLocationPermission,
          permissionDenied: (_) => _handlePermissionDeniedLocationPermission,
          permissionDeniedForever: (_) =>
              _handlePermissionDeniedForeverLocationPermission,
        );

        await callback.call();
      },
    );
  }

  Future<void> _handleInitialSuccessLocationPermission() async {
    final currentPosition = await _recordTrackRepository.getCurrentPosition();

    if (currentPosition != null) {
      final initStreamPositionsAction = RecordTrackActions.initStreamPositions(
        title: AppStrings.trackingRecordNotificationTitle(),
        body: AppStrings.trackingRecordNotificationBody(),
        callback: (title, body) {
          _initStreamPositions(
            title: title,
            body: body,
            position: currentPosition,
          );
        },
      );
      actions = Activity(initStreamPositionsAction);
    } else {
      _showCantStartRecordingDialog();
    }
  }

  Future<T> _showAndHideLoader<T>({
    Duration duration = const Duration(milliseconds: 300),
    required Future<T> Function() callback,
  }) async {
    await Future.delayed(duration);
    _commonUIDelegate.showLoader();
    final result = await callback.call();
    _commonUIDelegate.hideLoader();
    return result;
  }

  Future<void> _handleServiceDisabledLocationPermission() async {
    final header = AppStrings.error();
    final body = AppStrings.serviceDenied();

    _commonUIDelegate.cupertinoDialog(
      header: header,
      body: body,
    );
  }

  Future<void> _handlePermissionDeniedLocationPermission() async {
    final error =
        AppPermissionError(category: PermissionErrorCategory.denied());

    _showCupertinoDialogByAppPermissionError(error);
  }

  Future<void> _handlePermissionDeniedForeverLocationPermission() async {
    final error = AppPermissionError(
        category: PermissionErrorCategory.permanentlyDenied());

    _showCupertinoDialogByAppPermissionError(error);
  }

  void _showCupertinoDialogByAppPermissionError(AppPermissionError error) {
    final header = error.header();
    final body = AppStrings.noPermissionDetermineUserLocation();
    final close = error.close();
    final activity = error.activity(
      requestPermissionAgain: _checkInitialLocationPermission,
      openSettings: _commonUIDelegate.openAppSettings,
    );

    _commonUIDelegate.cupertinoDialog(
      header: header,
      activity: activity,
      close: close,
      body: body,
    );
  }

  void _showCantStartRecordingDialog() {
    final header = AppStrings.cantStartRecording();
    final body = AppStrings.cantGetYourCurrentLocation();

    _commonUIDelegate.cupertinoDialog(
      header: header,
      body: body,
    );
  }

  void _initStreamPositions({
    required String title,
    required String body,
    required Position position,
  }) {
    userLocationState = UserLocationState.mark(currentPosition: position);

    final appLocationSettings = AppLocationSettings(
      notificationText: title,
      notificationTitle: body,
    );

    _initialTrackPositionSubscription(appLocationSettings);
  }

  void _initialTrackPositionSubscription(AppLocationSettings locationSettings) {
    _disposeUserPositionChanges();
    _userPositionChangedSubscription = _recordTrackRepository
        .listenPositions(locationSettings)
        .listen(_userPositionChanges);
  }

  void _userPositionChanges(Position event) {
    final newLocationState = userLocationState.map(
      empty: (_) => UserLocationState.empty(),
      mark: (state) => UserLocationState.mark(
        currentPosition: state.currentPosition,
      ),
    );

    userLocationState = newLocationState;
  }

  void _disposeUserPositionChanges() {
    _userPositionChangedSubscription?.cancel();
    _userPositionChangedSubscription = null;
  }
}
