part of 'entities.dart';

@freezed
class Memory with _$Memory {
  const factory Memory({
    required String? id,
    required String? creatorId,
    required String? name,
    required String? comment,
    required List<String>? photos,
    required Position? position,
  }) = _Memory;
}
