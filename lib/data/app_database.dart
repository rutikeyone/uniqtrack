import 'package:drift/drift.dart';
import 'package:drift_flutter/drift_flutter.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:uniqtrack/core/common/extensions/auto_dispose_extensions.dart';

import 'tracks/db/dao/track_dao.dart';
import 'tracks/db/tables/tracks.dart';

part 'app_database.g.dart';

@riverpod
AppDatabase appDatabase(AppDatabaseRef ref) {
  final database = AppDatabase();
  final cacheDuration = Duration(seconds: 3);

  ref.cacheFor(cacheDuration);

  return database;
}

final _appDatabaseName = "unitrack-app";

@DriftDatabase(tables: [Tracks], daos: [TracksDao])
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(driftDatabase(name: _appDatabaseName));

  @override
  int get schemaVersion => 1;
}
