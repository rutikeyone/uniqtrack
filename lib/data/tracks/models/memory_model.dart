part of 'models.dart';

@freezed
class MemoryModel with _$MemoryModel {
  const factory MemoryModel({
    required String? id,
    required String? name,
    required String? comment,
    required List<String>? photos,
    required PositionModel? position,
  }) = _MemoryModel;

  factory MemoryModel.fromJson(Map<String, dynamic> json) =>
      _$MemoryModelFromJson(json);
}
