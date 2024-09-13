import 'package:json_annotation/json_annotation.dart';
import 'package:uniqtrack/data/accounts/models/models.dart';

class GenderConverter
    implements JsonConverter<GenderModel?, Map<String, dynamic>?> {
  const GenderConverter();

  @override
  Map<String, dynamic>? toJson(GenderModel? object) {
    final value = object?.when(
      unknown: () => "U",
      male: () => "M",
      female: () => "F",
    );

    if (object == null) {
      return null;
    }

    return {
      "value": value,
    };
  }

  @override
  GenderModel? fromJson(Map<String, dynamic>? json) {
    final value = json?["value"];

    return switch (value) {
      "U" => const GenderModel.unknown(),
      "F" => const GenderModel.female(),
      "M" => const GenderModel.male(),
      _ => const GenderModel.unknown(),
    };
  }
}