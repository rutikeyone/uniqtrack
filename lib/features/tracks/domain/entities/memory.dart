part of 'entities.dart';

@freezed
class Memory with _$Memory {
  const factory Memory({
    required String? id,
    required String? name,
    required String? comment,
    required List<String>? uploadedPhotos,
    required List<Uint8List>? photos,
    required Position? position,
  }) = _Memory;
}
