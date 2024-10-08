// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_position.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AppPosition {
  double get latitude => throw _privateConstructorUsedError;
  double get longitude => throw _privateConstructorUsedError;
  double get altitude => throw _privateConstructorUsedError;

  /// Create a copy of AppPosition
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AppPositionCopyWith<AppPosition> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppPositionCopyWith<$Res> {
  factory $AppPositionCopyWith(
          AppPosition value, $Res Function(AppPosition) then) =
      _$AppPositionCopyWithImpl<$Res, AppPosition>;
  @useResult
  $Res call({double latitude, double longitude, double altitude});
}

/// @nodoc
class _$AppPositionCopyWithImpl<$Res, $Val extends AppPosition>
    implements $AppPositionCopyWith<$Res> {
  _$AppPositionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppPosition
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = null,
    Object? longitude = null,
    Object? altitude = null,
  }) {
    return _then(_value.copyWith(
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      altitude: null == altitude
          ? _value.altitude
          : altitude // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AppPositionImplCopyWith<$Res>
    implements $AppPositionCopyWith<$Res> {
  factory _$$AppPositionImplCopyWith(
          _$AppPositionImpl value, $Res Function(_$AppPositionImpl) then) =
      __$$AppPositionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double latitude, double longitude, double altitude});
}

/// @nodoc
class __$$AppPositionImplCopyWithImpl<$Res>
    extends _$AppPositionCopyWithImpl<$Res, _$AppPositionImpl>
    implements _$$AppPositionImplCopyWith<$Res> {
  __$$AppPositionImplCopyWithImpl(
      _$AppPositionImpl _value, $Res Function(_$AppPositionImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppPosition
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = null,
    Object? longitude = null,
    Object? altitude = null,
  }) {
    return _then(_$AppPositionImpl(
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      altitude: null == altitude
          ? _value.altitude
          : altitude // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$AppPositionImpl implements _AppPosition {
  const _$AppPositionImpl(
      {required this.latitude,
      required this.longitude,
      required this.altitude});

  @override
  final double latitude;
  @override
  final double longitude;
  @override
  final double altitude;

  @override
  String toString() {
    return 'AppPosition(latitude: $latitude, longitude: $longitude, altitude: $altitude)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppPositionImpl &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.altitude, altitude) ||
                other.altitude == altitude));
  }

  @override
  int get hashCode => Object.hash(runtimeType, latitude, longitude, altitude);

  /// Create a copy of AppPosition
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AppPositionImplCopyWith<_$AppPositionImpl> get copyWith =>
      __$$AppPositionImplCopyWithImpl<_$AppPositionImpl>(this, _$identity);
}

abstract class _AppPosition implements AppPosition {
  const factory _AppPosition(
      {required final double latitude,
      required final double longitude,
      required final double altitude}) = _$AppPositionImpl;

  @override
  double get latitude;
  @override
  double get longitude;
  @override
  double get altitude;

  /// Create a copy of AppPosition
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppPositionImplCopyWith<_$AppPositionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
