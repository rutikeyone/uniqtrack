import 'package:freezed_annotation/freezed_annotation.dart';

part 'location_settings.freezed.dart';

@freezed
class AppLocationSettings with _$AppLocationSettings {
  const factory AppLocationSettings({
    @Default(3) int distanceFilter,
    @Default(Duration(seconds: 1)) Duration intervalDuration,
    required String notificationTitle,
    required String notificationBody,
  }) = _AppLocationSettings;
}
