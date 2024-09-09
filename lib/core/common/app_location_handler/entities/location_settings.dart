import 'package:freezed_annotation/freezed_annotation.dart';

part 'location_settings.freezed.dart';

@freezed
class AppLocationSettings with _$AppLocationSettings {
  const factory AppLocationSettings({
    @Default(10) int distanceFilter,
    @Default(Duration(seconds: 3)) Duration intervalDuration,
    required String? notificationText,
    required String? notificationTitle,
  }) = _AppLocationSettings;
}
