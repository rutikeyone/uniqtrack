import 'package:go_router_paths/go_router_paths.dart';
import 'package:uniqtrack/app/navigation/arguments/args.dart';
import 'package:uniqtrack/app/navigation/paths/add_or_edit_memory_path.dart';
import 'package:uniqtrack/app/navigation/paths/add_or_edit_record_track_path.dart';
import 'package:uniqtrack/features/tracks/domain/entities/entities.dart';

import 'photo_viewer_path.dart';

class RecordTrackPath extends Path<RecordTrackPath> {
  RecordTrackPath(Path path) : super('record_track', parent: path);

  AddOrEditMemoryPath get addOrEditMemoryPath => AddOrEditMemoryPath(this);

  AddOrEditRecordTrackPath get addOrEditRecordTrack =>
      AddOrEditRecordTrackPath(this);

  PhotoViewerPath get photoViewer => PhotoViewerPath(this);

  Map<String, String> queryParameters({
    required Track? track,
    required DetailsMode mode,
    required RecordTrackArgsConverter converter,
  }) {
    final args = RecordTrackArgs(
      track: track,
      mode: mode,
    );
    return converter.toJson(args);
  }

  RecordTrackArgs? arguments({
    required Map<String, String> parameters,
    required RecordTrackArgsConverter converter,
  }) {
    return converter.fromJson(parameters);
  }
}
