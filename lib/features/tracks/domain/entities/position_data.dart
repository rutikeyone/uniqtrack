import 'package:freezed_annotation/freezed_annotation.dart';

import 'position.dart';

part 'position_data.freezed.dart';

@freezed
class PositionData with _$PositionData {
  const factory PositionData({
    required List<Position>? positions,
  }) = _PositionData;
}
