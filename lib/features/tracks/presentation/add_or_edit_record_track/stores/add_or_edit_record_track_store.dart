import 'package:flutter/cupertino.dart';
import 'package:formz/formz.dart';
import 'package:mobx/mobx.dart';
import 'package:uniqtrack/core/common/activity.dart';
import 'package:uniqtrack/core/common/common_ui/common_ui_delegate.dart';
import 'package:uniqtrack/core/common/exceptions/exceptions.dart';
import 'package:uniqtrack/core/common/strings/app_strings.dart';
import 'package:uniqtrack/core/common/validation/entities/comment.dart';
import 'package:uniqtrack/core/common/validation/entities/track_name.dart';
import 'package:uniqtrack/features/tracks/domain/entities/entities.dart';
import 'package:uniqtrack/features/tracks/domain/record_track_repository.dart';
import 'package:uuid/uuid.dart';

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
  final RecordTrackRepository _recordTrackRepository;

  final Uuid _uuid;

  @observable
  AddOrEditRecordTrackModeState modeState;

  @observable
  Comment comment = Comment.pure();

  @observable
  TrackName trackName = TrackName.pure();

  @observable
  FormzSubmissionStatus statusMode = FormzSubmissionStatus.initial;

  @observable
  Activity<AddOrEditRecordTrackActions>? actions;

  @MakeObservable(useDeepEquality: true)
  List<Memory> memories;

  @computed
  bool get canSave {
    final List<FormzInput> allInputs = [trackName, comment];
    final isAllInputValid = allInputs.every((item) => item.isValid);
    final saveInProgress = statusMode == FormzSubmissionStatus.inProgress;

    final isNotNullTrack = modeState.when(
      add: (track) => track != null,
      edit: () => false,
    );

    return isAllInputValid && !saveInProgress && isNotNullTrack;
  }

  @computed
  AddOrEditRecordTrackState get state => AddOrEditRecordTrackState(
        comment: comment,
        trackName: trackName,
        modeState: modeState,
        statusState: statusMode,
        canSave: canSave,
      );

  _AddOrEditRecordTrackStore({
    required Track? track,
    required CommonUIDelegate commonUIDelegate,
    required RecordTrackRepository recordTrackRepository,
    required Uuid uuid,
  })  : _commonUIDelegate = commonUIDelegate,
        _recordTrackRepository = recordTrackRepository,
        modeState = AddOrEditRecordTrackModeState.add(track: track),
        memories = track?.memories ?? [],
        _uuid = uuid;

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
          id: _uuid.v1(),
          name: nameValue,
          comment: commentValue,
        );
      },
      edit: () => null,
    );

    if (track == null) return;

    statusMode = FormzSubmissionStatus.inProgress;

    final result = await _recordTrackRepository.addRecordTrackData(track);

    result.fold(
      _handleSaveRecordTrackDataFailureResult,
      _handleSaveRecordTrackDataSuccessResult,
    );

    _commonUIDelegate.hideLoader();
  }

  @action
  void deleteMemory(Memory memory) {
    final newMemories = [...memories]..remove(memory);
    memories = newMemories;
  }

  @action
  void deleteRecordTrack() {}

  void _handleSaveRecordTrackDataFailureResult(AppError l) {
    statusMode = FormzSubmissionStatus.failure;
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

    statusMode = FormzSubmissionStatus.success;

    final navigateBackAction = AddOrEditRecordTrackActions.navigateBack();
    actions = Activity(navigateBackAction);

    Future.delayed(duration, () {
      final header = AppStrings.notification();
      final body = AppStrings.entryWasSuccessfullyAdded();

      _commonUIDelegate.cupertinoDialog(header: header, body: body);
    });
  }
}
