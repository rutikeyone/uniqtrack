import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'file_model.freezed.dart';

@immutable
@freezed
class FileModel with _$FileModel {
  const factory FileModel({
    required String name,
    required Uint8List bytes,
  }) = _FileModel;
}
