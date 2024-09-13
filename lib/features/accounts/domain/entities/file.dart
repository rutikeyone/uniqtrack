part of 'entities.dart';

@immutable
@freezed
class File with _$File {
  const factory File({
    required String name,
    required Uint8List bytes,
  }) = _File;
}
