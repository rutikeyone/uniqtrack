import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:uniqtrack/core/common/activity.dart';
import 'package:uniqtrack/core/common/app_location_handler/app_location_handler.dart';
import 'package:uniqtrack/core/common/app_location_handler/entities/app_position.dart';
import 'package:uniqtrack/core/common/app_location_handler/entities/location_settings.dart';
import 'package:uniqtrack/core/common/common_ui/common_ui_delegate.dart';
import 'package:uniqtrack/core/common/common_ui/cupertino_dialog_activity.dart';
import 'package:uniqtrack/core/common/exceptions/exceptions.dart';
import 'package:uniqtrack/core/common/strings/app_strings.dart';
import 'package:uniqtrack/features/tracks/domain/entities/entities.dart';
import 'package:uniqtrack/features/tracks/domain/record_track_repository.dart';
import 'package:uniqtrack/features/tracks/presentation/record_track/stores/states/record_track_bottom_sheet_state.dart';

import 'states/states.dart';

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

  @observable
  RecordTrackBottomSheetState bottomSheetState =
      RecordTrackBottomSheetState.none();

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
          final currentPosition = await userLocationState.when(
            empty: () => null,
            mark: (position) => position,
          );

          if (currentPosition != null) {
            final positions = [currentPosition];
            final recordingMode = RecordTrackModeState.recording(
                currentPosition: currentPosition);

            final isRecording = trackRecordStatusState.map(
              withoutRecording: (_) => false,
              recording: (mode) {
                return mode.maybeMap(
                  recording: (_) => true,
                  orElse: () => false,
                );
              },
            );

            final emptyMemories = List<Memory>.empty();

            final recordingStatusState = TrackRecordStatusState.recording(
              positionsData: List<PositionData>.empty(),
              positions: positions,
              distance: 0.0,
              duration: 0,
              averageSpeed: 0.0,
              maxAltitude: 0.0,
              mode: recordingMode,
              isRecording: isRecording,
              memories: emptyMemories,
            );

            final showDetailsRecordingDataAction =
                RecordTrackActions.showDetailsRecordingData();
            actions = Activity(showDetailsRecordingDataAction);

            trackRecordStatusState = recordingStatusState;
            _trackRecordStatusStateStreamController.add(recordingStatusState);

            _initTimer();
          } else {
            _disposeTimer();

            trackRecordStatusState = TrackRecordStatusState.withoutRecording();

            final header = AppStrings.cantStartRecording();
            final body = AppStrings.cantGetYourCurrentLocation();

            _commonUIDelegate.cupertinoDialog(
              header: header,
              body: body,
            );
          }
        }
      },
    );
  }

  @action
  void onPopInvokedWithResult({
    bool? didPop,
    dynamic result,
  }) {
    trackRecordStatusState.map(
      withoutRecording: (_) {
        final action = RecordTrackActions.navigateBack();
        final activity = Activity(action);
        actions = activity;
      },
      recording: (state) {
        final header = AppStrings.attention();
        final body = AppStrings.doYouWantToFinishRecordingTheTrackQuestion();
        final close = AppStrings.toContinue();

        final activity = CupertinoDialogActivity(
          label: AppStrings.delete(),
          onPressed: () => _finishRecordTrack(closeDialog: true),
        );

        final closeCallback = bottomSheetState.whenOrNull(
          recordTrack: () => null,
          memoryDetails: () => hideMemoryDetails,
        );

        _commonUIDelegate.cupertinoDialog(
          header: header,
          body: body,
          activity: activity,
          close: close,
          closeCallback: closeCallback,
        );
      },
    );
  }

  @action
  void pauseRecordTrack() {
    trackRecordStatusState.mapOrNull(
      recording: (state) {
        final oldPositions = state.positions;
        final oldPositionsData = state.positionsData;

        final positionData = PositionData(positions: oldPositions);
        final newPositionsData = [...oldPositionsData, positionData];

        final pauseMode = RecordTrackModeState.pause();
        final isRecording = false;

        final emptyList = List<Position>.empty();

        final newState = state.copyWith(
          mode: pauseMode,
          positionsData: newPositionsData,
          positions: emptyList,
          isRecording: isRecording,
        );

        trackRecordStatusState = newState;
        _trackRecordStatusStateStreamController.add(newState);

        _disposeTimer();
      },
    );
  }

  @action
  void stopRecordTrack() {
    trackRecordStatusState.mapOrNull(
      recording: (state) {
        final oldPositions = state.positions;
        final oldPositionData = state.positionsData;

        final positionData = PositionData(positions: oldPositions);
        final newPositionsData = [...oldPositionData, positionData];

        final stopMode = RecordTrackModeState.stop();
        final isRecording = false;

        final emptyList = List<Position>.empty();

        final newState = state.copyWith(
          mode: stopMode,
          positionsData: newPositionsData,
          positions: emptyList,
          isRecording: isRecording,
        );

        trackRecordStatusState = newState;
        _trackRecordStatusStateStreamController.add(newState);

        _disposeTimer();
      },
    );
  }

  @action
  void continueRecordTrack() {
    trackRecordStatusState.mapOrNull(
      recording: (state) {
        final mode = state.mode;

        mode.whenOrNull(
          pause: () async {
            final currentPosition = userLocationState.when(
              empty: () => null,
              mark: (position) => position,
            );

            if (currentPosition != null) {
              final newMode = RecordTrackModeState.recording(
                currentPosition: currentPosition,
              );

              final oldPositions = state.positions;
              final newPositions = [...oldPositions, currentPosition];

              final oldMaxAltitude = state.maxAltitude;
              final newAltitude = currentPosition.altitude ?? 0.0;

              final newMaxAltitude = [oldMaxAltitude, newAltitude].reduce(max);

              final isRecording = true;

              final newState = state.copyWith(
                positions: newPositions,
                mode: newMode,
                maxAltitude: newMaxAltitude,
                isRecording: isRecording,
              );

              trackRecordStatusState = newState;
              _trackRecordStatusStateStreamController.add(newState);

              _initTimer();
            } else {
              final header = AppStrings.cantStartRecording();
              final body = AppStrings.cantGetYourCurrentLocation();

              _commonUIDelegate.cupertinoDialog(
                header: header,
                body: body,
              );

              final oldPositions = state.positions;
              final oldPositionData = state.positionsData;

              final positionData = PositionData(positions: oldPositions);
              final newPositionsData = [...oldPositionData, positionData];

              final stopModeState = RecordTrackModeState.stop();
              final isRecording = false;

              final emptyList = List<Position>.empty();

              final newState = state.copyWith(
                mode: stopModeState,
                positionsData: newPositionsData,
                positions: emptyList,
                isRecording: isRecording,
              );

              trackRecordStatusState = newState;
              _trackRecordStatusStateStreamController.add(newState);

              _disposeTimer();
            }
          },
        );
      },
    );
  }

  @action
  void addMemory() {
    if (trackRecordStatusState.isRecordingActive) {
      final currentPosition = userLocationState.when(
        empty: () => null,
        mark: (position) => position,
      );

      final navigateToAddMemoryAction =
          RecordTrackActions.navigateToAddMemory(position: currentPosition);
      final activity = Activity(navigateToAddMemoryAction);

      actions = activity;
    }
  }

  @action
  void addMemoryWithData(Memory? memory) {
    if (memory == null) return;

    trackRecordStatusState.mapOrNull(recording: (state) {
      final oldMemories = state.memories;
      final newMemories = [...oldMemories, memory];

      trackRecordStatusState = state.copyWith(memories: newMemories);
    });
  }

  @action
  void deleteRecordTrack() {
    _finishRecordTrack();
  }

  @action
  void saveRecordTrack() {
    _saveAndFinishRecordTrack();
  }

  @action
  void showMemoryDetails(Memory memory) {
    trackRecordStatusState.mapOrNull(
      recording: (state) {
        final currentBottomSheetState = bottomSheetState;

        final lessDuration = Duration(milliseconds: 150);
        final moreDuration = Duration(milliseconds: 300);

        final hideDetailsRecordingDataAction =
            RecordTrackActions.hideDetailsRecordingData();
        actions = Activity(hideDetailsRecordingDataAction);
        bottomSheetState = RecordTrackBottomSheetState.none();

        currentBottomSheetState.whenOrNull(memoryDetails: () {
          Future.delayed(lessDuration, () {
            final hideDetailsRecordingDataAction =
                RecordTrackActions.hideMemoryDetails();
            actions = Activity(hideDetailsRecordingDataAction);
            bottomSheetState = RecordTrackBottomSheetState.none();
          });
        });

        Future.delayed(moreDuration, () {
          final showMemoryDetailsAction = RecordTrackActions.showMemoryDetails(
            memory: memory,
          );

          actions = Activity(showMemoryDetailsAction);
          bottomSheetState = RecordTrackBottomSheetState.memoryDetails();
        });
      },
    );
  }

  @action
  void showDetailsRecordingData() {
    bottomSheetState.whenOrNull(
      none: () {
        final showDetailsRecordingDataAction =
            RecordTrackActions.showDetailsRecordingData();
        actions = Activity(showDetailsRecordingDataAction);
        bottomSheetState = RecordTrackBottomSheetState.recordTrack();
      },
    );
  }

  @action
  void hideMemoryDetails() {
    bottomSheetState.whenOrNull(
      memoryDetails: () {
        final hideDetailsRecordingDataAction =
            RecordTrackActions.hideMemoryDetails();
        actions = Activity(hideDetailsRecordingDataAction);
        bottomSheetState = RecordTrackBottomSheetState.none();

        trackRecordStatusState.mapOrNull(
          recording: (state) {
            final duration = const Duration(milliseconds: 150);

            Future.delayed(duration, () {
              final hideDetailsRecordingDataAction =
                  RecordTrackActions.showDetailsRecordingData();
              actions = Activity(hideDetailsRecordingDataAction);

              bottomSheetState = RecordTrackBottomSheetState.recordTrack();
            });
          },
        );
      },
    );
  }

  void dispose() {
    _disposeUserPositionChanges();
    _disposeTimer();
    _trackRecordStatusStateStreamController.close();
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
    final category = PermissionErrorCategory.denied();
    final error = AppPermissionError(category: category);

    _showCupertinoDialogByAppPermissionError(error);
  }

  Future<void> _handlePermissionDeniedForeverLocationPermission() async {
    final permanentlyDeniedCategory =
        PermissionErrorCategory.permanentlyDenied();
    final error = AppPermissionError(
      category: permanentlyDeniedCategory,
    );

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

  void _userPositionChanges(Position newPosition) {
    final newLocationState = userLocationState.map(
      empty: (_) => UserLocationState.empty(),
      mark: (state) => UserLocationState.mark(currentPosition: newPosition),
    );

    final newTrackRecordStatusState = trackRecordStatusState.map(
      withoutRecording: (withoutRecordingState) => withoutRecordingState,
      recording: (recordingState) {
        final mode = recordingState.mode;

        return mode.maybeMap(
          recording: (mode) {
            final oldMaxAltitude = recordingState.maxAltitude;
            final oldPositions = recordingState.positions;
            final oldDistance = recordingState.distance;
            final oldPosition = mode.currentPosition;

            final newPositions = [...oldPositions, newPosition];
            final newAltitude = recordingState.maxAltitude;

            final oldLatitude = oldPosition.latitude ?? 0.0;
            final oldLongitude = oldPosition.longitude ?? 0.0;
            final oldAltitude = oldPosition.altitude ?? 0.0;

            final latitude = newPosition.latitude ?? 0.0;
            final longitude = newPosition.longitude ?? 0.0;
            final altitude = newPosition.altitude ?? 0.0;

            final firstPosition = AppPosition(
              latitude: oldLatitude,
              longitude: oldLongitude,
              altitude: oldAltitude,
            );
            final secondPosition = AppPosition(
              latitude: latitude,
              longitude: longitude,
              altitude: altitude,
            );

            final distanceBetween = _appLocationHandler.betweenDistance(
              firstPosition,
              secondPosition,
            );

            final newDistance = oldDistance + distanceBetween;

            final newAverageSpeed = newDistance / recordingState.duration;

            final maxAltitude = [oldMaxAltitude, newAltitude].reduce(max);

            final isRecording = trackRecordStatusState.map(
              withoutRecording: (_) => false,
              recording: (mode) {
                return mode.maybeMap(
                  recording: (_) => true,
                  orElse: () => false,
                );
              },
            );

            final newMode = mode.copyWith(currentPosition: newPosition);
            final newState = recordingState.copyWith(
              positions: newPositions,
              distance: newDistance,
              averageSpeed: newAverageSpeed,
              mode: newMode,
              maxAltitude: maxAltitude,
              isRecording: isRecording,
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

  void _initTimer() {
    _disposeTimer();

    const duration = Duration(seconds: 1);
    _timer = Timer.periodic(
      duration,
      _handleTimeChanged,
    );
  }

  @action
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

  @action
  Future<void> _saveAndFinishRecordTrack({bool closeDialog = false}) async {
    if (trackRecordStatusState.isWithoutRecording) return;

    await trackRecordStatusState.maybeMap(
      recording: (state) async {
        final finishPosition = state.positions.isNotEmpty
            ? PositionData(positions: state.positions)
            : null;

        final positions = switch (finishPosition) {
          PositionData() => [...state.positionsData, finishPosition],
          null => state.positionsData,
        };

        final track = Track(
          id: null,
          creatorId: null,
          name: null,
          comment: null,
          positions: positions,
          distance: state.distance,
          duration: state.duration,
          averageSpeed: state.averageSpeed,
          maxAltitude: state.maxAltitude,
          memories: state.memories,
        );

        await _finishRecordTrack(closeDialog: closeDialog);

        final navigateToAddRecordTrackAction =
            RecordTrackActions.navigateToAddRecordTrack(track: track);
        final navigateToAddRecordTrackActivity =
            Activity(navigateToAddRecordTrackAction);

        actions = navigateToAddRecordTrackActivity;
      },
      orElse: () async => await _finishRecordTrack(closeDialog: closeDialog),
    );
  }

  @action
  Future<void> _finishRecordTrack({bool closeDialog = false}) async {
    if (trackRecordStatusState.isWithoutRecording) return;
    final duration = const Duration(milliseconds: 300);

    final hideDetailsAction = RecordTrackActions.hideDetailsRecordingData();
    final navigateBackAction = RecordTrackActions.navigateBack();

    final hideDetailsActivity = Activity(hideDetailsAction);
    final navigateBackActivity = Activity(navigateBackAction);

    trackRecordStatusState = TrackRecordStatusState.withoutRecording();

    _disposeTimer();

    if (closeDialog) {
      actions = navigateBackActivity;

      return Future.delayed(duration, () {
        actions = hideDetailsActivity;
      });
    } else {
      actions = hideDetailsActivity;
    }
  }

  void _disposeTimer() {
    _timer?.cancel();
    _timer = null;
  }
}
