import 'package:flutter/cupertino.dart';
import 'package:mobx/mobx.dart';

import 'states/states.dart';

part 'add_or_edit_record_track_store.g.dart';

class AddOrEditRecordTrackStore = _AddOrEditRecordTrackStore
    with _$AddOrEditRecordTrackStore;

abstract interface class AddOrEditRecordStoreBuilder {
  AddOrEditRecordTrackStore create(BuildContext context);
}

abstract class _AddOrEditRecordTrackStore with Store {
  @observable
  AddOrEditRecordTrackModeState modeState;

  _AddOrEditRecordTrackStore()
      : modeState = AddOrEditRecordTrackModeState.add();

  @action
  void deleteRecordTrack() {}
}
