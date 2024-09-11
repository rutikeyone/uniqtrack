import 'package:go_router_paths/go_router_paths.dart';
import 'package:uniqtrack/app/navigation/paths/record_track_path.dart';

class AddRecordTrackPath extends Path<AddRecordTrackPath> {
  AddRecordTrackPath(RecordTrackPath path)
      : super('add_record_track', parent: path);
}
