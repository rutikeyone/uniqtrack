import 'package:go_router/go_router.dart';
import 'package:go_router_paths/go_router_paths.dart';
import 'package:uniqtrack/app/navigation/paths/record_track_path.dart';
import 'package:uniqtrack/features/tracks/domain/entities/position.dart';

import 'photo_viewer_path.dart';

class AddOrEditMemoryPath extends Path<AddOrEditMemoryPath> {
  final _latitudeArgument = 'latitude';
  final _longitudeArgument = 'longitude';
  final _altitudeArgument = 'altitude';

  AddOrEditMemoryPath(RecordTrackPath path)
      : super('add_or_edit_memory', parent: path);

  PhotoViewerPath get photoViewer => PhotoViewerPath(this);

  Map<String, String> queryPosition(Position? position) {
    if (position == null) {
      return {};
    }

    return {
      _latitudeArgument: (position.latitude ?? 0.0).toString(),
      _longitudeArgument: (position.longitude ?? 0.0).toString(),
      _altitudeArgument: (position.altitude ?? 0.0).toString(),
    };
  }

  Position? position(GoRouterState state) {
    final parameters = state.uri.queryParameters;
    final latitudeArg = parameters[_latitudeArgument];
    final longitudeArg = parameters[_longitudeArgument];
    final altitudeArg = parameters[_altitudeArgument];

    final latitude = latitudeArg != null ? double.tryParse(latitudeArg) : null;
    final longitude =
        longitudeArg != null ? double.tryParse(longitudeArg) : null;
    final altitude =
        altitudeArg != null ? double.tryParse(altitudeArg) : null;

    if (latitude == null && longitude == null && altitude == null) {
      return null;
    }

    return Position(
      latitude: latitude,
      longitude: longitude,
      altitude: altitude,
    );
  }
}
