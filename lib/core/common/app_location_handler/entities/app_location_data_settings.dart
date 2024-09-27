import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geolocator/geolocator.dart';

part 'app_location_data_settings.freezed.dart';

@freezed
class AppLocationDataSettings with _$AppLocationDataSettings {
  const AppLocationDataSettings._();

  const factory AppLocationDataSettings({
    required int distanceFilter,
    required Duration intervalDuration,
    required LocationAccuracy accuracy,
    required int distanceBetween,
  }) = _AppLocationDataSettings;

  static AppLocationDataSettings fromJson(Map<String, dynamic> json) {
    final distanceFilter = json['distanceFilter'] as int;
    final intervalDuration = json['intervalDuration'] as int;
    final accuracy = json['accuracy'] as int;
    final distanceBetween = json['distanceBetween'] as int;

    return AppLocationDataSettings(
      distanceFilter: distanceFilter,
      intervalDuration: Duration(seconds: intervalDuration),
      distanceBetween: distanceBetween,
      accuracy: switch(accuracy) {
        0 => LocationAccuracy.lowest,
        1 => LocationAccuracy.low,
        2 => LocationAccuracy.medium,
        3 => LocationAccuracy.high,
        4 => LocationAccuracy.best,
        5 => LocationAccuracy.bestForNavigation,
        6 => LocationAccuracy.reduced,
        _ => LocationAccuracy.medium,
      }
    );
  }
}
