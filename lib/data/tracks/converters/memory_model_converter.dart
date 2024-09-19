import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';
import 'package:uniqtrack/data/tracks/converters/position_model_converter.dart';
import 'package:uniqtrack/data/tracks/models/models.dart';

class MemoryModelConverterImpl
    implements JsonConverter<MemoryModel?, Map<String, dynamic>?> {
  final _idArgument = 'id';
  final _nameArgument = 'name';
  final _commentArgument = 'comment';
  final _photosArgument = 'photos';
  final _positionArgument = 'position';

  @override
  MemoryModel? fromJson(Map<String, dynamic>? json) {
    final positionModelConverter = PositionModelConverterImpl();

    try {
      if (json == null) {
        return null;
      }

      final id = json[_idArgument];
      final name = json[_nameArgument];
      final comment = json[_commentArgument];
      final photosData = json[_photosArgument];
      final positionData = json[_positionArgument];

      final photos = photosData != null
          ? (jsonDecode(photosData) as List?)
              ?.map((item) => item.toString())
              .toList()
          : null;
      final position = positionData != null
          ? () {
              final jsonDecoded =
                  jsonDecode(positionData) as Map<String, dynamic>?;
              final data = jsonDecoded
                  ?.map((key, item) => MapEntry(key, item.toString()));

              return data != null
                  ? positionModelConverter.fromJson(data)
                  : null;
            }.call()
          : null;

      return MemoryModel(
        id: id,
        name: name,
        comment: comment,
        photos: photos,
        position: position,
      );
    } catch (e) {
      return null;
    }
  }

  @override
  Map<String, dynamic>? toJson(MemoryModel? object) {
    final positionModelConverter = PositionModelConverterImpl();

    try {
      if (object == null) {
        return {};
      }

      Map<String, String> result = {};

      final id = object.id;
      final name = object.name;
      final comment = object.comment;
      final photos = object.photos;
      final position = object.position;

      if (id != null) {
        result.addAll({
          _idArgument: id,
        });
      }

      if (name != null) {
        result.addAll({
          _nameArgument: name,
        });
      }

      if (comment != null) {
        result.addAll({
          _commentArgument: comment,
        });
      }

      if (photos != null) {
        final data = jsonEncode(photos);
        result.addAll({
          _photosArgument: data,
        });
      }

      if (position != null) {
        final positionMap = positionModelConverter.toJson(position);
        final data = jsonEncode(positionMap);

        result.addAll({
          _positionArgument: data,
        });
      }

      return result;
    } catch (e) {
      return {};
    }
  }
}
