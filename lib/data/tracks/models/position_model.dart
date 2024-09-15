part of 'models.dart';

@freezed
class PositionModel with _$PositionModel {
  const factory PositionModel({
    required double? latitude,
    required double? longitude,
    required double? altitude,
  }) = _PositionModel;

  factory PositionModel.fromJson(Map<String, dynamic> json) =>
      _$PositionModelFromJson(json);
}
