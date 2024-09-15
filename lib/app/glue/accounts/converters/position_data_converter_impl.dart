import 'dart:convert';

import 'package:uniqtrack/features/tracks/domain/converters/position_converter.dart';
import 'package:uniqtrack/features/tracks/domain/converters/position_data_converter.dart';
import 'package:uniqtrack/features/tracks/domain/entities/entities.dart';

class PositionDataConverterImpl implements PositionDataConverter {
  final PositionConverter _positionConverter;

  final _positionsArgument = 'positions';

  const PositionDataConverterImpl({
    required PositionConverter positionConverter,
  }) : _positionConverter = positionConverter;

  @override
  PositionData? fromJson(Map<String, String> json) {
    try {
      final jsonPositions = json[_positionsArgument];
      final positionsDecode =
          jsonPositions != null ? jsonDecode(jsonPositions) as List? : null;
      final positions = positionsDecode
          ?.map((item) {
            if (item != null && item is Map<String, dynamic>) {
              final data =
                  item.map((key, data) => MapEntry(key, data.toString()));
              return _positionConverter.fromJson(data);
            } else {
              return null;
            }
          })
          .nonNulls
          .toList();

      return PositionData(positions: positions);
    } catch (e) {
      return null;
    }
  }

  @override
  Map<String, String> toJson(PositionData? object) {
    try {
      if (object == null) {
        return {};
      }

      final jsonPositions = object.positions?.map((item) {
        return _positionConverter.toJson(item);
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
