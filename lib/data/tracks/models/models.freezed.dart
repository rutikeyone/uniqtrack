// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PositionModel _$PositionModelFromJson(Map<String, dynamic> json) {
  return _PositionModel.fromJson(json);
}

/// @nodoc
mixin _$PositionModel {
  double? get latitude => throw _privateConstructorUsedError;
  double? get longitude => throw _privateConstructorUsedError;
  double? get altitude => throw _privateConstructorUsedError;

  /// Serializes this PositionModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PositionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PositionModelCopyWith<PositionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PositionModelCopyWith<$Res> {
  factory $PositionModelCopyWith(
          PositionModel value, $Res Function(PositionModel) then) =
      _$PositionModelCopyWithImpl<$Res, PositionModel>;
  @useResult
  $Res call({double? latitude, double? longitude, double? altitude});
}

/// @nodoc
class _$PositionModelCopyWithImpl<$Res, $Val extends PositionModel>
    implements $PositionModelCopyWith<$Res> {
  _$PositionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PositionModel
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
abstract class _$$PositionModelImplCopyWith<$Res>
    implements $PositionModelCopyWith<$Res> {
  factory _$$PositionModelImplCopyWith(
          _$PositionModelImpl value, $Res Function(_$PositionModelImpl) then) =
      __$$PositionModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double? latitude, double? longitude, double? altitude});
}

/// @nodoc
class __$$PositionModelImplCopyWithImpl<$Res>
    extends _$PositionModelCopyWithImpl<$Res, _$PositionModelImpl>
    implements _$$PositionModelImplCopyWith<$Res> {
  __$$PositionModelImplCopyWithImpl(
      _$PositionModelImpl _value, $Res Function(_$PositionModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of PositionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? altitude = freezed,
  }) {
    return _then(_$PositionModelImpl(
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
@JsonSerializable()
class _$PositionModelImpl
    with DiagnosticableTreeMixin
    implements _PositionModel {
  const _$PositionModelImpl(
      {required this.latitude,
      required this.longitude,
      required this.altitude});

  factory _$PositionModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PositionModelImplFromJson(json);

  @override
  final double? latitude;
  @override
  final double? longitude;
  @override
  final double? altitude;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PositionModel(latitude: $latitude, longitude: $longitude, altitude: $altitude)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PositionModel'))
      ..add(DiagnosticsProperty('latitude', latitude))
      ..add(DiagnosticsProperty('longitude', longitude))
      ..add(DiagnosticsProperty('altitude', altitude));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PositionModelImpl &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.altitude, altitude) ||
                other.altitude == altitude));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, latitude, longitude, altitude);

  /// Create a copy of PositionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PositionModelImplCopyWith<_$PositionModelImpl> get copyWith =>
      __$$PositionModelImplCopyWithImpl<_$PositionModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PositionModelImplToJson(
      this,
    );
  }
}

abstract class _PositionModel implements PositionModel {
  const factory _PositionModel(
      {required final double? latitude,
      required final double? longitude,
      required final double? altitude}) = _$PositionModelImpl;

  factory _PositionModel.fromJson(Map<String, dynamic> json) =
      _$PositionModelImpl.fromJson;

  @override
  double? get latitude;
  @override
  double? get longitude;
  @override
  double? get altitude;

  /// Create a copy of PositionModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PositionModelImplCopyWith<_$PositionModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PositionDataModel _$PositionDataModelFromJson(Map<String, dynamic> json) {
  return _PositionDataModel.fromJson(json);
}

/// @nodoc
mixin _$PositionDataModel {
  List<PositionModel>? get positions => throw _privateConstructorUsedError;

  /// Serializes this PositionDataModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PositionDataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PositionDataModelCopyWith<PositionDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PositionDataModelCopyWith<$Res> {
  factory $PositionDataModelCopyWith(
          PositionDataModel value, $Res Function(PositionDataModel) then) =
      _$PositionDataModelCopyWithImpl<$Res, PositionDataModel>;
  @useResult
  $Res call({List<PositionModel>? positions});
}

/// @nodoc
class _$PositionDataModelCopyWithImpl<$Res, $Val extends PositionDataModel>
    implements $PositionDataModelCopyWith<$Res> {
  _$PositionDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PositionDataModel
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
              as List<PositionModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PositionDataModelImplCopyWith<$Res>
    implements $PositionDataModelCopyWith<$Res> {
  factory _$$PositionDataModelImplCopyWith(_$PositionDataModelImpl value,
          $Res Function(_$PositionDataModelImpl) then) =
      __$$PositionDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<PositionModel>? positions});
}

/// @nodoc
class __$$PositionDataModelImplCopyWithImpl<$Res>
    extends _$PositionDataModelCopyWithImpl<$Res, _$PositionDataModelImpl>
    implements _$$PositionDataModelImplCopyWith<$Res> {
  __$$PositionDataModelImplCopyWithImpl(_$PositionDataModelImpl _value,
      $Res Function(_$PositionDataModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of PositionDataModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? positions = freezed,
  }) {
    return _then(_$PositionDataModelImpl(
      positions: freezed == positions
          ? _value._positions
          : positions // ignore: cast_nullable_to_non_nullable
              as List<PositionModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PositionDataModelImpl
    with DiagnosticableTreeMixin
    implements _PositionDataModel {
  const _$PositionDataModelImpl({required final List<PositionModel>? positions})
      : _positions = positions;

  factory _$PositionDataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PositionDataModelImplFromJson(json);

  final List<PositionModel>? _positions;
  @override
  List<PositionModel>? get positions {
    final value = _positions;
    if (value == null) return null;
    if (_positions is EqualUnmodifiableListView) return _positions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PositionDataModel(positions: $positions)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PositionDataModel'))
      ..add(DiagnosticsProperty('positions', positions));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PositionDataModelImpl &&
            const DeepCollectionEquality()
                .equals(other._positions, _positions));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_positions));

  /// Create a copy of PositionDataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PositionDataModelImplCopyWith<_$PositionDataModelImpl> get copyWith =>
      __$$PositionDataModelImplCopyWithImpl<_$PositionDataModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PositionDataModelImplToJson(
      this,
    );
  }
}

abstract class _PositionDataModel implements PositionDataModel {
  const factory _PositionDataModel(
          {required final List<PositionModel>? positions}) =
      _$PositionDataModelImpl;

  factory _PositionDataModel.fromJson(Map<String, dynamic> json) =
      _$PositionDataModelImpl.fromJson;

  @override
  List<PositionModel>? get positions;

  /// Create a copy of PositionDataModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PositionDataModelImplCopyWith<_$PositionDataModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MemoryModel _$MemoryModelFromJson(Map<String, dynamic> json) {
  return _MemoryModel.fromJson(json);
}

/// @nodoc
mixin _$MemoryModel {
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get comment => throw _privateConstructorUsedError;
  List<String>? get uploadedPhotos => throw _privateConstructorUsedError;
  @UInt8ListConverter()
  List<Uint8List>? get photos => throw _privateConstructorUsedError;
  PositionModel? get position => throw _privateConstructorUsedError;

  /// Serializes this MemoryModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MemoryModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MemoryModelCopyWith<MemoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MemoryModelCopyWith<$Res> {
  factory $MemoryModelCopyWith(
          MemoryModel value, $Res Function(MemoryModel) then) =
      _$MemoryModelCopyWithImpl<$Res, MemoryModel>;
  @useResult
  $Res call(
      {String? id,
      String? name,
      String? comment,
      List<String>? uploadedPhotos,
      @UInt8ListConverter() List<Uint8List>? photos,
      PositionModel? position});

  $PositionModelCopyWith<$Res>? get position;
}

/// @nodoc
class _$MemoryModelCopyWithImpl<$Res, $Val extends MemoryModel>
    implements $MemoryModelCopyWith<$Res> {
  _$MemoryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MemoryModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? comment = freezed,
    Object? uploadedPhotos = freezed,
    Object? photos = freezed,
    Object? position = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
      uploadedPhotos: freezed == uploadedPhotos
          ? _value.uploadedPhotos
          : uploadedPhotos // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      photos: freezed == photos
          ? _value.photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<Uint8List>?,
      position: freezed == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as PositionModel?,
    ) as $Val);
  }

  /// Create a copy of MemoryModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PositionModelCopyWith<$Res>? get position {
    if (_value.position == null) {
      return null;
    }

    return $PositionModelCopyWith<$Res>(_value.position!, (value) {
      return _then(_value.copyWith(position: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MemoryModelImplCopyWith<$Res>
    implements $MemoryModelCopyWith<$Res> {
  factory _$$MemoryModelImplCopyWith(
          _$MemoryModelImpl value, $Res Function(_$MemoryModelImpl) then) =
      __$$MemoryModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? name,
      String? comment,
      List<String>? uploadedPhotos,
      @UInt8ListConverter() List<Uint8List>? photos,
      PositionModel? position});

  @override
  $PositionModelCopyWith<$Res>? get position;
}

/// @nodoc
class __$$MemoryModelImplCopyWithImpl<$Res>
    extends _$MemoryModelCopyWithImpl<$Res, _$MemoryModelImpl>
    implements _$$MemoryModelImplCopyWith<$Res> {
  __$$MemoryModelImplCopyWithImpl(
      _$MemoryModelImpl _value, $Res Function(_$MemoryModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of MemoryModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? comment = freezed,
    Object? uploadedPhotos = freezed,
    Object? photos = freezed,
    Object? position = freezed,
  }) {
    return _then(_$MemoryModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
      uploadedPhotos: freezed == uploadedPhotos
          ? _value._uploadedPhotos
          : uploadedPhotos // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      photos: freezed == photos
          ? _value._photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<Uint8List>?,
      position: freezed == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as PositionModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MemoryModelImpl with DiagnosticableTreeMixin implements _MemoryModel {
  const _$MemoryModelImpl(
      {required this.id,
      required this.name,
      required this.comment,
      required final List<String>? uploadedPhotos,
      @UInt8ListConverter() required final List<Uint8List>? photos,
      required this.position})
      : _uploadedPhotos = uploadedPhotos,
        _photos = photos;

  factory _$MemoryModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MemoryModelImplFromJson(json);

  @override
  final String? id;
  @override
  final String? name;
  @override
  final String? comment;
  final List<String>? _uploadedPhotos;
  @override
  List<String>? get uploadedPhotos {
    final value = _uploadedPhotos;
    if (value == null) return null;
    if (_uploadedPhotos is EqualUnmodifiableListView) return _uploadedPhotos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Uint8List>? _photos;
  @override
  @UInt8ListConverter()
  List<Uint8List>? get photos {
    final value = _photos;
    if (value == null) return null;
    if (_photos is EqualUnmodifiableListView) return _photos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final PositionModel? position;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MemoryModel(id: $id, name: $name, comment: $comment, uploadedPhotos: $uploadedPhotos, photos: $photos, position: $position)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MemoryModel'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('comment', comment))
      ..add(DiagnosticsProperty('uploadedPhotos', uploadedPhotos))
      ..add(DiagnosticsProperty('photos', photos))
      ..add(DiagnosticsProperty('position', position));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MemoryModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.comment, comment) || other.comment == comment) &&
            const DeepCollectionEquality()
                .equals(other._uploadedPhotos, _uploadedPhotos) &&
            const DeepCollectionEquality().equals(other._photos, _photos) &&
            (identical(other.position, position) ||
                other.position == position));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      comment,
      const DeepCollectionEquality().hash(_uploadedPhotos),
      const DeepCollectionEquality().hash(_photos),
      position);

  /// Create a copy of MemoryModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MemoryModelImplCopyWith<_$MemoryModelImpl> get copyWith =>
      __$$MemoryModelImplCopyWithImpl<_$MemoryModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MemoryModelImplToJson(
      this,
    );
  }
}

abstract class _MemoryModel implements MemoryModel {
  const factory _MemoryModel(
      {required final String? id,
      required final String? name,
      required final String? comment,
      required final List<String>? uploadedPhotos,
      @UInt8ListConverter() required final List<Uint8List>? photos,
      required final PositionModel? position}) = _$MemoryModelImpl;

  factory _MemoryModel.fromJson(Map<String, dynamic> json) =
      _$MemoryModelImpl.fromJson;

  @override
  String? get id;
  @override
  String? get name;
  @override
  String? get comment;
  @override
  List<String>? get uploadedPhotos;
  @override
  @UInt8ListConverter()
  List<Uint8List>? get photos;
  @override
  PositionModel? get position;

  /// Create a copy of MemoryModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MemoryModelImplCopyWith<_$MemoryModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TrackModel _$TrackModelFromJson(Map<String, dynamic> json) {
  return _TrackModel.fromJson(json);
}

/// @nodoc
mixin _$TrackModel {
  String? get id => throw _privateConstructorUsedError;
  String? get creatorId => throw _privateConstructorUsedError;
  @ListPositionDataConverter()
  List<PositionDataModel>? get positions => throw _privateConstructorUsedError;
  double? get distance => throw _privateConstructorUsedError;
  int? get duration => throw _privateConstructorUsedError;
  double? get averageSpeed => throw _privateConstructorUsedError;
  double? get maxAltitude => throw _privateConstructorUsedError;
  @ListMemoryModelConverter()
  List<MemoryModel>? get memories => throw _privateConstructorUsedError;

  /// Serializes this TrackModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TrackModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TrackModelCopyWith<TrackModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrackModelCopyWith<$Res> {
  factory $TrackModelCopyWith(
          TrackModel value, $Res Function(TrackModel) then) =
      _$TrackModelCopyWithImpl<$Res, TrackModel>;
  @useResult
  $Res call(
      {String? id,
      String? creatorId,
      @ListPositionDataConverter() List<PositionDataModel>? positions,
      double? distance,
      int? duration,
      double? averageSpeed,
      double? maxAltitude,
      @ListMemoryModelConverter() List<MemoryModel>? memories});
}

/// @nodoc
class _$TrackModelCopyWithImpl<$Res, $Val extends TrackModel>
    implements $TrackModelCopyWith<$Res> {
  _$TrackModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TrackModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? creatorId = freezed,
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
      creatorId: freezed == creatorId
          ? _value.creatorId
          : creatorId // ignore: cast_nullable_to_non_nullable
              as String?,
      positions: freezed == positions
          ? _value.positions
          : positions // ignore: cast_nullable_to_non_nullable
              as List<PositionDataModel>?,
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
              as List<MemoryModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TrackModelImplCopyWith<$Res>
    implements $TrackModelCopyWith<$Res> {
  factory _$$TrackModelImplCopyWith(
          _$TrackModelImpl value, $Res Function(_$TrackModelImpl) then) =
      __$$TrackModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? creatorId,
      @ListPositionDataConverter() List<PositionDataModel>? positions,
      double? distance,
      int? duration,
      double? averageSpeed,
      double? maxAltitude,
      @ListMemoryModelConverter() List<MemoryModel>? memories});
}

/// @nodoc
class __$$TrackModelImplCopyWithImpl<$Res>
    extends _$TrackModelCopyWithImpl<$Res, _$TrackModelImpl>
    implements _$$TrackModelImplCopyWith<$Res> {
  __$$TrackModelImplCopyWithImpl(
      _$TrackModelImpl _value, $Res Function(_$TrackModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of TrackModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? creatorId = freezed,
    Object? positions = freezed,
    Object? distance = freezed,
    Object? duration = freezed,
    Object? averageSpeed = freezed,
    Object? maxAltitude = freezed,
    Object? memories = freezed,
  }) {
    return _then(_$TrackModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      creatorId: freezed == creatorId
          ? _value.creatorId
          : creatorId // ignore: cast_nullable_to_non_nullable
              as String?,
      positions: freezed == positions
          ? _value._positions
          : positions // ignore: cast_nullable_to_non_nullable
              as List<PositionDataModel>?,
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
              as List<MemoryModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TrackModelImpl with DiagnosticableTreeMixin implements _TrackModel {
  const _$TrackModelImpl(
      {required this.id,
      required this.creatorId,
      @ListPositionDataConverter()
      required final List<PositionDataModel>? positions,
      required this.distance,
      required this.duration,
      required this.averageSpeed,
      required this.maxAltitude,
      @ListMemoryModelConverter() required final List<MemoryModel>? memories})
      : _positions = positions,
        _memories = memories;

  factory _$TrackModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TrackModelImplFromJson(json);

  @override
  final String? id;
  @override
  final String? creatorId;
  final List<PositionDataModel>? _positions;
  @override
  @ListPositionDataConverter()
  List<PositionDataModel>? get positions {
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
  final List<MemoryModel>? _memories;
  @override
  @ListMemoryModelConverter()
  List<MemoryModel>? get memories {
    final value = _memories;
    if (value == null) return null;
    if (_memories is EqualUnmodifiableListView) return _memories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TrackModel(id: $id, creatorId: $creatorId, positions: $positions, distance: $distance, duration: $duration, averageSpeed: $averageSpeed, maxAltitude: $maxAltitude, memories: $memories)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TrackModel'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('creatorId', creatorId))
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
            other is _$TrackModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.creatorId, creatorId) ||
                other.creatorId == creatorId) &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      creatorId,
      const DeepCollectionEquality().hash(_positions),
      distance,
      duration,
      averageSpeed,
      maxAltitude,
      const DeepCollectionEquality().hash(_memories));

  /// Create a copy of TrackModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TrackModelImplCopyWith<_$TrackModelImpl> get copyWith =>
      __$$TrackModelImplCopyWithImpl<_$TrackModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TrackModelImplToJson(
      this,
    );
  }
}

abstract class _TrackModel implements TrackModel {
  const factory _TrackModel(
      {required final String? id,
      required final String? creatorId,
      @ListPositionDataConverter()
      required final List<PositionDataModel>? positions,
      required final double? distance,
      required final int? duration,
      required final double? averageSpeed,
      required final double? maxAltitude,
      @ListMemoryModelConverter()
      required final List<MemoryModel>? memories}) = _$TrackModelImpl;

  factory _TrackModel.fromJson(Map<String, dynamic> json) =
      _$TrackModelImpl.fromJson;

  @override
  String? get id;
  @override
  String? get creatorId;
  @override
  @ListPositionDataConverter()
  List<PositionDataModel>? get positions;
  @override
  double? get distance;
  @override
  int? get duration;
  @override
  double? get averageSpeed;
  @override
  double? get maxAltitude;
  @override
  @ListMemoryModelConverter()
  List<MemoryModel>? get memories;

  /// Create a copy of TrackModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TrackModelImplCopyWith<_$TrackModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
