import 'package:go_router_paths/go_router_paths.dart';
import 'package:uniqtrack/app/navigation/arguments/args.dart';
import 'package:uniqtrack/app/navigation/paths/record_track_path.dart';
import 'package:uniqtrack/features/tracks/domain/entities/entities.dart';

import 'photo_viewer_path.dart';

class AddOrEditMemoryPath extends Path<AddOrEditMemoryPath> {
  AddOrEditMemoryPath(RecordTrackPath path)
      : super('add_or_edit_memory', parent: path);

  PhotoViewerPath get photoViewerPath => PhotoViewerPath(this);

  Map<String, String> queryParameters({
    required Position? position,
    required AddOrEditMemoryArgsConverter converter,
  }) {
    final args = AddOrEditMemoryArgs(position: position);

    return converter.toJson(args);
  }

  AddOrEditMemoryArgs? arguments({
    required Map<String, String> parameters,
    required AddOrEditMemoryArgsConverter converter,
  }) {
    return converter.fromJson(parameters);
  }
}
