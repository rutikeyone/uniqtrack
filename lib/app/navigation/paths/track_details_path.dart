import 'package:go_router_paths/go_router_paths.dart';
import 'package:uniqtrack/app/navigation/arguments/args.dart';

class TrackDetailsPath extends Path<TrackDetailsPath> {
  TrackDetailsPath(Path path) : super("track_details", parent: path);

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
