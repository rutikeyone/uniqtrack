import 'package:freezed_annotation/freezed_annotation.dart';

abstract interface class PreferencesDataRepository {

  Future<void> setAlertTrackingShow(bool value);

  Future<bool> getAlertTrackingShow();

}