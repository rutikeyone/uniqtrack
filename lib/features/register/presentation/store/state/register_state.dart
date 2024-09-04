import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uniqtrack/core/presentation/validation/entities/email.dart';
import 'package:uniqtrack/core/presentation/validation/entities/name.dart';
import 'package:uniqtrack/core/presentation/validation/entities/password.dart';
import 'package:uniqtrack/features/register/presentation/store/state/gender_state.dart';
import 'package:uniqtrack/features/register/presentation/store/state/image_picker_mode_state.dart';
import 'package:uniqtrack/features/register/presentation/store/state/register_status_state.dart';

part 'register_state.freezed.dart';

@immutable
@freezed
class RegisterState with _$RegisterState {
  bool get isMaleSelected {
    return gender.when(
      male: () => true,
      female: () => false,
    );
  }

  bool get isFemaleSelected {
    return gender.when(
      male: () => false,
      female: () => true,
    );
  }

  const RegisterState._();

  const factory RegisterState({
    required ImagePickerModeState modeState,
    required GenderState gender,
    required Email email,
    required Password password,
    required Name name,
    required bool canRegister,
    required RegisterStatusState registerStatusState,
  }) = _RegisterState;
}
