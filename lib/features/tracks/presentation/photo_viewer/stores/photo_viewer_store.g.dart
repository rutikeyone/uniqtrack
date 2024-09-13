// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'photo_viewer_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$PhotoViewerStore on _PhotoViewerStore, Store {
  late final _$stateAtom =
      Atom(name: '_PhotoViewerStore.state', context: context);

  @override
  PhotoViewerState get state {
    _$stateAtom.reportRead();
    return super.state;
  }

  bool _stateIsInitialized = false;

  @override
  set state(PhotoViewerState value) {
    _$stateAtom.reportWrite(value, _stateIsInitialized ? super.state : null,
        () {
      super.state = value;
      _stateIsInitialized = true;
    });
  }

  @override
  String toString() {
    return '''
state: ${state}
    ''';
  }
}
