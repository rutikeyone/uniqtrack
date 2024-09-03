import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uniqtrack/features/register/presentation/providers/state/gender.dart';
import 'package:uniqtrack/features/register/presentation/providers/state/image_picker_mode.dart';

part 'register_state.freezed.dart';

@immutable
@freezed
class RegisterState with _$RegisterState {
  bool get isMaleSelected {
    return mode.maybeWhen(
      placeholder: (gender) {
        return gender.when(
          male: () => true,
          female: () => false,
        );
      },
      orElse: () => false,
    );
  }

  bool get isFemaleSelected {
    return mode.maybeWhen(
      placeholder: (gender) {
        return gender.when(
          male: () => false,
          female: () => true,
        );
      },
      orElse: () => false,
    );
  }

  Gender? get gender {
    return mode.when(
      placeholder: (gender) => gender,
      photo: () => null,
    );
  }

  const RegisterState._();

  const factory RegisterState({
    @Default(ImagePickerMode.placeholder(gender: Gender.male()))
    ImagePickerMode mode,
  }) = _RegisterState;
}
