import 'package:go_router_paths/go_router_paths.dart';
import 'package:uniqtrack/app/navigation/paths/add_memory_path.dart';
import 'package:uniqtrack/app/navigation/paths/add_record_track_path.dart';
import 'package:uniqtrack/app/navigation/paths/community_path.dart';

class RecordTrackPath extends Path<RecordTrackPath> {
  RecordTrackPath(CommunityPath path) : super('record_track', parent: path);

  AddMemoryPath get addMemoryPath => AddMemoryPath(this);

  AddRecordTrackPath get addRecordTrack => AddRecordTrackPath(this);
}
