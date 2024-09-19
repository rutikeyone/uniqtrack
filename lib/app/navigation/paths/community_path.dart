import 'package:go_router_paths/go_router_paths.dart';
import 'package:uniqtrack/app/navigation/paths/record_track_path.dart';
import 'package:uniqtrack/app/navigation/paths/track_details_path.dart';

class CommunityPath extends Path<CommunityPath> {
  CommunityPath() : super('community');

  RecordTrackPath get tracking => RecordTrackPath(this);

  TrackDetailsPath get details => TrackDetailsPath(this);
}
