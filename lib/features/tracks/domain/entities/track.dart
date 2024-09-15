part of 'entities.dart';

@freezed
class Track with _$Track {
  const factory Track({
    required String? id,
    required String? creatorId,
    required String? name,
    required String? comment,
    required List<PositionData>? positions,
    required double? distance,
    required int? duration,
    required double? averageSpeed,
    required double? maxAltitude,
    required List<Memory>? memories,
  }) = _Track;
}
