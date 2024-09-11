import 'package:go_router_paths/go_router_paths.dart';
import 'package:uniqtrack/app/navigation/paths/record_track_path.dart';

class AddMemoryPath extends Path<AddMemoryPath> {
  AddMemoryPath(RecordTrackPath path) : super('add_memory', parent: path);
}