part of 'entities.dart';

@freezed
class Position with _$Position {
  const factory Position({
    required double? latitude,
    required double? longitude,
    required double? altitude,
  }) = _Position;

  static Tuple2<Position, Position> calculatePoints(List<Position> positions) {
    double minLat = positions.firstOrNull?.latitude ?? 0.0;
    double maxLat = positions.firstOrNull?.latitude ?? 0.0;
    double minLng = positions.firstOrNull?.longitude ?? 0.0;
    double maxLng = positions.firstOrNull?.longitude ?? 0.0;

    for (Position point in positions) {
      if ((point.latitude ?? 0.0) < minLat) minLat = point.latitude ?? 0.0;
      if ((point.latitude ?? 0.0) > maxLat) maxLat = point.latitude ?? 0.0;
      if ((point.longitude ?? 0.0) < minLng) minLng = point.longitude ?? 0.0;
      if ((point.longitude ?? 0.0) > maxLng) maxLng = point.longitude ?? 0.0;
    }
    minLat -= 0.0050;
    minLng -= 0.0050;
    maxLat += 0.0050;
    maxLng += 0.0050;

    final maxPoint = Position(
      latitude: maxLat,
      longitude: maxLng,
      altitude: null,
    );

    final minPoint = Position(
      latitude: minLat,
      longitude: minLng,
      altitude: null,
    );
    return Tuple2(minPoint, maxPoint);
  }
}
