import 'package:go_router_paths/go_router_paths.dart';
import 'package:uniqtrack/app/navigation/paths/profile_path.dart';

class MyTracksPath extends Path<MyTracksPath> {
  MyTracksPath(ProfilePath path) : super('my_tracks', parent: path);
}
