part of 'models.dart';

@freezed
class TrackModel with _$TrackModel {
  const factory TrackModel({
    required String? id,
    required String? creatorId,
    @DateConverter() required DateTime? dateCreated,
    required String? name,
    required String? comment,
    @ListPositionDataConverter() required List<PositionDataModel>? positions,
    required double? distance,
    required int? duration,
    required double? averageSpeed,
    required double? maxAltitude,
    @ListMemoryModelConverter() required List<MemoryModel>? memories,
  }) = _TrackModel;

  factory TrackModel.fromJson(Map<String, dynamic> json) =>
      _$TrackModelFromJson(json);
}
