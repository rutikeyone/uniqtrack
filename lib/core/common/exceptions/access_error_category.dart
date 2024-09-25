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

  const factory AccessErrorCategory.noUpdateRights() = _NoUpdateRightsCategory;

  const factory AccessErrorCategory.noRemoveRights() = _NoRemoveRightsCategory;

  const factory AccessErrorCategory.notContainsElement() = _NoContainsElementCategory;

  const factory AccessErrorCategory.userIsTheCreatorOfTheTrack() = _UserTheCreatorOfTheTrackCategory;

  const factory AccessErrorCategory.alreadyContainsElement() = _AlreadyContainsElementCategory;
}
