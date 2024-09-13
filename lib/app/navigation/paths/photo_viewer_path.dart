import 'package:flutter/foundation.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_paths/go_router_paths.dart';
import 'package:uniqtrack/app/navigation/paths/add_or_edit_memory_path.dart';

class PhotoViewerPath extends Path<PhotoViewerPath> {
  final bytesArgument = "bytes";
  final linkArgument = "argument";

  PhotoViewerPath(Path path) : super('photo_viewer', parent: path);

  Map<String, String> queryBytes(Uint8List data) {
    return {
      bytesArgument: String.fromCharCodes(data),
    };
  }

  Map<String, String> queryLink(String link) {
    return {
      linkArgument: link,
    };
  }

  Uint8List? bytes(GoRouterState state) {
    final queryParameters = state.uri.queryParameters;
    final bytes = queryParameters[bytesArgument];

    final bytesData =
        bytes != null ? Uint8List.fromList(bytes.codeUnits) : null;

    return bytesData;
  }

  String? link(GoRouterState state) {
    final queryParameters = state.uri.queryParameters;
    final link = queryParameters[linkArgument];
    return link;
  }
}
