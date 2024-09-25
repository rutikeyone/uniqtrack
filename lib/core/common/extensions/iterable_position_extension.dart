import 'package:dartz/dartz.dart';
import 'package:uniqtrack/features/tracks/domain/entities/entities.dart';

extension IterablePositionExtension on List<Position> {
  Tuple2<Position, Position> calculateMinAndMaxPoints() {
    double minLat = this.firstOrNull?.latitude ?? 0.0;
    double maxLat = this.firstOrNull?.latitude ?? 0.0;
    double minLng = this.firstOrNull?.longitude ?? 0.0;
    double maxLng = this.firstOrNull?.longitude ?? 0.0;

    for (Position point in this) {
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
