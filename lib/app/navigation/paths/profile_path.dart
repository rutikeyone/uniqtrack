import 'package:go_router_paths/go_router_paths.dart';
import 'package:uniqtrack/app/navigation/paths/login_path.dart';
import 'package:uniqtrack/app/navigation/paths/my_favourite_tracks_path.dart';
import 'package:uniqtrack/app/navigation/paths/my_tracks_path.dart';

class ProfilePath extends Path<ProfilePath> {
  ProfilePath() : super('profile');

  LoginPath get login => LoginPath(this);

  MyTracksPath get myTracksPath => MyTracksPath(this);

  MyFavouriteTracksPath get myFavouriteTracks => MyFavouriteTracksPath(this);
}
