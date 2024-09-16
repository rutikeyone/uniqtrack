import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uniqtrack/data/tracks/converters/memory_model_converter.dart';
import 'package:uniqtrack/data/tracks/models/models.dart';

class ListMemoryModelConverter
    implements JsonConverter<List<MemoryModel>?, List?> {
  const ListMemoryModelConverter();

  @override
  List<MemoryModel>? fromJson(List? data) {
    final memoryModelConverter = MemoryModelConverterImpl();

    try {
      if (data == null) {
        return null;
      }

      final result = data
          .map((item) => memoryModelConverter.fromJson(item))
          .nonNulls
          .toList();
      return result;
    } catch (e) {
      return null;
    }
  }

  @override
  List? toJson(List<MemoryModel>? object) {
    final memoryModelConverter = MemoryModelConverterImpl();

    try {
      if (object == null) {
        return null;
      }

      final result = object
          .map((item) {
            return memoryModelConverter.toJson(item);
          })
          .nonNulls
          .toList();

      return result;
    } catch (e) {
      return null;
    }
  }
}
