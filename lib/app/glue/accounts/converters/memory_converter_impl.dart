import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:uniqtrack/features/tracks/domain/converters/memory_converter.dart';
import 'package:uniqtrack/features/tracks/domain/converters/position_converter.dart';
import 'package:uniqtrack/features/tracks/domain/entities/entities.dart';

class MemoryConverterImpl implements MemoryConverter {
  final PositionConverter _positionConverter;

  final _idArgument = 'id';
  final _nameArgument = 'name';
  final _commentArgument = 'comment';
  final _uploadedPhotosArgument = 'uploadedPhotos';
  final _photosArgument = 'photos';
  final _positionArgument = 'position';
  final _altitudeArgument = "altitude";

  const MemoryConverterImpl({
    required PositionConverter positionConverter,
  }) : _positionConverter = positionConverter;

  @override
  Memory? fromJson(Map<String, String> json) {
    try {
      final id = json[_idArgument];
      final name = json[_nameArgument];
      final comment = json[_commentArgument];
      final uploadedPhotosData = json[_uploadedPhotosArgument];
      final photosData = json[_photosArgument];
      final positionData = json[_positionArgument];

      final uploadedPhotos = uploadedPhotosData != null
          ? (jsonDecode(uploadedPhotosData) as List?)
              ?.map((item) => item.toString())
              .toList()
          : null;

      final photos = photosData != null
          ? () {
              final jsonPhotosData = jsonDecode(photosData) as List?;

              if (jsonPhotosData != null) {
                final result = jsonPhotosData.map((item) {
                  final value = Uint8List.fromList(item.codeUnits);
                  return value;
                }).toList();
                return result;
              } else {
                return null;
              }
            }.call()
          : null;

      final position = positionData != null
          ? () {
              final jsonDecoded =
                  jsonDecode(positionData) as Map<String, dynamic>?;
              final data = jsonDecoded
                  ?.map((key, item) => MapEntry(key, item.toString()));

              return data != null ? _positionConverter.fromJson(data) : null;
            }.call()
          : null;

      return Memory(
        id: id,
        name: name,
        comment: comment,
        uploadedPhotos: uploadedPhotos,
        photos: photos,
        position: position,
      );
    } catch (e) {
      return null;
    }
  }

  @override
  Map<String, String> toJson(Memory? object) {
    try {
      if (object == null) {
        return {};
      }

      Map<String, String> result = {};

      final id = object.id;
      final name = object.name;
      final comment = object.comment;
      final uploadedPhotos = object.uploadedPhotos;
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

      if (uploadedPhotos != null) {
        final data = jsonEncode(uploadedPhotos);
        result.addAll({
          _uploadedPhotosArgument: data,
        });
      }

      if (photos != null) {
        final photoString = photos.map((item) {
          return String.fromCharCodes(item);
        }).toList();

        final data = jsonEncode(photoString);

        result.addAll({
          _photosArgument: data,
        });
      }

      if (position != null) {
        final positionMap = _positionConverter.toJson(position);
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
