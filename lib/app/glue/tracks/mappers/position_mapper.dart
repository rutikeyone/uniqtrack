import 'package:uniqtrack/core/common/app_location_handler/entities/app_position.dart';
import 'package:uniqtrack/features/tracks/domain/entities/position.dart';

abstract interface class PositionMapper {
  Position toPosition(AppPosition position);
}

class PositionMapperImpl implements PositionMapper {
  @override
  Position toPosition(AppPosition position) {
    return Position(
      latitude: position.latitude,
      longitude: position.longitude,
      altitude: position.altitude,
    );
  }
}
