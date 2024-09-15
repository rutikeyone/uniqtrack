import 'package:json_annotation/json_annotation.dart';
import 'package:uniqtrack/features/tracks/domain/entities/entities.dart';

abstract interface class PositionConverter
    implements JsonConverter<Position?, Map<String, String>> {}
