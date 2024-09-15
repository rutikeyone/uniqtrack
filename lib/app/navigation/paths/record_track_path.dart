import 'package:go_router_paths/go_router_paths.dart';
import 'package:uniqtrack/app/navigation/paths/add_or_edit_memory_path.dart';
import 'package:uniqtrack/app/navigation/paths/add_or_edit_record_track_path.dart';
import 'package:uniqtrack/app/navigation/paths/community_path.dart';

import 'photo_viewer_path.dart';

class RecordTrackPath extends Path<RecordTrackPath> {
  RecordTrackPath(CommunityPath path) : super('record_track', parent: path);

  AddOrEditMemoryPath get addOrEditMemoryPath => AddOrEditMemoryPath(this);

  AddOrEditRecordTrackPath get addOrEditRecordTrack => AddOrEditRecordTrackPath(this);

  PhotoViewerPath get photoViewer => PhotoViewerPath(this);
}
