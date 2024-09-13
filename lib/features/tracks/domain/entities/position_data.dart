part of 'entities.dart';

@freezed
class PositionData with _$PositionData {
  const factory PositionData({
    required List<Position>? positions,
  }) = _PositionData;
}
