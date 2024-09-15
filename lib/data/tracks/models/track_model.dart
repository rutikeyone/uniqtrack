part of 'models.dart';

@freezed
class TrackModel with _$TrackModel {
  const factory TrackModel({
    required String? id,
    required String? creatorId,
    required List<PositionDataModel>? positions,
    required double? distance,
    required int? duration,
    required double? averageSpeed,
    required double? maxAltitude,
    required List<MemoryModel>? memories,
  }) = _TrackModel;

  factory TrackModel.fromJson(Map<String, dynamic> json) =>
      _$TrackModelFromJson(json);
}