import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'file.freezed.dart';

@immutable
@freezed
class File with _$File {
  const factory File({
    required String name,
    required Uint8List bytes,
  }) = _File;
}
