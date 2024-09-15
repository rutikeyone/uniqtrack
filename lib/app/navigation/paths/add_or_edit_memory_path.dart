import 'package:go_router/go_router.dart';
import 'package:go_router_paths/go_router_paths.dart';
import 'package:uniqtrack/app/navigation/paths/record_track_path.dart';
import 'package:uniqtrack/features/tracks/domain/converters/position_converter.dart';
import 'package:uniqtrack/features/tracks/domain/entities/entities.dart';

import 'photo_viewer_path.dart';

class AddOrEditMemoryPath extends Path<AddOrEditMemoryPath> {
  AddOrEditMemoryPath(RecordTrackPath path)
      : super('add_or_edit_memory', parent: path);

  PhotoViewerPath get photoViewerPath => PhotoViewerPath(this);

  Map<String, String> queryParameters(
    Position? position,
    PositionConverter converter,
  ) {
    return converter.toJson(position);
  }

  Position? arguments(GoRouterState state, PositionConverter converter) {
    return converter.fromJson(state.uri.queryParameters);
  }
}
