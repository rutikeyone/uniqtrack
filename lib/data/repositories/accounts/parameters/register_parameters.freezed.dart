// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_parameters.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RegisterParameters {
  String get name => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  /// Create a copy of RegisterParameters
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RegisterParametersCopyWith<RegisterParameters> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterParametersCopyWith<$Res> {
  factory $RegisterParametersCopyWith(
          RegisterParameters value, $Res Function(RegisterParameters) then) =
      _$RegisterParametersCopyWithImpl<$Res, RegisterParameters>;
  @useResult
  $Res call({String name, String email, String password});
}

/// @nodoc
class _$RegisterParametersCopyWithImpl<$Res, $Val extends RegisterParameters>
    implements $RegisterParametersCopyWith<$Res> {
  _$RegisterParametersCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RegisterParameters
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RegisterParametersImplCopyWith<$Res>
    implements $RegisterParametersCopyWith<$Res> {
  factory _$$RegisterParametersImplCopyWith(_$RegisterParametersImpl value,
          $Res Function(_$RegisterParametersImpl) then) =
      __$$RegisterParametersImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String email, String password});
}

/// @nodoc
class __$$RegisterParametersImplCopyWithImpl<$Res>
    extends _$RegisterParametersCopyWithImpl<$Res, _$RegisterParametersImpl>
    implements _$$RegisterParametersImplCopyWith<$Res> {
  __$$RegisterParametersImplCopyWithImpl(_$RegisterParametersImpl _value,
      $Res Function(_$RegisterParametersImpl) _then)
      : super(_value, _then);

  /// Create a copy of RegisterParameters
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$RegisterParametersImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RegisterParametersImpl implements _RegisterParameters {
  const _$RegisterParametersImpl(
      {required this.name, required this.email, required this.password});

  @override
  final String name;
  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'RegisterParameters(name: $name, email: $email, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterParametersImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, email, password);

  /// Create a copy of RegisterParameters
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterParametersImplCopyWith<_$RegisterParametersImpl> get copyWith =>
      __$$RegisterParametersImplCopyWithImpl<_$RegisterParametersImpl>(
          this, _$identity);
}

abstract class _RegisterParameters implements RegisterParameters {
  const factory _RegisterParameters(
      {required final String name,
      required final String email,
      required final String password}) = _$RegisterParametersImpl;

  @override
  String get name;
  @override
  String get email;
  @override
  String get password;

  /// Create a copy of RegisterParameters
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RegisterParametersImplCopyWith<_$RegisterParametersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
