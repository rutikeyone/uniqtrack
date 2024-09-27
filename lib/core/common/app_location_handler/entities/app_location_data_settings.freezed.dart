// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_location_data_settings.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AppLocationDataSettings {
  int get distanceFilter => throw _privateConstructorUsedError;
  Duration get intervalDuration => throw _privateConstructorUsedError;
  LocationAccuracy get accuracy => throw _privateConstructorUsedError;
  int get distanceBetween => throw _privateConstructorUsedError;

  /// Create a copy of AppLocationDataSettings
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AppLocationDataSettingsCopyWith<AppLocationDataSettings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppLocationDataSettingsCopyWith<$Res> {
  factory $AppLocationDataSettingsCopyWith(AppLocationDataSettings value,
          $Res Function(AppLocationDataSettings) then) =
      _$AppLocationDataSettingsCopyWithImpl<$Res, AppLocationDataSettings>;
  @useResult
  $Res call(
      {int distanceFilter,
      Duration intervalDuration,
      LocationAccuracy accuracy,
      int distanceBetween});
}

/// @nodoc
class _$AppLocationDataSettingsCopyWithImpl<$Res,
        $Val extends AppLocationDataSettings>
    implements $AppLocationDataSettingsCopyWith<$Res> {
  _$AppLocationDataSettingsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppLocationDataSettings
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? distanceFilter = null,
    Object? intervalDuration = null,
    Object? accuracy = null,
    Object? distanceBetween = null,
  }) {
    return _then(_value.copyWith(
      distanceFilter: null == distanceFilter
          ? _value.distanceFilter
          : distanceFilter // ignore: cast_nullable_to_non_nullable
              as int,
      intervalDuration: null == intervalDuration
          ? _value.intervalDuration
          : intervalDuration // ignore: cast_nullable_to_non_nullable
              as Duration,
      accuracy: null == accuracy
          ? _value.accuracy
          : accuracy // ignore: cast_nullable_to_non_nullable
              as LocationAccuracy,
      distanceBetween: null == distanceBetween
          ? _value.distanceBetween
          : distanceBetween // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AppLocationDataSettingsImplCopyWith<$Res>
    implements $AppLocationDataSettingsCopyWith<$Res> {
  factory _$$AppLocationDataSettingsImplCopyWith(
          _$AppLocationDataSettingsImpl value,
          $Res Function(_$AppLocationDataSettingsImpl) then) =
      __$$AppLocationDataSettingsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int distanceFilter,
      Duration intervalDuration,
      LocationAccuracy accuracy,
      int distanceBetween});
}

/// @nodoc
class __$$AppLocationDataSettingsImplCopyWithImpl<$Res>
    extends _$AppLocationDataSettingsCopyWithImpl<$Res,
        _$AppLocationDataSettingsImpl>
    implements _$$AppLocationDataSettingsImplCopyWith<$Res> {
  __$$AppLocationDataSettingsImplCopyWithImpl(
      _$AppLocationDataSettingsImpl _value,
      $Res Function(_$AppLocationDataSettingsImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppLocationDataSettings
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? distanceFilter = null,
    Object? intervalDuration = null,
    Object? accuracy = null,
    Object? distanceBetween = null,
  }) {
    return _then(_$AppLocationDataSettingsImpl(
      distanceFilter: null == distanceFilter
          ? _value.distanceFilter
          : distanceFilter // ignore: cast_nullable_to_non_nullable
              as int,
      intervalDuration: null == intervalDuration
          ? _value.intervalDuration
          : intervalDuration // ignore: cast_nullable_to_non_nullable
              as Duration,
      accuracy: null == accuracy
          ? _value.accuracy
          : accuracy // ignore: cast_nullable_to_non_nullable
              as LocationAccuracy,
      distanceBetween: null == distanceBetween
          ? _value.distanceBetween
          : distanceBetween // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$AppLocationDataSettingsImpl extends _AppLocationDataSettings {
  const _$AppLocationDataSettingsImpl(
      {required this.distanceFilter,
      required this.intervalDuration,
      required this.accuracy,
      required this.distanceBetween})
      : super._();

  @override
  final int distanceFilter;
  @override
  final Duration intervalDuration;
  @override
  final LocationAccuracy accuracy;
  @override
  final int distanceBetween;

  @override
  String toString() {
    return 'AppLocationDataSettings(distanceFilter: $distanceFilter, intervalDuration: $intervalDuration, accuracy: $accuracy, distanceBetween: $distanceBetween)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppLocationDataSettingsImpl &&
            (identical(other.distanceFilter, distanceFilter) ||
                other.distanceFilter == distanceFilter) &&
            (identical(other.intervalDuration, intervalDuration) ||
                other.intervalDuration == intervalDuration) &&
            (identical(other.accuracy, accuracy) ||
                other.accuracy == accuracy) &&
            (identical(other.distanceBetween, distanceBetween) ||
                other.distanceBetween == distanceBetween));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, distanceFilter, intervalDuration, accuracy, distanceBetween);

  /// Create a copy of AppLocationDataSettings
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AppLocationDataSettingsImplCopyWith<_$AppLocationDataSettingsImpl>
      get copyWith => __$$AppLocationDataSettingsImplCopyWithImpl<
          _$AppLocationDataSettingsImpl>(this, _$identity);
}

abstract class _AppLocationDataSettings extends AppLocationDataSettings {
  const factory _AppLocationDataSettings(
      {required final int distanceFilter,
      required final Duration intervalDuration,
      required final LocationAccuracy accuracy,
      required final int distanceBetween}) = _$AppLocationDataSettingsImpl;
  const _AppLocationDataSettings._() : super._();

  @override
  int get distanceFilter;
  @override
  Duration get intervalDuration;
  @override
  LocationAccuracy get accuracy;
  @override
  int get distanceBetween;

  /// Create a copy of AppLocationDataSettings
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppLocationDataSettingsImplCopyWith<_$AppLocationDataSettingsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
