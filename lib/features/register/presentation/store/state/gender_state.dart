import 'package:freezed_annotation/freezed_annotation.dart';

part 'gender_state.freezed.dart';

@freezed
class GenderState with _$GenderState {
  const factory GenderState.male() = _GenderMaleState;
  const factory GenderState.female() = _GenderFemaleState;
}