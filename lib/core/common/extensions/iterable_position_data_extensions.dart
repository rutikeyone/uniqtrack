import 'package:dartz/dartz.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:uniqtrack/core/common/extensions/iterable_position_extension.dart';
import 'package:uniqtrack/features/tracks/domain/entities/entities.dart';

extension IterablePositionDataExtensions on List<PositionData> {
  Tuple2<LatLng, LatLng> calculateSouthWestAndNortheastPoints() {
    final arrayPoints = this.map((e) => e.positions).toList();

    List<Position> points = [];
    for (List<Position>? element in arrayPoints) {
      if (element != null) {
        points.addAll(element);
      }
    }
    final minAndMaxPoints = points.calculateMinAndMaxPoints();

    final minLatitude = minAndMaxPoints.value1.latitude ?? 0.0;
    final minLongitude = minAndMaxPoints.value1.longitude ?? 0.0;

    final maxLatitude = minAndMaxPoints.value2.latitude ?? 0.0;
    final maxLongitude = minAndMaxPoints.value2.longitude ?? 0.0;

    final southwest = LatLng(minLatitude, minLongitude);
    final northeast = LatLng(maxLatitude, maxLongitude);

    return Tuple2(southwest, northeast);
  }
}
