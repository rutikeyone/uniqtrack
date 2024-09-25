import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';
import 'package:formz/formz.dart';
import 'package:generic_usecase/generic_usecase.dart';
import 'package:mobx/mobx.dart';
import 'package:uniqtrack/core/common/activity.dart';
import 'package:uniqtrack/core/common/common_ui/common_ui_delegate.dart';
import 'package:uniqtrack/core/common/exceptions/exceptions.dart';
import 'package:uniqtrack/core/common/strings/app_strings.dart';
import 'package:uniqtrack/core/common/validation/entities/comment.dart';
import 'package:uniqtrack/core/common/validation/entities/track_name.dart';
import 'package:uniqtrack/features/tracks/domain/entities/entities.dart';
import 'package:uniqtrack/features/tracks/domain/track_repository.dart';

import 'states/states.dart';

part 'add_or_edit_record_track_store.g.dart';

abstract interface class AddOrEditRecordTrackStoreBuilder {
  AddOrEditRecordTrackStore create({
    required BuildContext context,
    required Track? track,
  });
}

class AddOrEditRecordTrackStore = _AddOrEditRecordTrackStore
    with _$AddOrEditRecordTrackStore;

abstract class _AddOrEditRecordTrackStore with Store {
  final CommonUIDelegate _commonUIDelegate;
  final TrackRepository _recordTrackRepository;

  final Usecase<Track, Either<AppError, void>>? _updateTrackUseCase;
  final Usecase<Track, Either<AppError, void>>? _deleteTrackUseCase;

  @observable
  AddOrEditRecordTrackModeState modeState;

  @observable
  Comment comment;

  @observable
  TrackName trackName;

  @observable
  FormzSubmissionStatus saveStatusMode = FormzSubmissionStatus.initial;

  @observable
  FormzSubmissionStatus editStatusMode = FormzSubmissionStatus.initial;

  @observable
  FormzSubmissionStatus deleteStatusMode = FormzSubmissionStatus.initial;

  @observable
  Activity<AddOrEditRecordTrackActions>? actions;

  @MakeObservable(useDeepEquality: true)
  List<Memory> memories;

  @computed
  bool get canSave {
    final List<FormzInput> allInputs = [trackName];
    final isAllInputValid = allInputs.every((item) => item.isValid);
    final saveInProgress = saveStatusMode == FormzSubmissionStatus.inProgress;

    final isNotNullTrack = modeState.when(
      add: (track) => track != null,
      edit: (_) => false,
    );

    return isAllInputValid && !saveInProgress && isNotNullTrack;
  }

  @computed
  bool get canEdit {
    final List<FormzInput> allInputs = [trackName];
    final isAllInputValid = allInputs.every((item) => item.isValid);
    final editInProgress = editStatusMode == FormzSubmissionStatus.inProgress;

    return isAllInputValid && !editInProgress;
  }

  @computed
  AddOrEditRecordTrackState get state => AddOrEditRecordTrackState(
        comment: comment,
        trackName: trackName,
        modeState: modeState,
        statusState: saveStatusMode,
        canSave: canSave,
      );

  _AddOrEditRecordTrackStore({
    required Track? track,
    required CommonUIDelegate commonUIDelegate,
    required TrackRepository recordTrackRepository,
    required Usecase<Track, Either<AppError, void>>? updateTrackUseCase,
    required Usecase<Track, Either<AppError, void>>? deleteTrackUseCase,
  })  : _commonUIDelegate = commonUIDelegate,
        _recordTrackRepository = recordTrackRepository,
        modeState = _initialAddOrEditRecordTrackModeState(track),
        _updateTrackUseCase = updateTrackUseCase,
        _deleteTrackUseCase = deleteTrackUseCase,
        memories = track?.memories ?? [],
        trackName = _initialTrackNameState(track),
        comment = _initialCommentState(track);

  @action
  void updateComment(String? value) {
    if (value == null) return;

    final newComment = Comment.dirty(value);
    comment = newComment;
  }

  @action
  void updateTrackName(String? value) {
    if (value == null) return;

    final newTrackName = TrackName.dirty(value);
    trackName = newTrackName;
  }

  @action
  Future<void> save() async {
    if (!canSave) return;

    final nameValue = trackName.value;
    final commentValue = comment.value;

    final track = modeState.when(
      add: (track) {
        return track?.copyWith(
          name: nameValue,
          comment: commentValue,
          dateCreated: DateTime.now(),
          memories: memories,
        );
      },
      edit: (_) => null,
    );

    if (track == null) return;

    saveStatusMode = FormzSubmissionStatus.inProgress;

    final result = await _recordTrackRepository.addTrack(track);

    result.fold(
      _handleSaveRecordTrackDataFailureResult,
      _handleSaveRecordTrackDataSuccessResult,
    );
  }

  @action
  Future<void> edit() async {
    final track = modeState.whenOrNull(
      edit: (data) => data,
    );

    if (!canEdit || track == null || _updateTrackUseCase == null) return;

    final nameValue = trackName.value;
    final commentValue = comment.value;

    final newTrack = track.copyWith(
      name: nameValue,
      comment: commentValue,
      memories: memories,
    );

    editStatusMode = FormzSubmissionStatus.inProgress;

    final updateTrackResult = await _updateTrackUseCase.call(newTrack);

    updateTrackResult.fold(
      (error) {
        editStatusMode = FormzSubmissionStatus.failure;

        final header = error.header();
        final body = error.body();

        _commonUIDelegate.cupertinoDialog(
          header: header,
          body: body,
        );
      },
      (_) {
        final duration = Duration(milliseconds: 300);

        editStatusMode = FormzSubmissionStatus.success;

        final action = AddOrEditRecordTrackActions.navigateBack();
        actions = Activity(action);

        Future.delayed(duration, () {
          final header = AppStrings.notification();
          final body = AppStrings.dataHasBeenSuccessfullyUpdated();

          _commonUIDelegate.cupertinoDialog(
            header: header,
            body: body,
          );
        });
      },
    );
  }

  @action
  void deleteMemory(Memory memory) {
    final newMemories = [...memories]..remove(memory);
    memories = newMemories;
  }

  @action
  Future<void> deleteRecordTrack() async {
    final track = modeState.whenOrNull(
      edit: (data) => data,
    );

    if (track == null || _deleteTrackUseCase == null) {
      return null;
    }

    _commonUIDelegate.showLoader();
    deleteStatusMode = FormzSubmissionStatus.inProgress;

    final deleteTrackResult = await _deleteTrackUseCase.call(track);

    deleteTrackResult.fold(
      _handleDeleteTrackFailureResult,
      _handleDeleteTrackSuccessResult,
    );
  }

  void _handleSaveRecordTrackDataFailureResult(AppError l) {
    saveStatusMode = FormzSubmissionStatus.failure;
    if (l.isCancelError) return;

    final header = l.header();
    final body = l.body();

    _commonUIDelegate.cupertinoDialog(
      header: header,
      body: body,
    );
  }

  void _handleSaveRecordTrackDataSuccessResult(_) {
    final duration = const Duration(milliseconds: 300);

    saveStatusMode = FormzSubmissionStatus.success;

    final navigateBackAction = AddOrEditRecordTrackActions.navigateBack();
    actions = Activity(navigateBackAction);

    Future.delayed(duration, () {
      final header = AppStrings.notification();
      final body = AppStrings.entryWasSuccessfullyAdded();

      _commonUIDelegate.cupertinoDialog(header: header, body: body);
    });
  }

  void _handleDeleteTrackFailureResult(AppError error) {
    _commonUIDelegate.hideLoader();
    deleteStatusMode = FormzSubmissionStatus.failure;

    final header = error.header();
    final body = error.body();

    _commonUIDelegate.cupertinoDialog(
      header: header,
      body: body,
    );
  }

  void _handleDeleteTrackSuccessResult(_) {
    final duration = const Duration(milliseconds: 200);

    _commonUIDelegate.hideLoader();
    deleteStatusMode = FormzSubmissionStatus.success;

    final navigateBackAction = AddOrEditRecordTrackActions.navigateBack();
    actions = Activity(navigateBackAction);

    Future.delayed(duration, () {
      final header = AppStrings.notification();
      final body = AppStrings.trackWasSuccessfullyDeleted();

      _commonUIDelegate.cupertinoDialog(header: header, body: body);
    });
  }

  static Comment _initialCommentState(Track? track) {
    return track != null &&
            track.comment != null &&
            track.comment?.isNotEmpty == true
        ? Comment.dirty(track.comment ?? '')
        : Comment.pure();
  }

  static TrackName _initialTrackNameState(Track? track) {
    return track != null && track.name != null && track.name?.isNotEmpty == true
        ? TrackName.dirty(track.name ?? '')
        : TrackName.pure();
  }

  static AddOrEditRecordTrackModeState _initialAddOrEditRecordTrackModeState(
      Track? track) {
    return track != null && track.id != null
        ? AddOrEditRecordTrackModeState.edit(track: track)
        : AddOrEditRecordTrackModeState.add(track: track);
  }
}
