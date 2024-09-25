part of 'models.dart';

@freezed
class FavouriteTrackDataModel with _$FavouriteTrackDataModel {
  const factory FavouriteTrackDataModel({
    required String id,
    required String userId,
    required String favouriteTrackId,
  }) = _FavouriteTrackDataModel;

  factory FavouriteTrackDataModel.fromJson(Map<String, dynamic> json) =>
      _$FavouriteTrackDataModelFromJson(json);
}
