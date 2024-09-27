import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_location_settings.freezed.dart';

@freezed
class AppLocationSettings with _$AppLocationSettings {
  const factory AppLocationSettings({
    required String notificationTitle,
    required String notificationBody,
  }) = _AppLocationSettings;
}
