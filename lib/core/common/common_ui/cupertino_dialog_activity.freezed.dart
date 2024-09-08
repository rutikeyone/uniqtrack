// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cupertino_dialog_activity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CupertinoDialogActivity {
  AppStrings get label => throw _privateConstructorUsedError;
  VoidCallback get onPressed => throw _privateConstructorUsedError;

  /// Create a copy of CupertinoDialogActivity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CupertinoDialogActivityCopyWith<CupertinoDialogActivity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CupertinoDialogActivityCopyWith<$Res> {
  factory $CupertinoDialogActivityCopyWith(CupertinoDialogActivity value,
          $Res Function(CupertinoDialogActivity) then) =
      _$CupertinoDialogActivityCopyWithImpl<$Res, CupertinoDialogActivity>;
  @useResult
  $Res call({AppStrings label, VoidCallback onPressed});

  $AppStringsCopyWith<$Res> get label;
}

/// @nodoc
class _$CupertinoDialogActivityCopyWithImpl<$Res,
        $Val extends CupertinoDialogActivity>
    implements $CupertinoDialogActivityCopyWith<$Res> {
  _$CupertinoDialogActivityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CupertinoDialogActivity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = null,
    Object? onPressed = null,
  }) {
    return _then(_value.copyWith(
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as AppStrings,
      onPressed: null == onPressed
          ? _value.onPressed
          : onPressed // ignore: cast_nullable_to_non_nullable
              as VoidCallback,
    ) as $Val);
  }

  /// Create a copy of CupertinoDialogActivity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AppStringsCopyWith<$Res> get label {
    return $AppStringsCopyWith<$Res>(_value.label, (value) {
      return _then(_value.copyWith(label: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CupertinoDialogActivityImplCopyWith<$Res>
    implements $CupertinoDialogActivityCopyWith<$Res> {
  factory _$$CupertinoDialogActivityImplCopyWith(
          _$CupertinoDialogActivityImpl value,
          $Res Function(_$CupertinoDialogActivityImpl) then) =
      __$$CupertinoDialogActivityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AppStrings label, VoidCallback onPressed});

  @override
  $AppStringsCopyWith<$Res> get label;
}

/// @nodoc
class __$$CupertinoDialogActivityImplCopyWithImpl<$Res>
    extends _$CupertinoDialogActivityCopyWithImpl<$Res,
        _$CupertinoDialogActivityImpl>
    implements _$$CupertinoDialogActivityImplCopyWith<$Res> {
  __$$CupertinoDialogActivityImplCopyWithImpl(
      _$CupertinoDialogActivityImpl _value,
      $Res Function(_$CupertinoDialogActivityImpl) _then)
      : super(_value, _then);

  /// Create a copy of CupertinoDialogActivity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = null,
    Object? onPressed = null,
  }) {
    return _then(_$CupertinoDialogActivityImpl(
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as AppStrings,
      onPressed: null == onPressed
          ? _value.onPressed
          : onPressed // ignore: cast_nullable_to_non_nullable
              as VoidCallback,
    ));
  }
}

/// @nodoc

class _$CupertinoDialogActivityImpl
    with DiagnosticableTreeMixin
    implements _CupertinoDialogActivity {
  const _$CupertinoDialogActivityImpl(
      {required this.label, required this.onPressed});

  @override
  final AppStrings label;
  @override
  final VoidCallback onPressed;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CupertinoDialogActivity(label: $label, onPressed: $onPressed)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CupertinoDialogActivity'))
      ..add(DiagnosticsProperty('label', label))
      ..add(DiagnosticsProperty('onPressed', onPressed));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CupertinoDialogActivityImpl &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.onPressed, onPressed) ||
                other.onPressed == onPressed));
  }

  @override
  int get hashCode => Object.hash(runtimeType, label, onPressed);

  /// Create a copy of CupertinoDialogActivity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CupertinoDialogActivityImplCopyWith<_$CupertinoDialogActivityImpl>
      get copyWith => __$$CupertinoDialogActivityImplCopyWithImpl<
          _$CupertinoDialogActivityImpl>(this, _$identity);
}

abstract class _CupertinoDialogActivity implements CupertinoDialogActivity {
  const factory _CupertinoDialogActivity(
      {required final AppStrings label,
      required final VoidCallback onPressed}) = _$CupertinoDialogActivityImpl;

  @override
  AppStrings get label;
  @override
  VoidCallback get onPressed;

  /// Create a copy of CupertinoDialogActivity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CupertinoDialogActivityImplCopyWith<_$CupertinoDialogActivityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
