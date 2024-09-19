import 'package:drift/drift.dart';

class Tracks extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get creatorId => text().nullable()();
  DateTimeColumn get dateCreated => dateTime().nullable()();
  TextColumn get name => text().nullable()();
  TextColumn get comment => text().nullable()();
  RealColumn get distance => real().nullable()();
  IntColumn get duration => integer().nullable()();
  RealColumn get averageSpeed => real().nullable()();
  RealColumn get maxAltitude => real().nullable()();
  TextColumn get positions => text().nullable()();
  TextColumn get memories => text().nullable()();
}