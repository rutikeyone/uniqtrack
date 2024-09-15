part of 'models.dart';

@freezed
class PositionDataModel with _$PositionDataModel {
  const factory PositionDataModel({
    required List<PositionModel>? positions,
  }) = _PositionDataModel;

  factory PositionDataModel.fromJson(Map<String, dynamic> json) =>
      _$PositionDataModelFromJson(json);
}
