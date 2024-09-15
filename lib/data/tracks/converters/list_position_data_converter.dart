import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uniqtrack/data/tracks/converters/position_model_converter.dart';
import 'package:uniqtrack/data/tracks/models/models.dart';

import 'position_data_model_converter.dart';

class ListPositionDataConverter
    implements JsonConverter<List<PositionDataModel>?, String?> {
  const ListPositionDataConverter();

  @override
  List<PositionDataModel>? fromJson(String? json) {
    final positionDataModelConverter = PositionDataModelConverterImpl();

    try {
      if (json == null) {
        return null;
      }

      final decoded = jsonDecode(json) as List?;
      final result = decoded
          ?.map((item) => positionDataModelConverter.fromJson(item))
          .nonNulls
          .toList();
      return result;
    } catch (e) {
      return null;
    }
  }

  @override
  String? toJson(List<PositionDataModel>? object) {
    final positionDataModelConverter = PositionDataModelConverterImpl();

    if (object == null) {
      return null;
    }

    final result = object
        .map((item) {
          return positionDataModelConverter.toJson(item);
        })
        .nonNulls
        .toList();

    final jsonResult = jsonEncode(result);
    return jsonResult;
  }
}
