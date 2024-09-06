import 'package:freezed_annotation/freezed_annotation.dart';

part 'gender_model.freezed.dart';

@immutable
@freezed
class GenderModel with _$GenderModel {
  const factory GenderModel.unknown() = _GenderUnknownModel;

  const GenderModel._();

  const factory GenderModel.male() = _GenderMaleModel;

  const factory GenderModel.female() = _GenderFemaleModel;
}
