import 'package:go_router_paths/go_router_paths.dart';
import 'package:uniqtrack/app/navigation/arguments/args.dart';
import 'package:uniqtrack/app/navigation/paths/add_or_edit_memory_path.dart';
import 'package:uniqtrack/app/navigation/paths/add_or_edit_record_track_path.dart';
import 'package:uniqtrack/app/navigation/paths/photo_viewer_path.dart';
import 'package:uniqtrack/app/navigation/paths/record_track_path.dart';

class DetailsPath extends Path<DetailsPath> {
  DetailsPath(Path path) : super("track_details", parent: path);

  PhotoViewerPath get photoViewer => PhotoViewerPath(this);

  RecordTrackPath get tracking => RecordTrackPath(this);

  AddOrEditRecordTrackPath get editRecordTrack => AddOrEditRecordTrackPath(this);

  AddOrEditMemoryPath get editMemoryPath => AddOrEditMemoryPath(this);

  Map<String, String> queryParameters({
    required String id,
    required DetailsMode mode,
    required DetailsArgsConverter detailsConverter,
  }) {
    final args = DetailsArgs(
      id: id,
      mode: mode,
    );
    return detailsConverter.toJson(args);
  }

  DetailsArgs arguments({
    required Map<String, String> parameters,
    required DetailsArgsConverter detailsConverter,
  }) {
    return detailsConverter.fromJson(parameters);
  }
}
