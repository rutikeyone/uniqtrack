// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'location_settings.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AppLocationSettings {
  int get distanceFilter => throw _privateConstructorUsedError;
  Duration get intervalDuration => throw _privateConstructorUsedError;
  String? get notificationText => throw _privateConstructorUsedError;
  String? get notificationTitle => throw _privateConstructorUsedError;

  /// Create a copy of AppLocationSettings
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AppLocationSettingsCopyWith<AppLocationSettings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppLocationSettingsCopyWith<$Res> {
  factory $AppLocationSettingsCopyWith(
          AppLocationSettings value, $Res Function(AppLocationSettings) then) =
      _$AppLocationSettingsCopyWithImpl<$Res, AppLocationSettings>;
  @useResult
  $Res call(
      {int distanceFilter,
      Duration intervalDuration,
      String? notificationText,
      String? notificationTitle});
}

/// @nodoc
class _$AppLocationSettingsCopyWithImpl<$Res, $Val extends AppLocationSettings>
    implements $AppLocationSettingsCopyWith<$Res> {
  _$AppLocationSettingsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppLocationSettings
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? distanceFilter = null,
    Object? intervalDuration = null,
    Object? notificationText = freezed,
    Object? notificationTitle = freezed,
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
      notificationText: freezed == notificationText
          ? _value.notificationText
          : notificationText // ignore: cast_nullable_to_non_nullable
              as String?,
      notificationTitle: freezed == notificationTitle
          ? _value.notificationTitle
          : notificationTitle // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AppLocationSettingsImplCopyWith<$Res>
    implements $AppLocationSettingsCopyWith<$Res> {
  factory _$$AppLocationSettingsImplCopyWith(_$AppLocationSettingsImpl value,
          $Res Function(_$AppLocationSettingsImpl) then) =
      __$$AppLocationSettingsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int distanceFilter,
      Duration intervalDuration,
      String? notificationText,
      String? notificationTitle});
}

/// @nodoc
class __$$AppLocationSettingsImplCopyWithImpl<$Res>
    extends _$AppLocationSettingsCopyWithImpl<$Res, _$AppLocationSettingsImpl>
    implements _$$AppLocationSettingsImplCopyWith<$Res> {
  __$$AppLocationSettingsImplCopyWithImpl(_$AppLocationSettingsImpl _value,
      $Res Function(_$AppLocationSettingsImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppLocationSettings
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? distanceFilter = null,
    Object? intervalDuration = null,
    Object? notificationText = freezed,
    Object? notificationTitle = freezed,
  }) {
    return _then(_$AppLocationSettingsImpl(
      distanceFilter: null == distanceFilter
          ? _value.distanceFilter
          : distanceFilter // ignore: cast_nullable_to_non_nullable
              as int,
      intervalDuration: null == intervalDuration
          ? _value.intervalDuration
          : intervalDuration // ignore: cast_nullable_to_non_nullable
              as Duration,
      notificationText: freezed == notificationText
          ? _value.notificationText
          : notificationText // ignore: cast_nullable_to_non_nullable
              as String?,
      notificationTitle: freezed == notificationTitle
          ? _value.notificationTitle
          : notificationTitle // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$AppLocationSettingsImpl implements _AppLocationSettings {
  const _$AppLocationSettingsImpl(
      {this.distanceFilter = 10,
      this.intervalDuration = const Duration(seconds: 3),
      required this.notificationText,
      required this.notificationTitle});

  @override
  @JsonKey()
  final int distanceFilter;
  @override
  @JsonKey()
  final Duration intervalDuration;
  @override
  final String? notificationText;
  @override
  final String? notificationTitle;

  @override
  String toString() {
    return 'AppLocationSettings(distanceFilter: $distanceFilter, intervalDuration: $intervalDuration, notificationText: $notificationText, notificationTitle: $notificationTitle)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppLocationSettingsImpl &&
            (identical(other.distanceFilter, distanceFilter) ||
                other.distanceFilter == distanceFilter) &&
            (identical(other.intervalDuration, intervalDuration) ||
                other.intervalDuration == intervalDuration) &&
            (identical(other.notificationText, notificationText) ||
                other.notificationText == notificationText) &&
            (identical(other.notificationTitle, notificationTitle) ||
                other.notificationTitle == notificationTitle));
  }

  @override
  int get hashCode => Object.hash(runtimeType, distanceFilter, intervalDuration,
      notificationText, notificationTitle);

  /// Create a copy of AppLocationSettings
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AppLocationSettingsImplCopyWith<_$AppLocationSettingsImpl> get copyWith =>
      __$$AppLocationSettingsImplCopyWithImpl<_$AppLocationSettingsImpl>(
          this, _$identity);
}

abstract class _AppLocationSettings implements AppLocationSettings {
  const factory _AppLocationSettings(
      {final int distanceFilter,
      final Duration intervalDuration,
      required final String? notificationText,
      required final String? notificationTitle}) = _$AppLocationSettingsImpl;

  @override
  int get distanceFilter;
  @override
  Duration get intervalDuration;
  @override
  String? get notificationText;
  @override
  String? get notificationTitle;

  /// Create a copy of AppLocationSettings
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppLocationSettingsImplCopyWith<_$AppLocationSettingsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
