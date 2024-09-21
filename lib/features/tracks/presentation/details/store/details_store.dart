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
import 'package:uniqtrack/core/common/strings/app_strings.dart';
import 'package:uniqtrack/features/accounts/domain/add_to_favourite_tracks_use_case.dart';
import 'package:uniqtrack/features/accounts/domain/remove_from_favourite_tracks_use_case.dart';
import 'package:uniqtrack/features/accounts/domain/remove_track_use_case.dart';
import 'package:uniqtrack/features/tracks/domain/entities/entities.dart';
import 'package:uniqtrack/features/tracks/presentation/details/store/states/states.dart';

part 'details_store.g.dart';

abstract interface class DetailsStoreBuilder {
  DetailsStore create({
    required BuildContext context,
    required String id,
    required bool canDelete,
    required bool closeWhenRemoveFromFavourites,
    required DetailsMode mode,
  });
}

class DetailsStore = _DetailsStore with _$DetailsStore;

abstract class _DetailsStore with Store {
  final String _id;
  final bool _canDelete;
  final bool _closeWhenRemoveFromFavourites;

  final StreamUsecase<String, TrackUI> _watchTrackDetailsUseCase;
  final AddToFavouriteTracksUseCase _addToFavouriteTracksUseCase;

  final RemoveTrackUseCase _removeTrackUseCase;
  final RemoveFromFavouriteTracksUseCase _removeFromFavouriteTracksUseCase;

  final CommonUIDelegate _commonUIDelegate;

  @observable
  late ObservableStream<TrackUI> trackDetailsStream = ObservableStream(
    _watchTrackDetailsUseCase(_id).map(
      (item) {
        return item.copyWith(canDelete: _canDelete);
      },
    ),
  ).asBroadcastStream();

  @observable
  late ObservableStream<DetailsMapState> detailsMapState = ObservableStream(
    trackDetailsStream.share().map(
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
                data: (_) => false,
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
    Rx.combineLatest3(
      _deleteStatus.stream,
      _favouriteStatus.stream,
      trackDetailsStream,
      (deleteStatus, favouriteStatus, track) {
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

        final trackData = track.copyWith(
          deleteEnabled: !deleteStatus.isInProgress,
          favouriteEnabled: !favouriteStatus.isInProgress,
        );

        return DetailsSheetState.details(track: trackData);
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

  final _deleteStatus = BehaviorSubject.seeded(FormzSubmissionStatus.initial);

  final _favouriteStatus =
      BehaviorSubject.seeded(FormzSubmissionStatus.initial);

  _DetailsStore({
    required String id,
    required StreamUsecase<String, TrackUI> watchTrackDetailsUseCase,
    required AddToFavouriteTracksUseCase addToFavouriteTracksUseCase,
    required RemoveFromFavouriteTracksUseCase removeFromFavouriteTracksUseCase,
    required RemoveTrackUseCase removeTrackUseCase,
    required CommonUIDelegate commonUIDelegate,
    required bool canDelete,
    required bool closeWhenRemoveFromFavourites,
  })  : _id = id,
        _watchTrackDetailsUseCase = watchTrackDetailsUseCase,
        _addToFavouriteTracksUseCase = addToFavouriteTracksUseCase,
        _commonUIDelegate = commonUIDelegate,
        _removeTrackUseCase = removeTrackUseCase,
        _removeFromFavouriteTracksUseCase = removeFromFavouriteTracksUseCase,
        _canDelete = canDelete,
        _closeWhenRemoveFromFavourites = closeWhenRemoveFromFavourites;

  Future<void> onPopInvokedWithResult({
    bool? didPop,
    dynamic result,
  }) async {
    final sheetState = detailsSheetState.value;

    if (didPop == true) {
      return;
    }

    await sheetState?.when(
      pure: () {
        final navigateBackAction = DetailsActions.navigateBack();
        actions = Activity(navigateBackAction);
      },
      details: (_) async {
        final closeTrackDetailsDialogAction =
            DetailsActions.closeTrackDetailsDialog();
        actions = Activity(closeTrackDetailsDialogAction);

        await Future.delayed(
          const Duration(milliseconds: 300),
          () {
            final navigateBack = DetailsActions.navigateBack();
            actions = Activity(navigateBack);
          },
        );
      },
    );
  }

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

        _favouriteStatus.add(FormzSubmissionStatus.failure);
      },
      (_) {
        _favouriteStatus.add(FormzSubmissionStatus.success);
      },
    );
  }

  Future<void> removeTrackFromFavourites() async {
    final duration = const Duration(milliseconds: 300);

    final value = trackDetailsStream.value?.track;
    if (value == null) return;

    _favouriteStatus.add(FormzSubmissionStatus.inProgress);

    final result = await _removeFromFavouriteTracksUseCase(value);

    await result.fold(
      (error) {
        final header = error.header();
        final body = error.body();

        _commonUIDelegate.cupertinoDialog(
          header: header,
          body: body,
        );

        _favouriteStatus.add(FormzSubmissionStatus.failure);
      },
      (_) async {
        _favouriteStatus.add(FormzSubmissionStatus.success);

        if (_closeWhenRemoveFromFavourites) {
          await onPopInvokedWithResult();

          await Future.delayed(
            duration,
            () {
              final header = AppStrings.notification();
              final body = AppStrings.trackWasSuccessfullyDeleted();

              _commonUIDelegate.cupertinoDialog(
                header: header,
                body: body,
              );
            },
          );
        }
      },
    );
  }

  Future<void> deleteTrack() async {
    final duration = const Duration(milliseconds: 300);

    final value = trackDetailsStream.value?.track;
    if (value == null) return;

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

        await Future.delayed(
          duration,
          () {
            final header = AppStrings.notification();
            final body = AppStrings.trackWasSuccessfullyDeleted();

            _commonUIDelegate.cupertinoDialog(
              header: header,
              body: body,
            );
          },
        );
      },
    );
  }

  @action
  void animateCamera() {
    final positions = trackDetailsStream.value?.track?.positions;
    if (positions == null || positions.isEmpty) return;

    final points = calculatePoints(positions);

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

  Tuple2<LatLng, LatLng> calculatePoints(List<PositionData> positions) {
    final arrayPoints = positions.map((e) => e.positions).toList();

    List<Position> points = [];
    for (List<Position>? element in arrayPoints) {
      if (element != null) {
        points.addAll(element);
      }
    }
    final minAndMaxPoints = Position.calculatePoints(points);

    final minLatitude = minAndMaxPoints.value1.latitude ?? 0.0;
    final minLongitude = minAndMaxPoints.value1.longitude ?? 0.0;

    final maxLatitude = minAndMaxPoints.value2.latitude ?? 0.0;
    final maxLongitude = minAndMaxPoints.value2.longitude ?? 0.0;

    final southwest = LatLng(minLatitude, minLongitude);
    final northeast = LatLng(maxLatitude, maxLongitude);

    return Tuple2(southwest, northeast);
  }

  void dispose() {
    _deleteStatus.close();
    _favouriteStatus.close();
  }
}
