import 'package:go_router_paths/go_router_paths.dart';
import 'package:uniqtrack/app/navigation/paths/add_or_edit_record_track_path.dart';

import 'details_path.dart';

class MyTracksPath extends Path<MyTracksPath> {
  MyTracksPath(Path path) : super('my_tracks', parent: path);

  AddOrEditRecordTrackPath get editTrack => AddOrEditRecordTrackPath(this);

  DetailsPath get details => DetailsPath(this);
}
