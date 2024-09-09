import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_position.freezed.dart';

@freezed
class AppPosition with _$AppPosition {
  const factory AppPosition({
    required double latitude,
    required double longitude,
  }) = _AppPosition;
}
