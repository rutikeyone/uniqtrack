import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uniqtrack/features/register/presentation/providers/state/gender.dart';

part 'image_picker_mode.freezed.dart';

@freezed
class ImagePickerMode with _$ImagePickerMode {
  const factory ImagePickerMode.placeholder({
    required Gender gender,
  }) = _ImagePickerPlaceholderMode;
  const factory ImagePickerMode.photo() = _ImagePickerPhotoMode;
}
