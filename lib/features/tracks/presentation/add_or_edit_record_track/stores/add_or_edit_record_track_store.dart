import 'package:flutter/cupertino.dart';
import 'package:formz/formz.dart';
import 'package:mobx/mobx.dart';
import 'package:uniqtrack/core/common/validation/entities/comment.dart';
import 'package:uniqtrack/core/common/validation/entities/track_name.dart';

import 'states/states.dart';

part 'add_or_edit_record_track_store.g.dart';

abstract interface class AddOrEditRecordTrackStoreBuilder {
  AddOrEditRecordTrackStore create(BuildContext context);
}

class AddOrEditRecordTrackStore = _AddOrEditRecordTrackStore
    with _$AddOrEditRecordTrackStore;

abstract class _AddOrEditRecordTrackStore with Store {
  @observable
  AddOrEditRecordTrackModeState modeState;

  @observable
  Comment comment = Comment.pure();

  @observable
  TrackName trackName = TrackName.pure();

  @observable
  FormzSubmissionStatus statusMode = FormzSubmissionStatus.initial;

  @computed
  bool get canSave {
    final List<FormzInput> allInputs = [trackName, comment];
    final isAllInputValid = allInputs.every((item) => item.isValid);
    final saveInProgress = statusMode == FormzSubmissionStatus.inProgress;
    return isAllInputValid && !saveInProgress;
  }

  @computed
  AddOrEditRecordTrackState get state => AddOrEditRecordTrackState(
        comment: comment,
        trackName: trackName,
        modeState: modeState,
        statusState: statusMode,
        canSave: canSave,
      );

  _AddOrEditRecordTrackStore()
      : modeState = AddOrEditRecordTrackModeState.add();

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
  void save() {
    if (!canSave) return;
  }

  @action
  void deleteRecordTrack() {}
}
