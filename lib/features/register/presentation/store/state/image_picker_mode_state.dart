import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uniqtrack/features/register/presentation/store/state/gender_state.dart';

part 'image_picker_mode_state.freezed.dart';

@freezed
class ImagePickerModeState with _$ImagePickerModeState {
  const factory ImagePickerModeState.placeholder({
    @Default(GenderState.male()) GenderState genderState,
  }) = _ImagePickerPlaceholderModeState;

  const factory ImagePickerModeState.photo() = _ImagePickerPhotoModeState;
}
