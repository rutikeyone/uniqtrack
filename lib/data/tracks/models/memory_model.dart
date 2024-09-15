part of 'models.dart';

@freezed
class MemoryModel with _$MemoryModel {
  const factory MemoryModel({
    required String? id,
    required String? name,
    required String? comment,
    required List<String>? uploadedPhotos,
    @UInt8ListConverter() required List<Uint8List>? photos,
    required PositionModel? position,
  }) = _MemoryModel;

  factory MemoryModel.fromJson(Map<String, dynamic> json) =>
      _$MemoryModelFromJson(json);
}
