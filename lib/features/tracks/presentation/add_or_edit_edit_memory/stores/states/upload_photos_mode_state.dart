import 'dart:typed_data';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'upload_photos_mode_state.freezed.dart';

@freezed
class UploadPhotosModeState with _$UploadPhotosModeState {
  const factory UploadPhotosModeState.add({
    @Default([]) List<Uint8List> photos,
  }) = _AddPhotosModeState;

  const factory UploadPhotosModeState.edit({
    required List<String> photos,
    @Default([]) List<Uint8List> newPhotos,
  }) = _UploadPhotosModeState;
}
