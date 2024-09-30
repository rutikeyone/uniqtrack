import 'package:json_annotation/json_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:uniqtrack/core/common/error_handler/impl/app_error_handler_impl.dart';
import 'package:uniqtrack/data/accounts/providers/providers.dart';
import 'package:uniqtrack/data/tracks/converters/date_converter.dart';
import 'package:uniqtrack/data/tracks/converters/list_memory_model_converter.dart';
import 'package:uniqtrack/data/tracks/converters/list_position_data_converter.dart';
import 'package:uniqtrack/data/tracks/models/models.dart';
import 'package:uniqtrack/data/tracks/preferences_data_repository.dart';
import 'package:uniqtrack/data/tracks/repositories/preferences_data_repository_impl.dart';
import 'package:uniqtrack/data/tracks/repositories/tracks_data_repository_impl.dart';
import 'package:uniqtrack/data/tracks/tracks_data_repository.dart';

part 'providers.g.dart';

@riverpod
SharedPreferences sharedPreferences(SharedPreferencesRef sharedPreferencesRef) {
  throw UnimplementedError();
}

@riverpod
JsonConverter<List<MemoryModel>?, List?> memoriesConverter(
    MemoriesConverterRef ref) {
  return ListMemoryModelConverter();
}

@riverpod
JsonConverter<List<PositionDataModel>?, List?> positionsDataConverter(
    PositionsDataConverterRef ref) {
  return ListPositionDataConverter();
}

@riverpod
DateConverter dateConverter(DateConverterRef ref) {
  return DateConverter();
}

@riverpod
TracksDataRepository tracksDataRepository(TracksDataRepositoryRef ref) {
  final firebaseFireStore = ref.watch(firebaseFireStoreProvider);
  final appErrorHandler = ref.watch(appErrorHandlerProvider);
  final firebaseAuth = ref.watch(firebaseAuthProvider);
  final sorter = ref.watch(sorterProvider);

  return TracksDataRepositoryImpl(
    firebaseFireStore: firebaseFireStore,
    appErrorHandler: appErrorHandler,
    firebaseAuth: firebaseAuth,
    sorter: sorter,
  );
}

@riverpod
PreferencesDataRepository preferencesDataRepository(
    PreferencesDataRepositoryRef ref) {
  final appErrorHandler = ref.watch(appErrorHandlerProvider);
  final sharedPreferences = ref.watch(sharedPreferencesProvider);

  return PreferencesDataRepositoryImpl(
    preferences: sharedPreferences,
    appErrorHandler: appErrorHandler,
  );
}
