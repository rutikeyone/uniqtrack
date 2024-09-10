import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uniqtrack/core/common/validation/entities/email.dart';
import 'package:uniqtrack/core/common/validation/entities/name.dart';
import 'package:uniqtrack/core/common/validation/entities/password.dart';
import 'package:uniqtrack/features/register/domain/entities/gender.dart';
import 'package:uniqtrack/features/register/presentation/stores/state/image_picker_mode_state.dart';
import 'package:uniqtrack/features/register/presentation/stores/state/register_status_state.dart';

part 'register_state.freezed.dart';

@immutable
@freezed
class RegisterState with _$RegisterState {
  bool get isMaleSelected {
    return gender.when(
      male: () => true,
      unknown: () => false,
      female: () => false,
    );
  }

  bool get isFemaleSelected {
    return gender.when(
      female: () => true,
      unknown: () => false,
      male: () => false,
    );
  }

  const RegisterState._();

  const factory RegisterState({
    required ImagePickerModeState modeState,
    required Gender gender,
    required Email email,
    required Password password,
    required Name name,
    required bool canRegister,
    required RegisterStatusState registerStatusState,
  }) = _RegisterState;
}
