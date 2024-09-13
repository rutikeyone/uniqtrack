import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'photo_viewer_state.freezed.dart';

@freezed
class PhotoViewerState with _$PhotoViewerState {
  const PhotoViewerState._();

  const factory PhotoViewerState.none() = _NoneViewState;

  const factory PhotoViewerState.bytes({
    required Uint8List data,
  }) = _PhotoBytesViewerState;

  const factory PhotoViewerState.link({
    required String? link,
  }) = _PhotoLinkViewerState;
}
