import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uniqtrack/data/tracks/models/models.dart';

import 'position_model_converter.dart';

class PositionDataModelConverterImpl
    implements JsonConverter<PositionDataModel?, Map<String, dynamic>?> {
  final _positionsArgument = 'positions';

  const PositionDataModelConverterImpl();

  @override
  PositionDataModel? fromJson(Map<String, dynamic>? json) {
    final positionModeConverter = PositionModelConverterImpl();

    if (json == null) {
      return null;
    }

    try {
      final jsonPositions = json[_positionsArgument];
      final positionsDecode =
          jsonPositions != null ? jsonDecode(jsonPositions) as List? : null;
      final positions = positionsDecode
          ?.map((item) {
            if (item != null && item is Map<String, dynamic>) {
              final data =
                  item.map((key, data) => MapEntry(key, data.toString()));
              return positionModeConverter.fromJson(data);
            } else {
              return null;
            }
          })
          .nonNulls
          .toList();

      return PositionDataModel(positions: positions);
    } catch (e) {
      return null;
    }
  }

  @override
  Map<String, dynamic>? toJson(PositionDataModel? object) {
    final positionModeConverter = PositionModelConverterImpl();

    try {
      if (object == null) {
        return {};
      }

      final jsonPositions = object.positions?.map((item) {
        return positionModeConverter.toJson(item);
      }).toList();

      final jsonPositionsEncode =
          jsonPositions != null ? jsonEncode(jsonPositions) : null;

      final result = jsonPositionsEncode != null
          ? <String, String>{
              _positionsArgument: jsonPositionsEncode,
            }
          : <String, String>{};

      return result;
    } catch (e) {
      return {};
    }
  }
}
