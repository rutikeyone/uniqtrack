import 'package:shared_preferences/shared_preferences.dart';
import 'package:uniqtrack/core/common/error_handler/app_error_handler.dart';
import 'package:uniqtrack/data/tracks/preferences_data_repository.dart';

class PreferencesDataRepositoryImpl implements PreferencesDataRepository {
  final SharedPreferences _preferences;
  final AppErrorHandler _appErrorHandler;

  static final _alertTrackingShowed = "alertTrackingShowed";

  PreferencesDataRepositoryImpl({
    required SharedPreferences preferences,
    required AppErrorHandler appErrorHandler,
  })  : _preferences = preferences,
        _appErrorHandler = appErrorHandler;

  @override
  Future<bool> getAlertTrackingShow() async {
    final result = await _appErrorHandler.handle(call: () async {
      return _preferences.getBool(_alertTrackingShowed) ?? false;
    });

    return result.fold(
      (_) => true,
      (data) => data,
    );
  }

  @override
  Future<void> setAlertTrackingShow(bool value) async {
    final result = await _appErrorHandler.handle(call: () async {
      return _preferences.setBool(_alertTrackingShowed, value);
    });
    await result;
  }
}
