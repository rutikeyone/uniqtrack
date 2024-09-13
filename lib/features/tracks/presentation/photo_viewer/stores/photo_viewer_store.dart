import 'dart:typed_data';

import 'package:flutter/cupertino.dart';
import 'package:mobx/mobx.dart';

import 'states/photo_viewer_state.dart';

part 'photo_viewer_store.g.dart';

abstract interface class PhotoViewerStoreBuilder {
  PhotoViewerStore create(
    BuildContext context, {
    required Uint8List? bytes,
    required String? link,
  });
}

class PhotoViewerStore = _PhotoViewerStore with _$PhotoViewerStore;

abstract class _PhotoViewerStore with Store {
  @observable
  late PhotoViewerState state;

  _PhotoViewerStore({
    required Uint8List? bytes,
    required String? link,
  }) {
    _initPhotoViewerState(bytes: bytes, link: link);
  }

  void _initPhotoViewerState({
    required Uint8List? bytes,
    required String? link,
  }) {
    if (bytes != null) {
      state = PhotoViewerState.bytes(data: bytes);
    } else if (link != null) {
      state = PhotoViewerState.link(link: link);
    } else {
      state = PhotoViewerState.none();
    }
  }
}
