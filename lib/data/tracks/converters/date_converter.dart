import 'package:intl/intl.dart';
import 'package:json_annotation/json_annotation.dart';

class DateConverter implements JsonConverter<DateTime?, String?> {
  const DateConverter();

  @override
  DateTime? fromJson(String? json) {
    if (json == null) return null;
    final dateFormat = DateFormat("dd.MM.yyyy HH:mm:ss");
    try {
      final date = dateFormat.parse(json);
      return date;
    } catch (_) {
      return null;
    }
  }

  @override
  String? toJson(DateTime? object) {
    if (object == null) return null;
    final dateFormat = DateFormat("dd.MM.yyyy HH:mm:ss");
    return dateFormat.format(object);
  }
}
