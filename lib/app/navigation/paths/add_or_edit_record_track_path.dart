import 'package:go_router_paths/go_router_paths.dart';
import 'package:uniqtrack/app/navigation/paths/record_track_path.dart';

class AddOrEditRecordTrackPath extends Path<AddOrEditRecordTrackPath> {
  AddOrEditRecordTrackPath(RecordTrackPath path)
      : super('add_or_edit_record_track', parent: path);
}
