import 'package:go_router_paths/go_router_paths.dart';

import 'track_details_path.dart';

class MyTracksPath extends Path<MyTracksPath> {
  MyTracksPath(Path path) : super('my_tracks', parent: path);

  TrackDetailsPath get details => TrackDetailsPath(this);
}
