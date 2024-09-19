import 'package:go_router_paths/go_router_paths.dart';
import 'package:uniqtrack/app/navigation/paths/track_details_path.dart';

class MyFavouriteTracksPath extends Path<MyFavouriteTracksPath> {
  MyFavouriteTracksPath(Path path) : super('my_favourite_tracks', parent: path);

  TrackDetailsPath get details => TrackDetailsPath(this);
}
