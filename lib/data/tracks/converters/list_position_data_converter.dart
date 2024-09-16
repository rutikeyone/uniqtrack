import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uniqtrack/data/tracks/models/models.dart';

import 'position_data_model_converter.dart';

class ListPositionDataConverter
    implements JsonConverter<List<PositionDataModel>?, List?> {
  const ListPositionDataConverter();

  @override
  List<PositionDataModel>? fromJson(List? data) {
    final positionDataModelConverter = PositionDataModelConverterImpl();

    try {
      if (data == null) {
        return null;
      }

      final result = data
          .map((item) => positionDataModelConverter.fromJson(item))
          .nonNulls
          .toList();
      return result;
    } catch (e) {
      return null;
    }
  }

  @override
  List? toJson(List<PositionDataModel>? object) {
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

    return result;
  }
}
