import 'package:go_router_paths/go_router_paths.dart';
import 'package:uniqtrack/app/navigation/arguments/args.dart';
import 'package:uniqtrack/features/tracks/domain/entities/entities.dart';

import 'photo_viewer_path.dart';

class AddOrEditMemoryPath extends Path<AddOrEditMemoryPath> {
  AddOrEditMemoryPath(Path path) : super('add_or_edit_memory', parent: path);

  PhotoViewerPath get photoViewerPath => PhotoViewerPath(this);

  Map<String, String> queryParameters({
    required Position? position,
    required Memory? memory,
    required Track? track,
    required AddOrEditMemoryArgsConverter converter,
  }) {
    final args = AddOrEditMemoryArgs(
      position: position,
      memory: memory,
      track: track,
    );

    return converter.toJson(args);
  }

  AddOrEditMemoryArgs? arguments({
    required Map<String, String> parameters,
    required AddOrEditMemoryArgsConverter converter,
  }) {
    return converter.fromJson(parameters);
  }
}
