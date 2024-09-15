import 'package:go_router_paths/go_router_paths.dart';
import 'package:uniqtrack/app/navigation/arguments/args.dart';
import 'package:uniqtrack/app/navigation/paths/record_track_path.dart';
import 'package:uniqtrack/features/tracks/domain/entities/entities.dart';

class AddOrEditRecordTrackPath extends Path<AddOrEditRecordTrackPath> {
  AddOrEditRecordTrackPath(RecordTrackPath path)
      : super('add_or_edit_record_track', parent: path);

  Map<String, String> queryParameters({
    required Track track,
    required AddOrEditRecordTrackConverter converter,
  }) {
    final args = AddOrEditRecordTrackArgs(track: track);

    return converter.toJson(args);
  }

  AddOrEditRecordTrackArgs? arguments({
    required Map<String, String> parameters,
    required AddOrEditRecordTrackConverter converter,
  }) {
    return converter.fromJson(parameters);
  }
}
