import 'package:flutter/foundation.dart';
import 'package:go_router_paths/go_router_paths.dart';
import 'package:uniqtrack/app/navigation/arguments/args.dart';

class PhotoViewerPath extends Path<PhotoViewerPath> {

  PhotoViewerPath(Path path) : super('photo_viewer', parent: path);

  Map<String, String> queryParameters({
    required Uint8List? bytes,
    required String? link,
    required PhotoViewerConverter converter,
  }) {
    final args = PhotoViewerArgs(
      bytes: bytes,
      link: link,
    );

    final result = converter.toJson(args);
    return result;
  }

  PhotoViewerArgs? arguments({
    required Map<String, String> queryParameters,
    required PhotoViewerConverter converter,
  }) {
    return converter.fromJson(queryParameters);
  }
}
