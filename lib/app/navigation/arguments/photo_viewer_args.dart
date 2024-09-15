part of 'args.dart';

@riverpod
PhotoViewerConverter photoViewerConverter(PhotoViewerConverterRef ref) {
  return PhotoViewerConverterImpl();
}

abstract interface class PhotoViewerConverter
    implements JsonConverter<PhotoViewerArgs?, Map<String, String>> {}

class PhotoViewerConverterImpl implements PhotoViewerConverter {
  final _bytesArgument = "bytes";
  final _linkArgument = "argument";

  @override
  PhotoViewerArgs? fromJson(Map<String, String> json) {
    try {
      final bytes = json[_bytesArgument];
      final link = json[_linkArgument];

      final bytesData =
          bytes != null ? Uint8List.fromList(bytes.codeUnits) : null;

      if (bytesData == null && link == null) {
        return null;
      }

      return PhotoViewerArgs(
        bytes: bytesData,
        link: link,
      );
    } catch (e) {
      return null;
    }
  }

  @override
  Map<String, String> toJson(PhotoViewerArgs? object) {
    try {
      if (object == null) {
        return {};
      }
      Map<String, String> data = {};

      final bytes = object.bytes;
      final link = object.link;

      if (bytes != null) {
        data.addAll({
          _bytesArgument: String.fromCharCodes(bytes),
        });
      }

      if (link != null) {
        data.addAll({
          _linkArgument: link,
        });
      }

      return data;
    } catch (e) {
      return {};
    }
  }
}

@freezed
class PhotoViewerArgs with _$PhotoViewerArgs {
  const factory PhotoViewerArgs({
    required Uint8List? bytes,
    required String? link,
  }) = _PhotoViewerArgs;
}
