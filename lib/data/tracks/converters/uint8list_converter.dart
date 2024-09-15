import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

class UInt8ListConverter extends JsonConverter<List<Uint8List>?, String?> {
  const UInt8ListConverter();

  @override
  List<Uint8List>? fromJson(String? json) {
    try {
      if (json == null || json.isEmpty) {
        return null;
      }
      final afterDecodeData = jsonDecode(json) as List;
      final result = afterDecodeData.map((item) {
        return Uint8List.fromList(item.codeUnits);
      }).toList();
      return result;
    } catch (e) {
      return null;
    }
  }

  @override
  String? toJson(List<Uint8List>? object) {
    try {
      if (object == null || object.isEmpty) {
        return null;
      }

      final beforeEncodeResult = object.map((item) {
        return String.fromCharCodes(item);
      }).toList();

      final result = jsonEncode(beforeEncodeResult);
      return result;
    } catch (e) {
      return null;
    }
  }
}
