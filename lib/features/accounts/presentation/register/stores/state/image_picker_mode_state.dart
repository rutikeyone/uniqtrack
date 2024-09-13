part of 'states.dart';

@freezed
class ImagePickerModeState with _$ImagePickerModeState {
  const factory ImagePickerModeState.placeholder() = _ImagePickerPlaceholderModeState;

  const factory ImagePickerModeState.photo({
    required File file,
  }) = _ImagePickerPhotoModeState;
}
