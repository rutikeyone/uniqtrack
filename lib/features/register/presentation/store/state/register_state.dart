import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uniqtrack/core/presentation/validation/entities/email.dart';
import 'package:uniqtrack/core/presentation/validation/entities/name.dart';
import 'package:uniqtrack/core/presentation/validation/entities/password.dart';
import 'package:uniqtrack/features/register/presentation/store/state/gender_state.dart';
import 'package:uniqtrack/features/register/presentation/store/state/image_picker_mode_state.dart';

part 'register_state.freezed.dart';

@immutable
@freezed
class RegisterState with _$RegisterState {
  bool get isMaleSelected {
    return modeState.maybeWhen(
      placeholder: (genderState) {
        return genderState.when(
          male: () => true,
          female: () => false,
        );
      },
      orElse: () => false,
    );
  }

  bool get isFemaleSelected {
    return modeState.maybeWhen(
      placeholder: (genderState) {
        return genderState.when(
          male: () => false,
          female: () => true,
        );
      },
      orElse: () => false,
    );
  }

  GenderState? get gender {
    return modeState.when(
      placeholder: (genderState) => genderState,
      photo: () => null,
    );
  }

  const RegisterState._();

  const factory RegisterState({
    @Default(ImagePickerModeState.placeholder()) ImagePickerModeState modeState,
    @Default(Email.pure()) Email email,
    @Default(Password.pure()) Password password,
    @Default(Name.pure()) Name name,
  }) = _RegisterState;
}
