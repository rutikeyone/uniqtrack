import 'package:uniqtrack/core/common/app_location_handler/entities/app_position.dart';
import 'package:uniqtrack/data/tracks/models/models.dart';
import 'package:uniqtrack/features/tracks/domain/entities/entities.dart';

abstract interface class PositionMapper {
  Position toPosition(AppPosition position);

  PositionModel toPositionModel(Position position);
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

  @override
  PositionModel toPositionModel(Position position) {
    return PositionModel(
      latitude: position.latitude,
      longitude: position.longitude,
      altitude: position.altitude,
    );
  }
}
