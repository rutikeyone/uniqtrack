// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_or_edit_record_track_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$AddOrEditRecordTrackStore on _AddOrEditRecordTrackStore, Store {
  late final _$modeStateAtom =
      Atom(name: '_AddOrEditRecordTrackStore.modeState', context: context);

  @override
  AddOrEditRecordTrackModeState get modeState {
    _$modeStateAtom.reportRead();
    return super.modeState;
  }

  @override
  set modeState(AddOrEditRecordTrackModeState value) {
    _$modeStateAtom.reportWrite(value, super.modeState, () {
      super.modeState = value;
    });
  }

  late final _$_AddOrEditRecordTrackStoreActionController =
      ActionController(name: '_AddOrEditRecordTrackStore', context: context);

  @override
  void deleteRecordTrack() {
    final _$actionInfo = _$_AddOrEditRecordTrackStoreActionController
        .startAction(name: '_AddOrEditRecordTrackStore.deleteRecordTrack');
    try {
      return super.deleteRecordTrack();
    } finally {
      _$_AddOrEditRecordTrackStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
modeState: ${modeState}
    ''';
  }
}
