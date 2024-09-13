part of 'models.dart';

@immutable
@freezed
class FileModel with _$FileModel {
  const factory FileModel({
    required String name,
    required Uint8List bytes,
  }) = _FileModel;
}
