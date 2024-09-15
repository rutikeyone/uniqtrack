import 'package:json_annotation/json_annotation.dart';
import 'package:uniqtrack/features/tracks/domain/entities/entities.dart';

abstract interface class TrackConverter
    implements JsonConverter<Track?, Map<String, String>> {}
