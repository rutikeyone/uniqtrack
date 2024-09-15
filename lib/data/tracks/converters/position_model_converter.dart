import 'package:json_annotation/json_annotation.dart';
import 'package:uniqtrack/data/tracks/models/models.dart';

class PositionModelConverterImpl
    implements JsonConverter<PositionModel?, Map<String, dynamic>?> {
  final _latitudeArgument = 'latitude';
  final _longitudeArgument = 'longitude';
  final _altitudeArgument = 'altitude';

  @override
  PositionModel? fromJson(Map<String, dynamic>? json) {
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

      return PositionModel(
        latitude: latitude,
        longitude: longitude,
        altitude: altitude,
      );
    } catch (e) {
      return null;
    }
  }

  @override
  Map<String, dynamic>? toJson(PositionModel? position) {
    try {
      if (position == null) {
        return null;
      }

      return {
        _latitudeArgument: (position.latitude ?? 0.0).toString(),
        _longitudeArgument: (position.longitude ?? 0.0).toString(),
        _altitudeArgument: (position.altitude ?? 0.0).toString(),
      };
    } catch (e) {
      return null;
    }
  }
}
