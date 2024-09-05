import 'package:freezed_annotation/freezed_annotation.dart';

part 'gender_model.freezed.dart';

@immutable
@freezed
class GenderModel with _$GenderModel {
  const factory GenderModel.unknown() = _GenderUnknownModel;

  const GenderModel._();

  const factory GenderModel.male() = _GenderMaleModel;

  const factory GenderModel.female() = _GenderFemaleModel;

  factory GenderModel.fromJson(Map<String, dynamic> json) {
    final value = json["value"];

    return switch (value) {
      "U" => const GenderModel.unknown(),
      "F" => const GenderModel.female(),
      "M" => const GenderModel.male(),
      _ => const GenderModel.unknown(),
    };
  }

  Map<String, dynamic> toJson() {
    final value = when(
      unknown: () => "U",
      male: () => "M",
      female: () => "F",
    );

    return {
      "value": value,
    };
  }
}
