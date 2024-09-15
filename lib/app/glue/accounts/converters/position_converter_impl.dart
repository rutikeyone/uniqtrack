import 'package:uniqtrack/features/tracks/domain/converters/position_converter.dart';
import 'package:uniqtrack/features/tracks/domain/entities/entities.dart';

class PositionConverterImpl implements PositionConverter {
  final _latitudeArgument = 'latitude';
  final _longitudeArgument = 'longitude';
  final _altitudeArgument = 'altitude';

  @override
  Position? fromJson(Map<String, String>? json) {
    try {
      if (json == null) return null;

      final latitudeArg = json[_latitudeArgument];
      final longitudeArg = json[_longitudeArgument];
      final altitudeArg = json[_altitudeArgument];

      final latitude =
          latitudeArg != null ? double.tryParse(latitudeArg) : null;
      final longitude =
          longitudeArg != null ? double.tryParse(longitudeArg) : null;
      final altitude =
          altitudeArg != null ? double.tryParse(altitudeArg) : null;

      if (latitude == null && longitude == null && altitude == null) {
        return null;
      }

      return Position(
        latitude: latitude,
        longitude: longitude,
        altitude: altitude,
      );
    } catch (e) {
      return null;
    }
  }

  @override
  Map<String, String> toJson(Position? position) {
    try {
      if (position == null) {
        return {};
      }

      return {
        _latitudeArgument: (position.latitude ?? 0.0).toString(),
        _longitudeArgument: (position.longitude ?? 0.0).toString(),
        _altitudeArgument: (position.altitude ?? 0.0).toString(),
      };
    } catch (e) {
      return {};
    }
  }
}
