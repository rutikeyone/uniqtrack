// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// ignore_for_file: type=lint
class $TracksTable extends Tracks with TableInfo<$TracksTable, Track> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $TracksTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _trackIdMeta =
      const VerificationMeta('trackId');
  @override
  late final GeneratedColumn<String> trackId = GeneratedColumn<String>(
      'track_id', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _creatorIdMeta =
      const VerificationMeta('creatorId');
  @override
  late final GeneratedColumn<String> creatorId = GeneratedColumn<String>(
      'creator_id', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _dateCreatedMeta =
      const VerificationMeta('dateCreated');
  @override
  late final GeneratedColumn<DateTime> dateCreated = GeneratedColumn<DateTime>(
      'date_created', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _commentMeta =
      const VerificationMeta('comment');
  @override
  late final GeneratedColumn<String> comment = GeneratedColumn<String>(
      'comment', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _distanceMeta =
      const VerificationMeta('distance');
  @override
  late final GeneratedColumn<double> distance = GeneratedColumn<double>(
      'distance', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _durationMeta =
      const VerificationMeta('duration');
  @override
  late final GeneratedColumn<int> duration = GeneratedColumn<int>(
      'duration', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _averageSpeedMeta =
      const VerificationMeta('averageSpeed');
  @override
  late final GeneratedColumn<double> averageSpeed = GeneratedColumn<double>(
      'average_speed', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _maxAltitudeMeta =
      const VerificationMeta('maxAltitude');
  @override
  late final GeneratedColumn<double> maxAltitude = GeneratedColumn<double>(
      'max_altitude', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _positionsMeta =
      const VerificationMeta('positions');
  @override
  late final GeneratedColumn<String> positions = GeneratedColumn<String>(
      'positions', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _memoriesMeta =
      const VerificationMeta('memories');
  @override
  late final GeneratedColumn<String> memories = GeneratedColumn<String>(
      'memories', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        trackId,
        creatorId,
        dateCreated,
        name,
        comment,
        distance,
        duration,
        averageSpeed,
        maxAltitude,
        positions,
        memories
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'tracks';
  @override
  VerificationContext validateIntegrity(Insertable<Track> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('track_id')) {
      context.handle(_trackIdMeta,
          trackId.isAcceptableOrUnknown(data['track_id']!, _trackIdMeta));
    }
    if (data.containsKey('creator_id')) {
      context.handle(_creatorIdMeta,
          creatorId.isAcceptableOrUnknown(data['creator_id']!, _creatorIdMeta));
    }
    if (data.containsKey('date_created')) {
      context.handle(
          _dateCreatedMeta,
          dateCreated.isAcceptableOrUnknown(
              data['date_created']!, _dateCreatedMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    }
    if (data.containsKey('comment')) {
      context.handle(_commentMeta,
          comment.isAcceptableOrUnknown(data['comment']!, _commentMeta));
    }
    if (data.containsKey('distance')) {
      context.handle(_distanceMeta,
          distance.isAcceptableOrUnknown(data['distance']!, _distanceMeta));
    }
    if (data.containsKey('duration')) {
      context.handle(_durationMeta,
          duration.isAcceptableOrUnknown(data['duration']!, _durationMeta));
    }
    if (data.containsKey('average_speed')) {
      context.handle(
          _averageSpeedMeta,
          averageSpeed.isAcceptableOrUnknown(
              data['average_speed']!, _averageSpeedMeta));
    }
    if (data.containsKey('max_altitude')) {
      context.handle(
          _maxAltitudeMeta,
          maxAltitude.isAcceptableOrUnknown(
              data['max_altitude']!, _maxAltitudeMeta));
    }
    if (data.containsKey('positions')) {
      context.handle(_positionsMeta,
          positions.isAcceptableOrUnknown(data['positions']!, _positionsMeta));
    }
    if (data.containsKey('memories')) {
      context.handle(_memoriesMeta,
          memories.isAcceptableOrUnknown(data['memories']!, _memoriesMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Track map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Track(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      trackId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}track_id']),
      creatorId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}creator_id']),
      dateCreated: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}date_created']),
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name']),
      comment: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}comment']),
      distance: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}distance']),
      duration: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}duration']),
      averageSpeed: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}average_speed']),
      maxAltitude: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}max_altitude']),
      positions: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}positions']),
      memories: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}memories']),
    );
  }

  @override
  $TracksTable createAlias(String alias) {
    return $TracksTable(attachedDatabase, alias);
  }
}

class Track extends DataClass implements Insertable<Track> {
  final int id;
  final String? trackId;
  final String? creatorId;
  final DateTime? dateCreated;
  final String? name;
  final String? comment;
  final double? distance;
  final int? duration;
  final double? averageSpeed;
  final double? maxAltitude;
  final String? positions;
  final String? memories;
  const Track(
      {required this.id,
      this.trackId,
      this.creatorId,
      this.dateCreated,
      this.name,
      this.comment,
      this.distance,
      this.duration,
      this.averageSpeed,
      this.maxAltitude,
      this.positions,
      this.memories});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    if (!nullToAbsent || trackId != null) {
      map['track_id'] = Variable<String>(trackId);
    }
    if (!nullToAbsent || creatorId != null) {
      map['creator_id'] = Variable<String>(creatorId);
    }
    if (!nullToAbsent || dateCreated != null) {
      map['date_created'] = Variable<DateTime>(dateCreated);
    }
    if (!nullToAbsent || name != null) {
      map['name'] = Variable<String>(name);
    }
    if (!nullToAbsent || comment != null) {
      map['comment'] = Variable<String>(comment);
    }
    if (!nullToAbsent || distance != null) {
      map['distance'] = Variable<double>(distance);
    }
    if (!nullToAbsent || duration != null) {
      map['duration'] = Variable<int>(duration);
    }
    if (!nullToAbsent || averageSpeed != null) {
      map['average_speed'] = Variable<double>(averageSpeed);
    }
    if (!nullToAbsent || maxAltitude != null) {
      map['max_altitude'] = Variable<double>(maxAltitude);
    }
    if (!nullToAbsent || positions != null) {
      map['positions'] = Variable<String>(positions);
    }
    if (!nullToAbsent || memories != null) {
      map['memories'] = Variable<String>(memories);
    }
    return map;
  }

  TracksCompanion toCompanion(bool nullToAbsent) {
    return TracksCompanion(
      id: Value(id),
      trackId: trackId == null && nullToAbsent
          ? const Value.absent()
          : Value(trackId),
      creatorId: creatorId == null && nullToAbsent
          ? const Value.absent()
          : Value(creatorId),
      dateCreated: dateCreated == null && nullToAbsent
          ? const Value.absent()
          : Value(dateCreated),
      name: name == null && nullToAbsent ? const Value.absent() : Value(name),
      comment: comment == null && nullToAbsent
          ? const Value.absent()
          : Value(comment),
      distance: distance == null && nullToAbsent
          ? const Value.absent()
          : Value(distance),
      duration: duration == null && nullToAbsent
          ? const Value.absent()
          : Value(duration),
      averageSpeed: averageSpeed == null && nullToAbsent
          ? const Value.absent()
          : Value(averageSpeed),
      maxAltitude: maxAltitude == null && nullToAbsent
          ? const Value.absent()
          : Value(maxAltitude),
      positions: positions == null && nullToAbsent
          ? const Value.absent()
          : Value(positions),
      memories: memories == null && nullToAbsent
          ? const Value.absent()
          : Value(memories),
    );
  }

  factory Track.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Track(
      id: serializer.fromJson<int>(json['id']),
      trackId: serializer.fromJson<String?>(json['trackId']),
      creatorId: serializer.fromJson<String?>(json['creatorId']),
      dateCreated: serializer.fromJson<DateTime?>(json['dateCreated']),
      name: serializer.fromJson<String?>(json['name']),
      comment: serializer.fromJson<String?>(json['comment']),
      distance: serializer.fromJson<double?>(json['distance']),
      duration: serializer.fromJson<int?>(json['duration']),
      averageSpeed: serializer.fromJson<double?>(json['averageSpeed']),
      maxAltitude: serializer.fromJson<double?>(json['maxAltitude']),
      positions: serializer.fromJson<String?>(json['positions']),
      memories: serializer.fromJson<String?>(json['memories']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'trackId': serializer.toJson<String?>(trackId),
      'creatorId': serializer.toJson<String?>(creatorId),
      'dateCreated': serializer.toJson<DateTime?>(dateCreated),
      'name': serializer.toJson<String?>(name),
      'comment': serializer.toJson<String?>(comment),
      'distance': serializer.toJson<double?>(distance),
      'duration': serializer.toJson<int?>(duration),
      'averageSpeed': serializer.toJson<double?>(averageSpeed),
      'maxAltitude': serializer.toJson<double?>(maxAltitude),
      'positions': serializer.toJson<String?>(positions),
      'memories': serializer.toJson<String?>(memories),
    };
  }

  Track copyWith(
          {int? id,
          Value<String?> trackId = const Value.absent(),
          Value<String?> creatorId = const Value.absent(),
          Value<DateTime?> dateCreated = const Value.absent(),
          Value<String?> name = const Value.absent(),
          Value<String?> comment = const Value.absent(),
          Value<double?> distance = const Value.absent(),
          Value<int?> duration = const Value.absent(),
          Value<double?> averageSpeed = const Value.absent(),
          Value<double?> maxAltitude = const Value.absent(),
          Value<String?> positions = const Value.absent(),
          Value<String?> memories = const Value.absent()}) =>
      Track(
        id: id ?? this.id,
        trackId: trackId.present ? trackId.value : this.trackId,
        creatorId: creatorId.present ? creatorId.value : this.creatorId,
        dateCreated: dateCreated.present ? dateCreated.value : this.dateCreated,
        name: name.present ? name.value : this.name,
        comment: comment.present ? comment.value : this.comment,
        distance: distance.present ? distance.value : this.distance,
        duration: duration.present ? duration.value : this.duration,
        averageSpeed:
            averageSpeed.present ? averageSpeed.value : this.averageSpeed,
        maxAltitude: maxAltitude.present ? maxAltitude.value : this.maxAltitude,
        positions: positions.present ? positions.value : this.positions,
        memories: memories.present ? memories.value : this.memories,
      );
  Track copyWithCompanion(TracksCompanion data) {
    return Track(
      id: data.id.present ? data.id.value : this.id,
      trackId: data.trackId.present ? data.trackId.value : this.trackId,
      creatorId: data.creatorId.present ? data.creatorId.value : this.creatorId,
      dateCreated:
          data.dateCreated.present ? data.dateCreated.value : this.dateCreated,
      name: data.name.present ? data.name.value : this.name,
      comment: data.comment.present ? data.comment.value : this.comment,
      distance: data.distance.present ? data.distance.value : this.distance,
      duration: data.duration.present ? data.duration.value : this.duration,
      averageSpeed: data.averageSpeed.present
          ? data.averageSpeed.value
          : this.averageSpeed,
      maxAltitude:
          data.maxAltitude.present ? data.maxAltitude.value : this.maxAltitude,
      positions: data.positions.present ? data.positions.value : this.positions,
      memories: data.memories.present ? data.memories.value : this.memories,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Track(')
          ..write('id: $id, ')
          ..write('trackId: $trackId, ')
          ..write('creatorId: $creatorId, ')
          ..write('dateCreated: $dateCreated, ')
          ..write('name: $name, ')
          ..write('comment: $comment, ')
          ..write('distance: $distance, ')
          ..write('duration: $duration, ')
          ..write('averageSpeed: $averageSpeed, ')
          ..write('maxAltitude: $maxAltitude, ')
          ..write('positions: $positions, ')
          ..write('memories: $memories')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id,
      trackId,
      creatorId,
      dateCreated,
      name,
      comment,
      distance,
      duration,
      averageSpeed,
      maxAltitude,
      positions,
      memories);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Track &&
          other.id == this.id &&
          other.trackId == this.trackId &&
          other.creatorId == this.creatorId &&
          other.dateCreated == this.dateCreated &&
          other.name == this.name &&
          other.comment == this.comment &&
          other.distance == this.distance &&
          other.duration == this.duration &&
          other.averageSpeed == this.averageSpeed &&
          other.maxAltitude == this.maxAltitude &&
          other.positions == this.positions &&
          other.memories == this.memories);
}

class TracksCompanion extends UpdateCompanion<Track> {
  final Value<int> id;
  final Value<String?> trackId;
  final Value<String?> creatorId;
  final Value<DateTime?> dateCreated;
  final Value<String?> name;
  final Value<String?> comment;
  final Value<double?> distance;
  final Value<int?> duration;
  final Value<double?> averageSpeed;
  final Value<double?> maxAltitude;
  final Value<String?> positions;
  final Value<String?> memories;
  const TracksCompanion({
    this.id = const Value.absent(),
    this.trackId = const Value.absent(),
    this.creatorId = const Value.absent(),
    this.dateCreated = const Value.absent(),
    this.name = const Value.absent(),
    this.comment = const Value.absent(),
    this.distance = const Value.absent(),
    this.duration = const Value.absent(),
    this.averageSpeed = const Value.absent(),
    this.maxAltitude = const Value.absent(),
    this.positions = const Value.absent(),
    this.memories = const Value.absent(),
  });
  TracksCompanion.insert({
    this.id = const Value.absent(),
    this.trackId = const Value.absent(),
    this.creatorId = const Value.absent(),
    this.dateCreated = const Value.absent(),
    this.name = const Value.absent(),
    this.comment = const Value.absent(),
    this.distance = const Value.absent(),
    this.duration = const Value.absent(),
    this.averageSpeed = const Value.absent(),
    this.maxAltitude = const Value.absent(),
    this.positions = const Value.absent(),
    this.memories = const Value.absent(),
  });
  static Insertable<Track> custom({
    Expression<int>? id,
    Expression<String>? trackId,
    Expression<String>? creatorId,
    Expression<DateTime>? dateCreated,
    Expression<String>? name,
    Expression<String>? comment,
    Expression<double>? distance,
    Expression<int>? duration,
    Expression<double>? averageSpeed,
    Expression<double>? maxAltitude,
    Expression<String>? positions,
    Expression<String>? memories,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (trackId != null) 'track_id': trackId,
      if (creatorId != null) 'creator_id': creatorId,
      if (dateCreated != null) 'date_created': dateCreated,
      if (name != null) 'name': name,
      if (comment != null) 'comment': comment,
      if (distance != null) 'distance': distance,
      if (duration != null) 'duration': duration,
      if (averageSpeed != null) 'average_speed': averageSpeed,
      if (maxAltitude != null) 'max_altitude': maxAltitude,
      if (positions != null) 'positions': positions,
      if (memories != null) 'memories': memories,
    });
  }

  TracksCompanion copyWith(
      {Value<int>? id,
      Value<String?>? trackId,
      Value<String?>? creatorId,
      Value<DateTime?>? dateCreated,
      Value<String?>? name,
      Value<String?>? comment,
      Value<double?>? distance,
      Value<int?>? duration,
      Value<double?>? averageSpeed,
      Value<double?>? maxAltitude,
      Value<String?>? positions,
      Value<String?>? memories}) {
    return TracksCompanion(
      id: id ?? this.id,
      trackId: trackId ?? this.trackId,
      creatorId: creatorId ?? this.creatorId,
      dateCreated: dateCreated ?? this.dateCreated,
      name: name ?? this.name,
      comment: comment ?? this.comment,
      distance: distance ?? this.distance,
      duration: duration ?? this.duration,
      averageSpeed: averageSpeed ?? this.averageSpeed,
      maxAltitude: maxAltitude ?? this.maxAltitude,
      positions: positions ?? this.positions,
      memories: memories ?? this.memories,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (trackId.present) {
      map['track_id'] = Variable<String>(trackId.value);
    }
    if (creatorId.present) {
      map['creator_id'] = Variable<String>(creatorId.value);
    }
    if (dateCreated.present) {
      map['date_created'] = Variable<DateTime>(dateCreated.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (comment.present) {
      map['comment'] = Variable<String>(comment.value);
    }
    if (distance.present) {
      map['distance'] = Variable<double>(distance.value);
    }
    if (duration.present) {
      map['duration'] = Variable<int>(duration.value);
    }
    if (averageSpeed.present) {
      map['average_speed'] = Variable<double>(averageSpeed.value);
    }
    if (maxAltitude.present) {
      map['max_altitude'] = Variable<double>(maxAltitude.value);
    }
    if (positions.present) {
      map['positions'] = Variable<String>(positions.value);
    }
    if (memories.present) {
      map['memories'] = Variable<String>(memories.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TracksCompanion(')
          ..write('id: $id, ')
          ..write('trackId: $trackId, ')
          ..write('creatorId: $creatorId, ')
          ..write('dateCreated: $dateCreated, ')
          ..write('name: $name, ')
          ..write('comment: $comment, ')
          ..write('distance: $distance, ')
          ..write('duration: $duration, ')
          ..write('averageSpeed: $averageSpeed, ')
          ..write('maxAltitude: $maxAltitude, ')
          ..write('positions: $positions, ')
          ..write('memories: $memories')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $TracksTable tracks = $TracksTable(this);
  late final TracksDao tracksDao = TracksDao(this as AppDatabase);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [tracks];
}

typedef $$TracksTableCreateCompanionBuilder = TracksCompanion Function({
  Value<int> id,
  Value<String?> trackId,
  Value<String?> creatorId,
  Value<DateTime?> dateCreated,
  Value<String?> name,
  Value<String?> comment,
  Value<double?> distance,
  Value<int?> duration,
  Value<double?> averageSpeed,
  Value<double?> maxAltitude,
  Value<String?> positions,
  Value<String?> memories,
});
typedef $$TracksTableUpdateCompanionBuilder = TracksCompanion Function({
  Value<int> id,
  Value<String?> trackId,
  Value<String?> creatorId,
  Value<DateTime?> dateCreated,
  Value<String?> name,
  Value<String?> comment,
  Value<double?> distance,
  Value<int?> duration,
  Value<double?> averageSpeed,
  Value<double?> maxAltitude,
  Value<String?> positions,
  Value<String?> memories,
});

class $$TracksTableFilterComposer
    extends FilterComposer<_$AppDatabase, $TracksTable> {
  $$TracksTableFilterComposer(super.$state);
  ColumnFilters<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get trackId => $state.composableBuilder(
      column: $state.table.trackId,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get creatorId => $state.composableBuilder(
      column: $state.table.creatorId,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<DateTime> get dateCreated => $state.composableBuilder(
      column: $state.table.dateCreated,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get name => $state.composableBuilder(
      column: $state.table.name,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get comment => $state.composableBuilder(
      column: $state.table.comment,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<double> get distance => $state.composableBuilder(
      column: $state.table.distance,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get duration => $state.composableBuilder(
      column: $state.table.duration,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<double> get averageSpeed => $state.composableBuilder(
      column: $state.table.averageSpeed,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<double> get maxAltitude => $state.composableBuilder(
      column: $state.table.maxAltitude,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get positions => $state.composableBuilder(
      column: $state.table.positions,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get memories => $state.composableBuilder(
      column: $state.table.memories,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));
}

class $$TracksTableOrderingComposer
    extends OrderingComposer<_$AppDatabase, $TracksTable> {
  $$TracksTableOrderingComposer(super.$state);
  ColumnOrderings<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get trackId => $state.composableBuilder(
      column: $state.table.trackId,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get creatorId => $state.composableBuilder(
      column: $state.table.creatorId,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<DateTime> get dateCreated => $state.composableBuilder(
      column: $state.table.dateCreated,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get name => $state.composableBuilder(
      column: $state.table.name,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get comment => $state.composableBuilder(
      column: $state.table.comment,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<double> get distance => $state.composableBuilder(
      column: $state.table.distance,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get duration => $state.composableBuilder(
      column: $state.table.duration,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<double> get averageSpeed => $state.composableBuilder(
      column: $state.table.averageSpeed,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<double> get maxAltitude => $state.composableBuilder(
      column: $state.table.maxAltitude,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get positions => $state.composableBuilder(
      column: $state.table.positions,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get memories => $state.composableBuilder(
      column: $state.table.memories,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

class $$TracksTableTableManager extends RootTableManager<
    _$AppDatabase,
    $TracksTable,
    Track,
    $$TracksTableFilterComposer,
    $$TracksTableOrderingComposer,
    $$TracksTableCreateCompanionBuilder,
    $$TracksTableUpdateCompanionBuilder,
    (Track, BaseReferences<_$AppDatabase, $TracksTable, Track>),
    Track,
    PrefetchHooks Function()> {
  $$TracksTableTableManager(_$AppDatabase db, $TracksTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$TracksTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$TracksTableOrderingComposer(ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String?> trackId = const Value.absent(),
            Value<String?> creatorId = const Value.absent(),
            Value<DateTime?> dateCreated = const Value.absent(),
            Value<String?> name = const Value.absent(),
            Value<String?> comment = const Value.absent(),
            Value<double?> distance = const Value.absent(),
            Value<int?> duration = const Value.absent(),
            Value<double?> averageSpeed = const Value.absent(),
            Value<double?> maxAltitude = const Value.absent(),
            Value<String?> positions = const Value.absent(),
            Value<String?> memories = const Value.absent(),
          }) =>
              TracksCompanion(
            id: id,
            trackId: trackId,
            creatorId: creatorId,
            dateCreated: dateCreated,
            name: name,
            comment: comment,
            distance: distance,
            duration: duration,
            averageSpeed: averageSpeed,
            maxAltitude: maxAltitude,
            positions: positions,
            memories: memories,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String?> trackId = const Value.absent(),
            Value<String?> creatorId = const Value.absent(),
            Value<DateTime?> dateCreated = const Value.absent(),
            Value<String?> name = const Value.absent(),
            Value<String?> comment = const Value.absent(),
            Value<double?> distance = const Value.absent(),
            Value<int?> duration = const Value.absent(),
            Value<double?> averageSpeed = const Value.absent(),
            Value<double?> maxAltitude = const Value.absent(),
            Value<String?> positions = const Value.absent(),
            Value<String?> memories = const Value.absent(),
          }) =>
              TracksCompanion.insert(
            id: id,
            trackId: trackId,
            creatorId: creatorId,
            dateCreated: dateCreated,
            name: name,
            comment: comment,
            distance: distance,
            duration: duration,
            averageSpeed: averageSpeed,
            maxAltitude: maxAltitude,
            positions: positions,
            memories: memories,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$TracksTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $TracksTable,
    Track,
    $$TracksTableFilterComposer,
    $$TracksTableOrderingComposer,
    $$TracksTableCreateCompanionBuilder,
    $$TracksTableUpdateCompanionBuilder,
    (Track, BaseReferences<_$AppDatabase, $TracksTable, Track>),
    Track,
    PrefetchHooks Function()>;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$TracksTableTableManager get tracks =>
      $$TracksTableTableManager(_db, _db.tracks);
}

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$appDatabaseHash() => r'12fcbb2e3444807f7ecddb4836749f03a153f7de';

/// See also [appDatabase].
@ProviderFor(appDatabase)
final appDatabaseProvider = AutoDisposeProvider<AppDatabase>.internal(
  appDatabase,
  name: r'appDatabaseProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$appDatabaseHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef AppDatabaseRef = AutoDisposeProviderRef<AppDatabase>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
