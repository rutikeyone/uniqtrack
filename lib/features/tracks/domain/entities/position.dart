part of 'entities.dart';

@freezed
class Position with _$Position {
  const factory Position({
    required double? latitude,
    required double? longitude,
    required double? altitude,
  }) = _Position;
}
