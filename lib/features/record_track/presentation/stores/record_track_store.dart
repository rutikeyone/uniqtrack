import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:uniqtrack/core/common/activity.dart';
import 'package:uniqtrack/core/common/app_location_handler/app_location_handler.dart';
import 'package:uniqtrack/core/common/app_location_handler/entities/app_position.dart';
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
  final AppLocationHandler _appLocationHandler;

  StreamSubscription<Position>? _userPositionChangedSubscription;

  Timer? _timer;

  @observable
  RecordTrackPermissionState recordTrackPermissionState =
      RecordTrackPermissionState.pure();

  @observable
  UserLocationState userLocationState = UserLocationState.empty();

  @observable
  Activity<RecordTrackActions>? actions = null;

  @observable
  TrackRecordStatusState trackRecordStatusState =
      TrackRecordStatusState.withoutRecording();

  final StreamController<TrackRecordStatusState>
      _trackRecordStatusStateStreamController = StreamController.broadcast();

  Stream<TrackRecordStatusState> get trackRecordStatusStateStream =>
      _trackRecordStatusStateStreamController.stream;

  @computed
  RecordTrackState get state => RecordTrackState(
        permissionState: recordTrackPermissionState,
        locationState: userLocationState,
        trackRecordStatusState: trackRecordStatusState,
      );

  _RecordTrackStore({
    required RecordTrackRepository recordTrackRepository,
    required CommonUIDelegate commonUIDelegate,
    required AppLocationHandler appLocationHandler,
  })  : _recordTrackRepository = recordTrackRepository,
        _commonUIDelegate = commonUIDelegate,
        _appLocationHandler = appLocationHandler {
    _checkInitialLocationPermission();
  }

  Future<void> _checkInitialLocationPermission() async {
    await _showAndHideLoader(
      callback: () async {
        final requestLocationPermissionResult =
            await _recordTrackRepository.requestLocationPermission();

        final callback = requestLocationPermissionResult.map(
          success: (_) => _handleSuccessLocationPermission,
          serviceDisabled: (_) => _handleServiceDisabledLocationPermission,
          permissionDenied: (_) => _handlePermissionDeniedLocationPermission,
          permissionDeniedForever: (_) =>
              _handlePermissionDeniedForeverLocationPermission,
        );

        await callback.call();
      },
    );
  }

  Future<void> _handleSuccessLocationPermission() async {
    final duration = Duration(milliseconds: 200);

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
      await Future.delayed(duration);
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
    final zoom = 18.0;
    final moveToUserPositionAction = RecordTrackActions.moveToUserPosition(
      position: position,
      zoom: zoom,
    );
    final newActivity = Activity(moveToUserPositionAction);

    userLocationState = UserLocationState.mark(currentPosition: position);
    actions = newActivity;

    final appLocationSettings = AppLocationSettings(
      notificationTitle: title,
      notificationBody: body,
    );

    _initialTrackPositionSubscription(appLocationSettings);
  }

  void _initialTrackPositionSubscription(AppLocationSettings locationSettings) {
    _userPositionChangedSubscription = _userPositionChangedSubscription ??
        _recordTrackRepository
            .listenPositions(locationSettings)
            .listen(_userPositionChanges);
  }

  void _userPositionChanges(Position event) {
    final newLocationState = userLocationState.map(
      empty: (_) => UserLocationState.empty(),
      mark: (state) => UserLocationState.mark(currentPosition: event),
    );

    final newTrackRecordStatusState = trackRecordStatusState.map(
      withoutRecording: (withoutRecordingState) => withoutRecordingState,
      recording: (recordingState) {
        final mode = recordingState.mode;
        return mode.maybeMap(
          recording: (mode) {
            final oldPositions = recordingState.positions;
            final oldDistance = recordingState.distance;
            final oldPosition = mode.currentPosition;

            final newPositions = [...oldPositions, event];

            final firstPosition = AppPosition(
              latitude: oldPosition.latitude,
              longitude: oldPosition.longitude,
            );
            final secondPosition = AppPosition(
              latitude: event.latitude,
              longitude: event.longitude,
            );

            final distanceBetween = _appLocationHandler.betweenDistance(
              firstPosition,
              secondPosition,
            );

            final newDistance = oldDistance + distanceBetween;

            final newMode = mode.copyWith(currentPosition: event);
            final newState = recordingState.copyWith(
              positions: newPositions,
              distance: newDistance,
              mode: newMode,
            );
            return newState;
          },
          orElse: () => recordingState,
        );
      },
    );

    userLocationState = newLocationState;
    trackRecordStatusState = newTrackRecordStatusState;
    _trackRecordStatusStateStreamController.add(newTrackRecordStatusState);
  }

  void _disposeUserPositionChanges() {
    _userPositionChangedSubscription?.cancel();
    _userPositionChangedSubscription = null;
  }

  @action
  Future<void> startTracking() async {
    if (trackRecordStatusState.isRecording) return;

    _showAndHideLoader(
      callback: () async {
        final requestLocationPermissionResult =
            await _recordTrackRepository.requestLocationPermission();

        final callback = requestLocationPermissionResult.map(
          success: (_) => _handleSuccessLocationPermission,
          serviceDisabled: (_) => _handleServiceDisabledLocationPermission,
          permissionDenied: (_) => _handlePermissionDeniedLocationPermission,
          permissionDeniedForever: (_) =>
              _handlePermissionDeniedForeverLocationPermission,
        );
        await callback.call();

        final canStartTracking = requestLocationPermissionResult.isSuccess &&
            trackRecordStatusState.isWithoutRecording;

        if (canStartTracking) {
          final currentPosition =
              await _recordTrackRepository.getCurrentPosition();
          if (currentPosition == null) return;

          final positions = [currentPosition];
          final recordingMode =
              RecordTrackModeState.recording(currentPosition: currentPosition);

          final recordingStatusState = TrackRecordStatusState.recording(
            positions: positions,
            distance: 0.0,
            duration: 0,
            mode: recordingMode,
          );

          actions = Activity(RecordTrackActions.showDetailsRecordingData());
          trackRecordStatusState = recordingStatusState;
          _trackRecordStatusStateStreamController.add(recordingStatusState);

          _initTimer();
        }
      },
    );
  }

  void _initTimer() {
    _disposeTimer();

    const duration = Duration(seconds: 1);
    _timer = Timer.periodic(
      duration,
      _handleTimeChanged,
    );
  }

  void _handleTimeChanged(_) {
    final newTrackRecordStatusState = trackRecordStatusState.map(
      withoutRecording: (withoutRecordingState) => withoutRecordingState,
      recording: (recordingState) {
        final mode = recordingState.mode;
        return mode.maybeMap(
          recording: (mode) {
            final oldDuration = recordingState.duration;
            final newDuration = oldDuration + 1;

            final newState = recordingState.copyWith(duration: newDuration);
            return newState;
          },
          orElse: () => recordingState,
        );
      },
    );

    trackRecordStatusState = newTrackRecordStatusState;
    _trackRecordStatusStateStreamController.add(newTrackRecordStatusState);
  }

  void onPopInvokedWithResult(bool didPop, dynamic result) {

  }

  void _disposeTimer() {
    _timer?.cancel();
    _timer = null;
  }

  void dispose() {
    _disposeUserPositionChanges();
    _disposeTimer();
    _trackRecordStatusStateStreamController.close();
  }
}
