part of 'states.dart';

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
