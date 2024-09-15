import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uniqtrack/data/tracks/converters/memory_model_converter.dart';
import 'package:uniqtrack/data/tracks/models/models.dart';

class ListMemoryModelConverter
    implements JsonConverter<List<MemoryModel>?, String?> {
  const ListMemoryModelConverter();

  @override
  List<MemoryModel>? fromJson(String? json) {
    final memoryModelConverter = MemoryModelConverterImpl();

    try {
      if (json == null) {
        return null;
      }

      final decode = jsonDecode(json) as List?;
      final result = decode
          ?.map((item) => memoryModelConverter.fromJson(item))
          .nonNulls
          .toList();
      return result;
    } catch (e) {
      return null;
    }
  }

  @override
  String? toJson(List<MemoryModel>? object) {
    final memoryModelConverter = MemoryModelConverterImpl();

    try {
      if (object == null) {
        return null;
      }

      final result = object
          .map((item) {
            return memoryModelConverter.toJson(item);
          })
          .nonNulls
          .toList();

      final jsonResult = jsonEncode(result);
      return jsonResult;
    } catch (e) {
      return null;
    }
  }
}
