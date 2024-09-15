import 'dart:convert';

import 'package:uniqtrack/features/tracks/domain/converters/memory_converter.dart';
import 'package:uniqtrack/features/tracks/domain/converters/position_data_converter.dart';
import 'package:uniqtrack/features/tracks/domain/converters/track_converter.dart';
import 'package:uniqtrack/features/tracks/domain/entities/entities.dart';

class TrackConverterImpl implements TrackConverter {
  final PositionDataConverter _positionDataConverter;
  final MemoryConverter _memoryConverter;

  final _idArgument = 'id';
  final _creatorIdArgument = 'creatorId';
  final _positionsArgument = 'positions';
  final _distanceArgument = 'distance';
  final _durationArgument = 'duration';
  final _averageSpeedArgument = 'averageSpeed';
  final _maxAltitudeArgument = 'maxAltitude';
  final _memoriesArgument = 'memories';

  const TrackConverterImpl({
    required PositionDataConverter positionDataConverter,
    required MemoryConverter memoryConverter,
  })  : _positionDataConverter = positionDataConverter,
        _memoryConverter = memoryConverter;

  @override
  Track? fromJson(Map<String, String> json) {
    try {
      final id = json[_idArgument];
      final creatorId = json[_creatorIdArgument];
      final jsonPositionsData = json[_positionsArgument];
      final jsonDistance = json[_distanceArgument];
      final jsonDuration = json[_durationArgument];
      final jsonAverageSpeed = json[_averageSpeedArgument];
      final jsonMaxAltitude = json[_maxAltitudeArgument];
      final jsonMemories = json[_memoriesArgument];

      final positionsDataDecode = jsonPositionsData != null
          ? jsonDecode(jsonPositionsData) as List
          : null;
      final positions = positionsDataDecode
          ?.map((item) {
            if (item != null && item is Map<String, dynamic>) {
              final data =
                  item.map((key, item) => MapEntry(key, item.toString()));
              return _positionDataConverter.fromJson(data);
            } else {
              return null;
            }
          })
          .nonNulls
          .toList();

      final memoriesDecode =
          jsonMemories != null ? jsonDecode(jsonMemories) as List : null;

      final memories = memoriesDecode
          ?.map((item) {
            if (item != null && item is Map<String, dynamic>) {
              final data =
                  item.map((key, item) => MapEntry(key, item.toString()));
              return _memoryConverter.fromJson(data);
            } else {
              return null;
            }
          })
          .nonNulls
          .toList();

      final distance =
          jsonDistance != null ? double.tryParse(jsonDistance) : null;
      final duration = jsonDuration != null ? int.tryParse(jsonDuration) : null;
      final averageSpeed =
          jsonAverageSpeed != null ? double.tryParse(jsonAverageSpeed) : null;
      final maxAltitude =
          jsonMaxAltitude != null ? double.tryParse(jsonMaxAltitude) : null;

      return Track(
        id: id,
        creatorId: creatorId,
        positions: positions,
        distance: distance,
        duration: duration,
        averageSpeed: averageSpeed,
        maxAltitude: maxAltitude,
        memories: memories,
      );
    } catch (e) {
      return null;
    }
  }

  @override
  Map<String, String> toJson(Track? object) {
    try {
      if (object == null) {
        return {};
      }

      Map<String, String> result = {};

      final id = object.id;
      final creatorId = object.creatorId;
      final positions = object.positions;
      final distance = object.distance;
      final duration = object.duration;
      final averageSpeed = object.averageSpeed;
      final maxAltitude = object.maxAltitude;
      final memories = object.memories;

      if (id != null) {
        result.addAll({
          _idArgument: id,
        });
      }

      if (creatorId != null) {
        result.addAll({
          _creatorIdArgument: creatorId,
        });
      }

      if (positions != null) {
        final jsonData = positions.map((item) {
          return _positionDataConverter.toJson(item);
        }).toList();

        final jsonDataEncode = jsonEncode(jsonData);

        result.addAll({
          _positionsArgument: jsonDataEncode,
        });
      }

      if (distance != null) {
        result.addAll({
          _distanceArgument: distance.toString(),
        });
      }

      if (duration != null) {
        result.addAll({
          _durationArgument: duration.toString(),
        });
      }

      if (averageSpeed != null) {
        result.addAll({
          _averageSpeedArgument: averageSpeed.toString(),
        });
      }

      if (maxAltitude != null) {
        result.addAll({
          _maxAltitudeArgument: maxAltitude.toString(),
        });
      }

      if (memories != null) {
        final jsonMemories = memories.map((item) {
          return _memoryConverter.toJson(item);
        }).toList();

        final jsonDataEncode = jsonEncode(jsonMemories);

        result.addAll({
          _memoriesArgument: jsonDataEncode,
        });
      }

      return result;
    } catch (e) {
      return {};
    }
  }
}
