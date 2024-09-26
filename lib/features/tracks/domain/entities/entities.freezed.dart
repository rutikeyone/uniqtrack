// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'entities.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Memory {
  String? get id => throw _privateConstructorUsedError;
  String? get creatorId => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get comment => throw _privateConstructorUsedError;
  List<String>? get photos => throw _privateConstructorUsedError;
  Position? get position => throw _privateConstructorUsedError;

  /// Create a copy of Memory
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MemoryCopyWith<Memory> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MemoryCopyWith<$Res> {
  factory $MemoryCopyWith(Memory value, $Res Function(Memory) then) =
      _$MemoryCopyWithImpl<$Res, Memory>;
  @useResult
  $Res call(
      {String? id,
      String? creatorId,
      String? name,
      String? comment,
      List<String>? photos,
      Position? position});

  $PositionCopyWith<$Res>? get position;
}

/// @nodoc
class _$MemoryCopyWithImpl<$Res, $Val extends Memory>
    implements $MemoryCopyWith<$Res> {
  _$MemoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Memory
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? creatorId = freezed,
    Object? name = freezed,
    Object? comment = freezed,
    Object? photos = freezed,
    Object? position = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      creatorId: freezed == creatorId
          ? _value.creatorId
          : creatorId // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
      photos: freezed == photos
          ? _value.photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      position: freezed == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as Position?,
    ) as $Val);
  }

  /// Create a copy of Memory
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PositionCopyWith<$Res>? get position {
    if (_value.position == null) {
      return null;
    }

    return $PositionCopyWith<$Res>(_value.position!, (value) {
      return _then(_value.copyWith(position: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MemoryImplCopyWith<$Res> implements $MemoryCopyWith<$Res> {
  factory _$$MemoryImplCopyWith(
          _$MemoryImpl value, $Res Function(_$MemoryImpl) then) =
      __$$MemoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? creatorId,
      String? name,
      String? comment,
      List<String>? photos,
      Position? position});

  @override
  $PositionCopyWith<$Res>? get position;
}

/// @nodoc
class __$$MemoryImplCopyWithImpl<$Res>
    extends _$MemoryCopyWithImpl<$Res, _$MemoryImpl>
    implements _$$MemoryImplCopyWith<$Res> {
  __$$MemoryImplCopyWithImpl(
      _$MemoryImpl _value, $Res Function(_$MemoryImpl) _then)
      : super(_value, _then);

  /// Create a copy of Memory
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? creatorId = freezed,
    Object? name = freezed,
    Object? comment = freezed,
    Object? photos = freezed,
    Object? position = freezed,
  }) {
    return _then(_$MemoryImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      creatorId: freezed == creatorId
          ? _value.creatorId
          : creatorId // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
      photos: freezed == photos
          ? _value._photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      position: freezed == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as Position?,
    ));
  }
}

/// @nodoc

class _$MemoryImpl with DiagnosticableTreeMixin implements _Memory {
  const _$MemoryImpl(
      {required this.id,
      required this.creatorId,
      required this.name,
      required this.comment,
      required final List<String>? photos,
      required this.position})
      : _photos = photos;

  @override
  final String? id;
  @override
  final String? creatorId;
  @override
  final String? name;
  @override
  final String? comment;
  final List<String>? _photos;
  @override
  List<String>? get photos {
    final value = _photos;
    if (value == null) return null;
    if (_photos is EqualUnmodifiableListView) return _photos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final Position? position;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Memory(id: $id, creatorId: $creatorId, name: $name, comment: $comment, photos: $photos, position: $position)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Memory'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('creatorId', creatorId))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('comment', comment))
      ..add(DiagnosticsProperty('photos', photos))
      ..add(DiagnosticsProperty('position', position));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MemoryImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.creatorId, creatorId) ||
                other.creatorId == creatorId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.comment, comment) || other.comment == comment) &&
            const DeepCollectionEquality().equals(other._photos, _photos) &&
            (identical(other.position, position) ||
                other.position == position));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, creatorId, name, comment,
      const DeepCollectionEquality().hash(_photos), position);

  /// Create a copy of Memory
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MemoryImplCopyWith<_$MemoryImpl> get copyWith =>
      __$$MemoryImplCopyWithImpl<_$MemoryImpl>(this, _$identity);
}

abstract class _Memory implements Memory {
  const factory _Memory(
      {required final String? id,
      required final String? creatorId,
      required final String? name,
      required final String? comment,
      required final List<String>? photos,
      required final Position? position}) = _$MemoryImpl;

  @override
  String? get id;
  @override
  String? get creatorId;
  @override
  String? get name;
  @override
  String? get comment;
  @override
  List<String>? get photos;
  @override
  Position? get position;

  /// Create a copy of Memory
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MemoryImplCopyWith<_$MemoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Position {
  double? get latitude => throw _privateConstructorUsedError;
  double? get longitude => throw _privateConstructorUsedError;
  double? get altitude => throw _privateConstructorUsedError;

  /// Create a copy of Position
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PositionCopyWith<Position> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PositionCopyWith<$Res> {
  factory $PositionCopyWith(Position value, $Res Function(Position) then) =
      _$PositionCopyWithImpl<$Res, Position>;
  @useResult
  $Res call({double? latitude, double? longitude, double? altitude});
}

/// @nodoc
class _$PositionCopyWithImpl<$Res, $Val extends Position>
    implements $PositionCopyWith<$Res> {
  _$PositionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Position
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? altitude = freezed,
  }) {
    return _then(_value.copyWith(
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
      altitude: freezed == altitude
          ? _value.altitude
          : altitude // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PositionImplCopyWith<$Res>
    implements $PositionCopyWith<$Res> {
  factory _$$PositionImplCopyWith(
          _$PositionImpl value, $Res Function(_$PositionImpl) then) =
      __$$PositionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double? latitude, double? longitude, double? altitude});
}

/// @nodoc
class __$$PositionImplCopyWithImpl<$Res>
    extends _$PositionCopyWithImpl<$Res, _$PositionImpl>
    implements _$$PositionImplCopyWith<$Res> {
  __$$PositionImplCopyWithImpl(
      _$PositionImpl _value, $Res Function(_$PositionImpl) _then)
      : super(_value, _then);

  /// Create a copy of Position
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? altitude = freezed,
  }) {
    return _then(_$PositionImpl(
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
      altitude: freezed == altitude
          ? _value.altitude
          : altitude // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc

class _$PositionImpl with DiagnosticableTreeMixin implements _Position {
  const _$PositionImpl(
      {required this.latitude,
      required this.longitude,
      required this.altitude});

  @override
  final double? latitude;
  @override
  final double? longitude;
  @override
  final double? altitude;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Position(latitude: $latitude, longitude: $longitude, altitude: $altitude)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Position'))
      ..add(DiagnosticsProperty('latitude', latitude))
      ..add(DiagnosticsProperty('longitude', longitude))
      ..add(DiagnosticsProperty('altitude', altitude));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PositionImpl &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.altitude, altitude) ||
                other.altitude == altitude));
  }

  @override
  int get hashCode => Object.hash(runtimeType, latitude, longitude, altitude);

  /// Create a copy of Position
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PositionImplCopyWith<_$PositionImpl> get copyWith =>
      __$$PositionImplCopyWithImpl<_$PositionImpl>(this, _$identity);
}

abstract class _Position implements Position {
  const factory _Position(
      {required final double? latitude,
      required final double? longitude,
      required final double? altitude}) = _$PositionImpl;

  @override
  double? get latitude;
  @override
  double? get longitude;
  @override
  double? get altitude;

  /// Create a copy of Position
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PositionImplCopyWith<_$PositionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PositionData {
  List<Position>? get positions => throw _privateConstructorUsedError;

  /// Create a copy of PositionData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PositionDataCopyWith<PositionData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PositionDataCopyWith<$Res> {
  factory $PositionDataCopyWith(
          PositionData value, $Res Function(PositionData) then) =
      _$PositionDataCopyWithImpl<$Res, PositionData>;
  @useResult
  $Res call({List<Position>? positions});
}

/// @nodoc
class _$PositionDataCopyWithImpl<$Res, $Val extends PositionData>
    implements $PositionDataCopyWith<$Res> {
  _$PositionDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PositionData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? positions = freezed,
  }) {
    return _then(_value.copyWith(
      positions: freezed == positions
          ? _value.positions
          : positions // ignore: cast_nullable_to_non_nullable
              as List<Position>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PositionDataImplCopyWith<$Res>
    implements $PositionDataCopyWith<$Res> {
  factory _$$PositionDataImplCopyWith(
          _$PositionDataImpl value, $Res Function(_$PositionDataImpl) then) =
      __$$PositionDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Position>? positions});
}

/// @nodoc
class __$$PositionDataImplCopyWithImpl<$Res>
    extends _$PositionDataCopyWithImpl<$Res, _$PositionDataImpl>
    implements _$$PositionDataImplCopyWith<$Res> {
  __$$PositionDataImplCopyWithImpl(
      _$PositionDataImpl _value, $Res Function(_$PositionDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of PositionData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? positions = freezed,
  }) {
    return _then(_$PositionDataImpl(
      positions: freezed == positions
          ? _value._positions
          : positions // ignore: cast_nullable_to_non_nullable
              as List<Position>?,
    ));
  }
}

/// @nodoc

class _$PositionDataImpl extends _PositionData with DiagnosticableTreeMixin {
  const _$PositionDataImpl({required final List<Position>? positions})
      : _positions = positions,
        super._();

  final List<Position>? _positions;
  @override
  List<Position>? get positions {
    final value = _positions;
    if (value == null) return null;
    if (_positions is EqualUnmodifiableListView) return _positions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PositionData(positions: $positions)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PositionData'))
      ..add(DiagnosticsProperty('positions', positions));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PositionDataImpl &&
            const DeepCollectionEquality()
                .equals(other._positions, _positions));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_positions));

  /// Create a copy of PositionData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PositionDataImplCopyWith<_$PositionDataImpl> get copyWith =>
      __$$PositionDataImplCopyWithImpl<_$PositionDataImpl>(this, _$identity);
}

abstract class _PositionData extends PositionData {
  const factory _PositionData({required final List<Position>? positions}) =
      _$PositionDataImpl;
  const _PositionData._() : super._();

  @override
  List<Position>? get positions;

  /// Create a copy of PositionData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PositionDataImplCopyWith<_$PositionDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Track {
  String? get id => throw _privateConstructorUsedError;
  String? get trackId => throw _privateConstructorUsedError;
  DateTime? get dateCreated => throw _privateConstructorUsedError;
  String? get creatorId => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get comment => throw _privateConstructorUsedError;
  List<PositionData>? get positions => throw _privateConstructorUsedError;
  double? get distance => throw _privateConstructorUsedError;
  int? get duration => throw _privateConstructorUsedError;
  double? get averageSpeed => throw _privateConstructorUsedError;
  double? get maxAltitude => throw _privateConstructorUsedError;
  List<Memory>? get memories => throw _privateConstructorUsedError;

  /// Create a copy of Track
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TrackCopyWith<Track> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrackCopyWith<$Res> {
  factory $TrackCopyWith(Track value, $Res Function(Track) then) =
      _$TrackCopyWithImpl<$Res, Track>;
  @useResult
  $Res call(
      {String? id,
      String? trackId,
      DateTime? dateCreated,
      String? creatorId,
      String? name,
      String? comment,
      List<PositionData>? positions,
      double? distance,
      int? duration,
      double? averageSpeed,
      double? maxAltitude,
      List<Memory>? memories});
}

/// @nodoc
class _$TrackCopyWithImpl<$Res, $Val extends Track>
    implements $TrackCopyWith<$Res> {
  _$TrackCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Track
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? trackId = freezed,
    Object? dateCreated = freezed,
    Object? creatorId = freezed,
    Object? name = freezed,
    Object? comment = freezed,
    Object? positions = freezed,
    Object? distance = freezed,
    Object? duration = freezed,
    Object? averageSpeed = freezed,
    Object? maxAltitude = freezed,
    Object? memories = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      trackId: freezed == trackId
          ? _value.trackId
          : trackId // ignore: cast_nullable_to_non_nullable
              as String?,
      dateCreated: freezed == dateCreated
          ? _value.dateCreated
          : dateCreated // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      creatorId: freezed == creatorId
          ? _value.creatorId
          : creatorId // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
      positions: freezed == positions
          ? _value.positions
          : positions // ignore: cast_nullable_to_non_nullable
              as List<PositionData>?,
      distance: freezed == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as double?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int?,
      averageSpeed: freezed == averageSpeed
          ? _value.averageSpeed
          : averageSpeed // ignore: cast_nullable_to_non_nullable
              as double?,
      maxAltitude: freezed == maxAltitude
          ? _value.maxAltitude
          : maxAltitude // ignore: cast_nullable_to_non_nullable
              as double?,
      memories: freezed == memories
          ? _value.memories
          : memories // ignore: cast_nullable_to_non_nullable
              as List<Memory>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TrackImplCopyWith<$Res> implements $TrackCopyWith<$Res> {
  factory _$$TrackImplCopyWith(
          _$TrackImpl value, $Res Function(_$TrackImpl) then) =
      __$$TrackImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? trackId,
      DateTime? dateCreated,
      String? creatorId,
      String? name,
      String? comment,
      List<PositionData>? positions,
      double? distance,
      int? duration,
      double? averageSpeed,
      double? maxAltitude,
      List<Memory>? memories});
}

/// @nodoc
class __$$TrackImplCopyWithImpl<$Res>
    extends _$TrackCopyWithImpl<$Res, _$TrackImpl>
    implements _$$TrackImplCopyWith<$Res> {
  __$$TrackImplCopyWithImpl(
      _$TrackImpl _value, $Res Function(_$TrackImpl) _then)
      : super(_value, _then);

  /// Create a copy of Track
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? trackId = freezed,
    Object? dateCreated = freezed,
    Object? creatorId = freezed,
    Object? name = freezed,
    Object? comment = freezed,
    Object? positions = freezed,
    Object? distance = freezed,
    Object? duration = freezed,
    Object? averageSpeed = freezed,
    Object? maxAltitude = freezed,
    Object? memories = freezed,
  }) {
    return _then(_$TrackImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      trackId: freezed == trackId
          ? _value.trackId
          : trackId // ignore: cast_nullable_to_non_nullable
              as String?,
      dateCreated: freezed == dateCreated
          ? _value.dateCreated
          : dateCreated // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      creatorId: freezed == creatorId
          ? _value.creatorId
          : creatorId // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
      positions: freezed == positions
          ? _value._positions
          : positions // ignore: cast_nullable_to_non_nullable
              as List<PositionData>?,
      distance: freezed == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as double?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int?,
      averageSpeed: freezed == averageSpeed
          ? _value.averageSpeed
          : averageSpeed // ignore: cast_nullable_to_non_nullable
              as double?,
      maxAltitude: freezed == maxAltitude
          ? _value.maxAltitude
          : maxAltitude // ignore: cast_nullable_to_non_nullable
              as double?,
      memories: freezed == memories
          ? _value._memories
          : memories // ignore: cast_nullable_to_non_nullable
              as List<Memory>?,
    ));
  }
}

/// @nodoc

class _$TrackImpl with DiagnosticableTreeMixin implements _Track {
  const _$TrackImpl(
      {required this.id,
      required this.trackId,
      required this.dateCreated,
      required this.creatorId,
      required this.name,
      required this.comment,
      required final List<PositionData>? positions,
      required this.distance,
      required this.duration,
      required this.averageSpeed,
      required this.maxAltitude,
      required final List<Memory>? memories})
      : _positions = positions,
        _memories = memories;

  @override
  final String? id;
  @override
  final String? trackId;
  @override
  final DateTime? dateCreated;
  @override
  final String? creatorId;
  @override
  final String? name;
  @override
  final String? comment;
  final List<PositionData>? _positions;
  @override
  List<PositionData>? get positions {
    final value = _positions;
    if (value == null) return null;
    if (_positions is EqualUnmodifiableListView) return _positions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final double? distance;
  @override
  final int? duration;
  @override
  final double? averageSpeed;
  @override
  final double? maxAltitude;
  final List<Memory>? _memories;
  @override
  List<Memory>? get memories {
    final value = _memories;
    if (value == null) return null;
    if (_memories is EqualUnmodifiableListView) return _memories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Track(id: $id, trackId: $trackId, dateCreated: $dateCreated, creatorId: $creatorId, name: $name, comment: $comment, positions: $positions, distance: $distance, duration: $duration, averageSpeed: $averageSpeed, maxAltitude: $maxAltitude, memories: $memories)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Track'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('trackId', trackId))
      ..add(DiagnosticsProperty('dateCreated', dateCreated))
      ..add(DiagnosticsProperty('creatorId', creatorId))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('comment', comment))
      ..add(DiagnosticsProperty('positions', positions))
      ..add(DiagnosticsProperty('distance', distance))
      ..add(DiagnosticsProperty('duration', duration))
      ..add(DiagnosticsProperty('averageSpeed', averageSpeed))
      ..add(DiagnosticsProperty('maxAltitude', maxAltitude))
      ..add(DiagnosticsProperty('memories', memories));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TrackImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.trackId, trackId) || other.trackId == trackId) &&
            (identical(other.dateCreated, dateCreated) ||
                other.dateCreated == dateCreated) &&
            (identical(other.creatorId, creatorId) ||
                other.creatorId == creatorId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.comment, comment) || other.comment == comment) &&
            const DeepCollectionEquality()
                .equals(other._positions, _positions) &&
            (identical(other.distance, distance) ||
                other.distance == distance) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.averageSpeed, averageSpeed) ||
                other.averageSpeed == averageSpeed) &&
            (identical(other.maxAltitude, maxAltitude) ||
                other.maxAltitude == maxAltitude) &&
            const DeepCollectionEquality().equals(other._memories, _memories));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      trackId,
      dateCreated,
      creatorId,
      name,
      comment,
      const DeepCollectionEquality().hash(_positions),
      distance,
      duration,
      averageSpeed,
      maxAltitude,
      const DeepCollectionEquality().hash(_memories));

  /// Create a copy of Track
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TrackImplCopyWith<_$TrackImpl> get copyWith =>
      __$$TrackImplCopyWithImpl<_$TrackImpl>(this, _$identity);
}

abstract class _Track implements Track {
  const factory _Track(
      {required final String? id,
      required final String? trackId,
      required final DateTime? dateCreated,
      required final String? creatorId,
      required final String? name,
      required final String? comment,
      required final List<PositionData>? positions,
      required final double? distance,
      required final int? duration,
      required final double? averageSpeed,
      required final double? maxAltitude,
      required final List<Memory>? memories}) = _$TrackImpl;

  @override
  String? get id;
  @override
  String? get trackId;
  @override
  DateTime? get dateCreated;
  @override
  String? get creatorId;
  @override
  String? get name;
  @override
  String? get comment;
  @override
  List<PositionData>? get positions;
  @override
  double? get distance;
  @override
  int? get duration;
  @override
  double? get averageSpeed;
  @override
  double? get maxAltitude;
  @override
  List<Memory>? get memories;

  /// Create a copy of Track
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TrackImplCopyWith<_$TrackImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MapDataUI {
  bool get animatedToTrackShowed => throw _privateConstructorUsedError;
  bool get animatedToMemoryShowed => throw _privateConstructorUsedError;

  /// Create a copy of MapDataUI
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MapDataUICopyWith<MapDataUI> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MapDataUICopyWith<$Res> {
  factory $MapDataUICopyWith(MapDataUI value, $Res Function(MapDataUI) then) =
      _$MapDataUICopyWithImpl<$Res, MapDataUI>;
  @useResult
  $Res call({bool animatedToTrackShowed, bool animatedToMemoryShowed});
}

/// @nodoc
class _$MapDataUICopyWithImpl<$Res, $Val extends MapDataUI>
    implements $MapDataUICopyWith<$Res> {
  _$MapDataUICopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MapDataUI
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? animatedToTrackShowed = null,
    Object? animatedToMemoryShowed = null,
  }) {
    return _then(_value.copyWith(
      animatedToTrackShowed: null == animatedToTrackShowed
          ? _value.animatedToTrackShowed
          : animatedToTrackShowed // ignore: cast_nullable_to_non_nullable
              as bool,
      animatedToMemoryShowed: null == animatedToMemoryShowed
          ? _value.animatedToMemoryShowed
          : animatedToMemoryShowed // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MapDataUIImplCopyWith<$Res>
    implements $MapDataUICopyWith<$Res> {
  factory _$$MapDataUIImplCopyWith(
          _$MapDataUIImpl value, $Res Function(_$MapDataUIImpl) then) =
      __$$MapDataUIImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool animatedToTrackShowed, bool animatedToMemoryShowed});
}

/// @nodoc
class __$$MapDataUIImplCopyWithImpl<$Res>
    extends _$MapDataUICopyWithImpl<$Res, _$MapDataUIImpl>
    implements _$$MapDataUIImplCopyWith<$Res> {
  __$$MapDataUIImplCopyWithImpl(
      _$MapDataUIImpl _value, $Res Function(_$MapDataUIImpl) _then)
      : super(_value, _then);

  /// Create a copy of MapDataUI
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? animatedToTrackShowed = null,
    Object? animatedToMemoryShowed = null,
  }) {
    return _then(_$MapDataUIImpl(
      animatedToTrackShowed: null == animatedToTrackShowed
          ? _value.animatedToTrackShowed
          : animatedToTrackShowed // ignore: cast_nullable_to_non_nullable
              as bool,
      animatedToMemoryShowed: null == animatedToMemoryShowed
          ? _value.animatedToMemoryShowed
          : animatedToMemoryShowed // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$MapDataUIImpl with DiagnosticableTreeMixin implements _MapDataUI {
  const _$MapDataUIImpl(
      {required this.animatedToTrackShowed,
      required this.animatedToMemoryShowed});

  @override
  final bool animatedToTrackShowed;
  @override
  final bool animatedToMemoryShowed;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MapDataUI(animatedToTrackShowed: $animatedToTrackShowed, animatedToMemoryShowed: $animatedToMemoryShowed)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MapDataUI'))
      ..add(DiagnosticsProperty('animatedToTrackShowed', animatedToTrackShowed))
      ..add(DiagnosticsProperty(
          'animatedToMemoryShowed', animatedToMemoryShowed));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MapDataUIImpl &&
            (identical(other.animatedToTrackShowed, animatedToTrackShowed) ||
                other.animatedToTrackShowed == animatedToTrackShowed) &&
            (identical(other.animatedToMemoryShowed, animatedToMemoryShowed) ||
                other.animatedToMemoryShowed == animatedToMemoryShowed));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, animatedToTrackShowed, animatedToMemoryShowed);

  /// Create a copy of MapDataUI
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MapDataUIImplCopyWith<_$MapDataUIImpl> get copyWith =>
      __$$MapDataUIImplCopyWithImpl<_$MapDataUIImpl>(this, _$identity);
}

abstract class _MapDataUI implements MapDataUI {
  const factory _MapDataUI(
      {required final bool animatedToTrackShowed,
      required final bool animatedToMemoryShowed}) = _$MapDataUIImpl;

  @override
  bool get animatedToTrackShowed;
  @override
  bool get animatedToMemoryShowed;

  /// Create a copy of MapDataUI
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MapDataUIImplCopyWith<_$MapDataUIImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TrackUI {
  Track get track => throw _privateConstructorUsedError;
  bool get currentUserCreator => throw _privateConstructorUsedError;
  bool get favouriteTrack => throw _privateConstructorUsedError;
  bool get deleteEnabled => throw _privateConstructorUsedError;
  bool get favouriteEnabled => throw _privateConstructorUsedError;
  bool get canDelete => throw _privateConstructorUsedError;
  bool get canMore => throw _privateConstructorUsedError;

  /// Create a copy of TrackUI
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TrackUICopyWith<TrackUI> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrackUICopyWith<$Res> {
  factory $TrackUICopyWith(TrackUI value, $Res Function(TrackUI) then) =
      _$TrackUICopyWithImpl<$Res, TrackUI>;
  @useResult
  $Res call(
      {Track track,
      bool currentUserCreator,
      bool favouriteTrack,
      bool deleteEnabled,
      bool favouriteEnabled,
      bool canDelete,
      bool canMore});

  $TrackCopyWith<$Res> get track;
}

/// @nodoc
class _$TrackUICopyWithImpl<$Res, $Val extends TrackUI>
    implements $TrackUICopyWith<$Res> {
  _$TrackUICopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TrackUI
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? track = null,
    Object? currentUserCreator = null,
    Object? favouriteTrack = null,
    Object? deleteEnabled = null,
    Object? favouriteEnabled = null,
    Object? canDelete = null,
    Object? canMore = null,
  }) {
    return _then(_value.copyWith(
      track: null == track
          ? _value.track
          : track // ignore: cast_nullable_to_non_nullable
              as Track,
      currentUserCreator: null == currentUserCreator
          ? _value.currentUserCreator
          : currentUserCreator // ignore: cast_nullable_to_non_nullable
              as bool,
      favouriteTrack: null == favouriteTrack
          ? _value.favouriteTrack
          : favouriteTrack // ignore: cast_nullable_to_non_nullable
              as bool,
      deleteEnabled: null == deleteEnabled
          ? _value.deleteEnabled
          : deleteEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      favouriteEnabled: null == favouriteEnabled
          ? _value.favouriteEnabled
          : favouriteEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      canDelete: null == canDelete
          ? _value.canDelete
          : canDelete // ignore: cast_nullable_to_non_nullable
              as bool,
      canMore: null == canMore
          ? _value.canMore
          : canMore // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  /// Create a copy of TrackUI
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TrackCopyWith<$Res> get track {
    return $TrackCopyWith<$Res>(_value.track, (value) {
      return _then(_value.copyWith(track: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TrackUIImplCopyWith<$Res> implements $TrackUICopyWith<$Res> {
  factory _$$TrackUIImplCopyWith(
          _$TrackUIImpl value, $Res Function(_$TrackUIImpl) then) =
      __$$TrackUIImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Track track,
      bool currentUserCreator,
      bool favouriteTrack,
      bool deleteEnabled,
      bool favouriteEnabled,
      bool canDelete,
      bool canMore});

  @override
  $TrackCopyWith<$Res> get track;
}

/// @nodoc
class __$$TrackUIImplCopyWithImpl<$Res>
    extends _$TrackUICopyWithImpl<$Res, _$TrackUIImpl>
    implements _$$TrackUIImplCopyWith<$Res> {
  __$$TrackUIImplCopyWithImpl(
      _$TrackUIImpl _value, $Res Function(_$TrackUIImpl) _then)
      : super(_value, _then);

  /// Create a copy of TrackUI
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? track = null,
    Object? currentUserCreator = null,
    Object? favouriteTrack = null,
    Object? deleteEnabled = null,
    Object? favouriteEnabled = null,
    Object? canDelete = null,
    Object? canMore = null,
  }) {
    return _then(_$TrackUIImpl(
      track: null == track
          ? _value.track
          : track // ignore: cast_nullable_to_non_nullable
              as Track,
      currentUserCreator: null == currentUserCreator
          ? _value.currentUserCreator
          : currentUserCreator // ignore: cast_nullable_to_non_nullable
              as bool,
      favouriteTrack: null == favouriteTrack
          ? _value.favouriteTrack
          : favouriteTrack // ignore: cast_nullable_to_non_nullable
              as bool,
      deleteEnabled: null == deleteEnabled
          ? _value.deleteEnabled
          : deleteEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      favouriteEnabled: null == favouriteEnabled
          ? _value.favouriteEnabled
          : favouriteEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      canDelete: null == canDelete
          ? _value.canDelete
          : canDelete // ignore: cast_nullable_to_non_nullable
              as bool,
      canMore: null == canMore
          ? _value.canMore
          : canMore // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$TrackUIImpl extends _TrackUI with DiagnosticableTreeMixin {
  const _$TrackUIImpl(
      {required this.track,
      this.currentUserCreator = false,
      this.favouriteTrack = false,
      this.deleteEnabled = true,
      this.favouriteEnabled = true,
      this.canDelete = true,
      this.canMore = true})
      : super._();

  @override
  final Track track;
  @override
  @JsonKey()
  final bool currentUserCreator;
  @override
  @JsonKey()
  final bool favouriteTrack;
  @override
  @JsonKey()
  final bool deleteEnabled;
  @override
  @JsonKey()
  final bool favouriteEnabled;
  @override
  @JsonKey()
  final bool canDelete;
  @override
  @JsonKey()
  final bool canMore;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TrackUI(track: $track, currentUserCreator: $currentUserCreator, favouriteTrack: $favouriteTrack, deleteEnabled: $deleteEnabled, favouriteEnabled: $favouriteEnabled, canDelete: $canDelete, canMore: $canMore)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TrackUI'))
      ..add(DiagnosticsProperty('track', track))
      ..add(DiagnosticsProperty('currentUserCreator', currentUserCreator))
      ..add(DiagnosticsProperty('favouriteTrack', favouriteTrack))
      ..add(DiagnosticsProperty('deleteEnabled', deleteEnabled))
      ..add(DiagnosticsProperty('favouriteEnabled', favouriteEnabled))
      ..add(DiagnosticsProperty('canDelete', canDelete))
      ..add(DiagnosticsProperty('canMore', canMore));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TrackUIImpl &&
            (identical(other.track, track) || other.track == track) &&
            (identical(other.currentUserCreator, currentUserCreator) ||
                other.currentUserCreator == currentUserCreator) &&
            (identical(other.favouriteTrack, favouriteTrack) ||
                other.favouriteTrack == favouriteTrack) &&
            (identical(other.deleteEnabled, deleteEnabled) ||
                other.deleteEnabled == deleteEnabled) &&
            (identical(other.favouriteEnabled, favouriteEnabled) ||
                other.favouriteEnabled == favouriteEnabled) &&
            (identical(other.canDelete, canDelete) ||
                other.canDelete == canDelete) &&
            (identical(other.canMore, canMore) || other.canMore == canMore));
  }

  @override
  int get hashCode => Object.hash(runtimeType, track, currentUserCreator,
      favouriteTrack, deleteEnabled, favouriteEnabled, canDelete, canMore);

  /// Create a copy of TrackUI
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TrackUIImplCopyWith<_$TrackUIImpl> get copyWith =>
      __$$TrackUIImplCopyWithImpl<_$TrackUIImpl>(this, _$identity);
}

abstract class _TrackUI extends TrackUI {
  const factory _TrackUI(
      {required final Track track,
      final bool currentUserCreator,
      final bool favouriteTrack,
      final bool deleteEnabled,
      final bool favouriteEnabled,
      final bool canDelete,
      final bool canMore}) = _$TrackUIImpl;
  const _TrackUI._() : super._();

  @override
  Track get track;
  @override
  bool get currentUserCreator;
  @override
  bool get favouriteTrack;
  @override
  bool get deleteEnabled;
  @override
  bool get favouriteEnabled;
  @override
  bool get canDelete;
  @override
  bool get canMore;

  /// Create a copy of TrackUI
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TrackUIImplCopyWith<_$TrackUIImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MemoryUI {
  Memory get memory => throw _privateConstructorUsedError;
  bool get currentUserCreator => throw _privateConstructorUsedError;

  /// Create a copy of MemoryUI
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MemoryUICopyWith<MemoryUI> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MemoryUICopyWith<$Res> {
  factory $MemoryUICopyWith(MemoryUI value, $Res Function(MemoryUI) then) =
      _$MemoryUICopyWithImpl<$Res, MemoryUI>;
  @useResult
  $Res call({Memory memory, bool currentUserCreator});

  $MemoryCopyWith<$Res> get memory;
}

/// @nodoc
class _$MemoryUICopyWithImpl<$Res, $Val extends MemoryUI>
    implements $MemoryUICopyWith<$Res> {
  _$MemoryUICopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MemoryUI
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? memory = null,
    Object? currentUserCreator = null,
  }) {
    return _then(_value.copyWith(
      memory: null == memory
          ? _value.memory
          : memory // ignore: cast_nullable_to_non_nullable
              as Memory,
      currentUserCreator: null == currentUserCreator
          ? _value.currentUserCreator
          : currentUserCreator // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  /// Create a copy of MemoryUI
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MemoryCopyWith<$Res> get memory {
    return $MemoryCopyWith<$Res>(_value.memory, (value) {
      return _then(_value.copyWith(memory: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MemoryUIImplCopyWith<$Res>
    implements $MemoryUICopyWith<$Res> {
  factory _$$MemoryUIImplCopyWith(
          _$MemoryUIImpl value, $Res Function(_$MemoryUIImpl) then) =
      __$$MemoryUIImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Memory memory, bool currentUserCreator});

  @override
  $MemoryCopyWith<$Res> get memory;
}

/// @nodoc
class __$$MemoryUIImplCopyWithImpl<$Res>
    extends _$MemoryUICopyWithImpl<$Res, _$MemoryUIImpl>
    implements _$$MemoryUIImplCopyWith<$Res> {
  __$$MemoryUIImplCopyWithImpl(
      _$MemoryUIImpl _value, $Res Function(_$MemoryUIImpl) _then)
      : super(_value, _then);

  /// Create a copy of MemoryUI
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? memory = null,
    Object? currentUserCreator = null,
  }) {
    return _then(_$MemoryUIImpl(
      memory: null == memory
          ? _value.memory
          : memory // ignore: cast_nullable_to_non_nullable
              as Memory,
      currentUserCreator: null == currentUserCreator
          ? _value.currentUserCreator
          : currentUserCreator // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$MemoryUIImpl with DiagnosticableTreeMixin implements _MemoryUI {
  const _$MemoryUIImpl(
      {required this.memory, required this.currentUserCreator});

  @override
  final Memory memory;
  @override
  final bool currentUserCreator;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MemoryUI(memory: $memory, currentUserCreator: $currentUserCreator)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MemoryUI'))
      ..add(DiagnosticsProperty('memory', memory))
      ..add(DiagnosticsProperty('currentUserCreator', currentUserCreator));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MemoryUIImpl &&
            (identical(other.memory, memory) || other.memory == memory) &&
            (identical(other.currentUserCreator, currentUserCreator) ||
                other.currentUserCreator == currentUserCreator));
  }

  @override
  int get hashCode => Object.hash(runtimeType, memory, currentUserCreator);

  /// Create a copy of MemoryUI
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MemoryUIImplCopyWith<_$MemoryUIImpl> get copyWith =>
      __$$MemoryUIImplCopyWithImpl<_$MemoryUIImpl>(this, _$identity);
}

abstract class _MemoryUI implements MemoryUI {
  const factory _MemoryUI(
      {required final Memory memory,
      required final bool currentUserCreator}) = _$MemoryUIImpl;

  @override
  Memory get memory;
  @override
  bool get currentUserCreator;

  /// Create a copy of MemoryUI
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MemoryUIImplCopyWith<_$MemoryUIImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
