import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:formz/formz.dart';
import 'package:generic_usecase/generic_usecase.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:mobx/mobx.dart';
import 'package:rxdart/rxdart.dart';
import 'package:uniqtrack/app/navigation/arguments/args.dart';
import 'package:uniqtrack/core/common/activity.dart';
import 'package:uniqtrack/core/common/common_ui/common_ui_delegate.dart';
import 'package:uniqtrack/core/common/exceptions/exceptions.dart';
import 'package:uniqtrack/core/common/extensions/iterable_extensions.dart';
import 'package:uniqtrack/core/common/extensions/iterable_position_data_extensions.dart';
import 'package:uniqtrack/core/common/strings/app_strings.dart';
import 'package:uniqtrack/features/tracks/domain/add_favourite_track_use_case.dart';
import 'package:uniqtrack/features/tracks/domain/remove_favourite_track_use_case.dart';
import 'package:uniqtrack/features/tracks/domain/entities/entities.dart';
import 'package:uniqtrack/features/tracks/presentation/details/store/states/states.dart';

part 'details_store.g.dart';

abstract interface class DetailsStoreBuilder {
  DetailsStore create({
    required BuildContext context,
    required String? id,
    required bool canDelete,
    required bool closeWhenRemoveFromFavourites,
    required DetailsMode mode,
  });
}

class DetailsStore = _DetailsStore with _$DetailsStore;

abstract class _DetailsStore with Store {
  final String? _id;
  final bool _canDelete;
  final bool _closeWhenRemoveFromFavourites;

  final StreamUsecase<String, TrackUI> _watchTrackDetailsUseCase;
  final Usecase<(Track, Memory), Either<AppError, void>>? _removeMemoryUseCase;

  final AddFavouriteTrackUseCase _addToFavouriteTracksUseCase;

  final Usecase<Track, Either<AppError, void>>? _removeTrackUseCase;
  final RemoveFavouriteTracksUseCase _removeFavouriteTrackUseCase;

  final CommonUIDelegate _commonUIDelegate;

  @observable
  bool mounted = true;

  @observable
  late ObservableStream<TrackUI> trackDetailsStream = ObservableStream(
    Rx.combineLatest3(_deleteStatus.stream, _favouriteStatus.stream,
        _watchTrackDetailsUseCase(_id), (deleteStatus, favouriteStatus, item) {
      return item.copyWith(
        deleteEnabled: !deleteStatus.isInProgress,
        favouriteEnabled: !favouriteStatus.isInProgress,
        canDelete: _canDelete,
      );
    }),
  ).asBroadcastStream();

  @observable
  late ObservableStream<MemoryUI?> memoryDetailsStream = ObservableStream(
    Rx.combineLatest2(
      _watchTrackDetailsUseCase(_id),
      _memorySelected.stream,
      (track, memory) {
        final memoryId = memory?.id;

        final actualMemory = track.track?.memories?.firstWhereOrNull(
            (item) => item.id == memoryId && item.id != null);

        if (actualMemory == null) {
          return null;
        }

        return MemoryUI(
          memory: actualMemory,
          currentUserCreator: track.currentUserCreator,
        );
      },
    ),
  ).asBroadcastStream();

  @observable
  late ObservableStream<DetailsMapState> detailsMapState = ObservableStream(
    trackDetailsStream.map(
      (item) {
        final track = item.track;
        if (track == null) {
          return DetailsMapState.empty();
        }

        final prev = detailsMapState.value;

        return DetailsMapState.data(
          track: track,
          firstTime: switch (prev) {
            DetailsMapState() => prev.map(
                empty: (_) => true,
                data: (state) => state.firstTime ? false : state.firstTime,
              ),
            null => true,
          },
        );
      },
    ),
  ).asBroadcastStream();

  @observable
  Activity<DetailsActions>? actions;

  @observable
  late ObservableStream<DetailsSheetState> detailsSheetState = ObservableStream(
    Rx.combineLatest5(
      _initialDetailsSheet.stream,
      _deleteStatus.stream,
      _favouriteStatus.stream,
      memoryDetailsStream,
      trackDetailsStream,
      (initial, deleteStatus, favouriteStatus, memoryUI, track) {
        if (initial) {
          return DetailsSheetState.pure();
        }

        final deleteInProgress = deleteStatus.isInProgress;
        final deleteSuccess = deleteStatus.isSuccess;

        final favouriteInProgress = favouriteStatus.isInProgress;
        final favouriteSuccess = favouriteStatus.isSuccess;

        if ((favouriteInProgress || favouriteSuccess) &&
            _closeWhenRemoveFromFavourites) {
          return DetailsSheetState.pure();
        }

        if (deleteInProgress || deleteSuccess) {
          return DetailsSheetState.pure();
        }

        if (memoryUI != null) {
          return DetailsSheetState.memory(
            memory: memoryUI.memory,
          );
        }

        if (track.track == null) {
          return DetailsSheetState.pure();
        }

        return DetailsSheetState.details(track: track);
      },
    ),
  ).asBroadcastStream();

  @observable
  late ObservableStream<bool> animateShowEnabled = ObservableStream(
    trackDetailsStream.map(
      (item) {
        final positions = item.track?.positions;
        return positions != null && positions.isNotEmpty;
      },
    ),
  ).asBroadcastStream();

  @observable
  late ObservableStream<MapDataUI> mapDataUI = ObservableStream(
    Rx.combineLatest2(
      animateShowEnabled.share(),
      memoryDetailsStream.share(),
      (animateShowEnabled, memory) {
        return MapDataUI(
          animatedToMemoryShowed: memory != null,
          animatedToTrackShowed: animateShowEnabled,
        );
      },
    ),
  ).asBroadcastStream();

  final _deleteStatus = BehaviorSubject.seeded(FormzSubmissionStatus.initial);

  final _favouriteStatus =
      BehaviorSubject.seeded(FormzSubmissionStatus.initial);

  final _memorySelected = BehaviorSubject<Memory?>.seeded(null);

  final _initialDetailsSheet = BehaviorSubject<bool>.seeded(false);

  final _deleteMemoryStatus =
      BehaviorSubject.seeded(FormzSubmissionStatus.initial);

  _DetailsStore({
    required String? id,
    required StreamUsecase<String, TrackUI> watchTrackDetailsUseCase,
    required AddFavouriteTrackUseCase addToFavouriteTracksUseCase,
    required RemoveFavouriteTracksUseCase removeFavouriteTrackUseCase,
    required Usecase<Track, Either<AppError, void>>? removeTrackUseCase,
    required CommonUIDelegate commonUIDelegate,
    required bool canDelete,
    required bool closeWhenRemoveFromFavourites,
    required Usecase<(Track, Memory), Either<AppError, void>>?
        removeMemoryUseCase,
  })  : _id = id,
        _watchTrackDetailsUseCase = watchTrackDetailsUseCase,
        _addToFavouriteTracksUseCase = addToFavouriteTracksUseCase,
        _commonUIDelegate = commonUIDelegate,
        _removeTrackUseCase = removeTrackUseCase,
        _removeFavouriteTrackUseCase = removeFavouriteTrackUseCase,
        _canDelete = canDelete,
        _closeWhenRemoveFromFavourites = closeWhenRemoveFromFavourites,
        _removeMemoryUseCase = removeMemoryUseCase;

  @action
  Future<void> onPopInvokedWithResult({
    bool? didPop,
    dynamic result,
  }) async {
    final sheetState = detailsSheetState.value;

    if (didPop == true) {
      return;
    }

    await sheetState?.maybeWhen(
      pure: () {
        final navigateBackAction = DetailsActions.navigateBack();
        actions = Activity(navigateBackAction);
      },
      orElse: () async {
        _initialDetailsSheet.add(true);

        await Future.delayed(const Duration(milliseconds: 300), () {
          if (!mounted) return;
          final navigateBack = DetailsActions.navigateBack();
          actions = Activity(navigateBack);
        });
      },
    );
  }

  @action
  Future<void> addTrackToFavourites() async {
    final value = trackDetailsStream.value?.track;
    if (value == null) return;

    _favouriteStatus.add(FormzSubmissionStatus.inProgress);

    final result = await _addToFavouriteTracksUseCase.execute(value);

    result.fold(
      (error) {
        final header = error.header();
        final body = error.body();

        _commonUIDelegate.cupertinoDialog(
          header: header,
          body: body,
        );

        if (!_favouriteStatus.isClosed) {
          _favouriteStatus.add(FormzSubmissionStatus.failure);
        }
      },
      (_) {
        if (!_favouriteStatus.isClosed) {
          _favouriteStatus.add(FormzSubmissionStatus.success);
        }
      },
    );
  }

  @action
  Future<void> removeTrackFromFavourites() async {
    final duration = const Duration(milliseconds: 300);

    final value = trackDetailsStream.value?.track;
    if (value == null) return;

    _favouriteStatus.add(FormzSubmissionStatus.inProgress);

    final result = await _removeFavouriteTrackUseCase(value);

    await result.fold(
      (error) {
        final header = error.header();
        final body = error.body();

        _commonUIDelegate.cupertinoDialog(
          header: header,
          body: body,
        );

        if (!_favouriteStatus.isClosed) {
          _favouriteStatus.add(FormzSubmissionStatus.failure);
        }
      },
      (_) async {
        if (!_favouriteStatus.isClosed) {
          _favouriteStatus.add(FormzSubmissionStatus.success);
        }

        if (_closeWhenRemoveFromFavourites) {
          await onPopInvokedWithResult();

          await Future.delayed(duration, () {
            if (!mounted) return;

            final header = AppStrings.notification();
            final body = AppStrings.trackWasSuccessfullyDeleted();

            _commonUIDelegate.cupertinoDialog(
              header: header,
              body: body,
            );
          });
        }
      },
    );
  }

  @action
  Future<void> deleteTrack() async {
    final duration = const Duration(milliseconds: 300);

    final value = trackDetailsStream.value?.track;
    if (value == null || _removeTrackUseCase == null) return;

    _deleteStatus.add(FormzSubmissionStatus.inProgress);

    final result = await _removeTrackUseCase(value);

    await result.fold(
      (error) {
        final header = error.header();
        final body = error.body();

        _commonUIDelegate.cupertinoDialog(
          header: header,
          body: body,
        );

        _deleteStatus.add(FormzSubmissionStatus.failure);
      },
      (_) async {
        _deleteStatus.add(FormzSubmissionStatus.success);

        await onPopInvokedWithResult();

        await Future.delayed(duration, () {
          if (!mounted) return;
          final header = AppStrings.notification();
          final body = AppStrings.trackWasSuccessfullyDeleted();

          _commonUIDelegate.cupertinoDialog(
            header: header,
            body: body,
          );
        });
      },
    );
  }

  @action
  void animateCameraByTrack() {
    final positions = trackDetailsStream.value?.track?.positions;
    _animateCameraByPositions(positions);
  }

  @action
  void animateCameraByMemory({Memory? memory}) {
    final positions = (memory ?? memoryDetailsStream.value?.memory)?.position;
    if (positions == null) return;
    final positionData = PositionData(positions: [positions]);
    _animateCameraByPositions([positionData]);
  }

  @action
  void _animateCameraByPositions(List<PositionData>? positions) {
    if (positions == null || positions.isEmpty) return;

    final points = positions.calculateSouthWestAndNortheastPoints();

    final bounds = LatLngBounds(
      southwest: points.value1,
      northeast: points.value2,
    );

    final cameraUpdate = CameraUpdate.newLatLngBounds(
      bounds,
      0,
    );

    final action = DetailsActions.animateCamera(cameraUpdate);
    actions = Activity(action);
  }

  @action
  void showMemoryDetails(Memory memory) {
    detailsSheetState.value?.whenOrNull(
      details: (_) {
        _memorySelected.add(memory);
        animateCameraByMemory(memory: memory);
      },
      memory: (data) {
        if (data == memory) return;
        final duration = const Duration(milliseconds: 300);

        _initialDetailsSheet.add(true);

        Future.delayed(duration, () {
          _initialDetailsSheet.add(false);
          _memorySelected.add(memory);
          animateCameraByMemory(memory: memory);
        });
      },
    );
  }

  @action
  void hideMemoryDetails() {
    detailsSheetState.value?.whenOrNull(
      memory: (_) {
        _memorySelected.add(null);
      },
    );
  }

  @action
  void deleteMemory(Memory memory) {
    detailsSheetState.value?.maybeWhen(memory: (memory) {
      final duration = const Duration(milliseconds: 200);

      hideMemoryDetails();

      Future.delayed(duration, () {
        _deleteMemory(memory);
      });
    }, orElse: () {
      _deleteMemory(memory);
    });
  }

  @action
  Future<void> _deleteMemory(Memory value) async {
    detailsSheetState.value?.whenOrNull(
      details: (_) async {
        final track = trackDetailsStream.value?.track;
        final memory = memoryDetailsStream.value?.memory ?? value;

        if (track == null || _removeMemoryUseCase == null) return;

        _deleteMemoryStatus.add(FormzSubmissionStatus.inProgress);

        final removeMemoryResult =
            await _removeMemoryUseCase.call((track, memory));

        removeMemoryResult.fold(
          (error) {
            _deleteMemoryStatus.add(FormzSubmissionStatus.failure);

            final header = error.header();
            final body = error.body();

            _commonUIDelegate.cupertinoDialog(
              header: header,
              body: body,
            );
          },
          (_) {
            _deleteMemoryStatus.add(FormzSubmissionStatus.success);
          },
        );
      },
    );
  }

  @action
  void dispose() {
    mounted = false;
    _deleteStatus.close();
    _favouriteStatus.close();
    _memorySelected.close();
    _initialDetailsSheet.close();
  }
}
