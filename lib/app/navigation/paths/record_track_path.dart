import 'package:go_router_paths/go_router_paths.dart';
import 'package:uniqtrack/app/navigation/paths/community_path.dart';

class RecordTrackPath extends Path<RecordTrackPath> {
  RecordTrackPath(CommunityPath path) : super('record_track', parent: path);
}
