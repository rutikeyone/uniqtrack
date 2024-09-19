part of 'exceptions.dart';

@freezed
class AccessErrorCategory with _$AccessErrorCategory {
  const factory AccessErrorCategory.alreadyAddedInFavourite() =
      _AlreadyAddedInFavourteErrorCategory;

  const factory AccessErrorCategory.noID() = _NoIDErrorCategory;

  const factory AccessErrorCategory.notAddedToFavorites() =
      _NotAddedToFavouritesCategory;

  const factory AccessErrorCategory.notAddedToUserTracks() =
      _NotAddedToUserTracksCategory;

  const factory AccessErrorCategory.noRemoveRights() = _NoRemoveRightsCategory;
}
