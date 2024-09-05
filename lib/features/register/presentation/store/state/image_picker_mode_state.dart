import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uniqtrack/features/register/domain/entities/file.dart';

part 'image_picker_mode_state.freezed.dart';

@freezed
class ImagePickerModeState with _$ImagePickerModeState {
  const factory ImagePickerModeState.placeholder() = _ImagePickerPlaceholderModeState;

  const factory ImagePickerModeState.photo({
    required File file,
  }) = _ImagePickerPhotoModeState;
}
