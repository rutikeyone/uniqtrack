import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uniqtrack/features/tracks/domain/entities/entities.dart';

abstract interface class PositionDataConverter
    implements JsonConverter<PositionData?, Map<String, String>> {}
