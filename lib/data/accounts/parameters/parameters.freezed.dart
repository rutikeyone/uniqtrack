// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'parameters.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LoginDataParameters {
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  /// Create a copy of LoginDataParameters
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LoginDataParametersCopyWith<LoginDataParameters> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginDataParametersCopyWith<$Res> {
  factory $LoginDataParametersCopyWith(
          LoginDataParameters value, $Res Function(LoginDataParameters) then) =
      _$LoginDataParametersCopyWithImpl<$Res, LoginDataParameters>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class _$LoginDataParametersCopyWithImpl<$Res, $Val extends LoginDataParameters>
    implements $LoginDataParametersCopyWith<$Res> {
  _$LoginDataParametersCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LoginDataParameters
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
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
abstract class _$$LoginDataParametersImplCopyWith<$Res>
    implements $LoginDataParametersCopyWith<$Res> {
  factory _$$LoginDataParametersImplCopyWith(_$LoginDataParametersImpl value,
          $Res Function(_$LoginDataParametersImpl) then) =
      __$$LoginDataParametersImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$LoginDataParametersImplCopyWithImpl<$Res>
    extends _$LoginDataParametersCopyWithImpl<$Res, _$LoginDataParametersImpl>
    implements _$$LoginDataParametersImplCopyWith<$Res> {
  __$$LoginDataParametersImplCopyWithImpl(_$LoginDataParametersImpl _value,
      $Res Function(_$LoginDataParametersImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginDataParameters
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$LoginDataParametersImpl(
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

class _$LoginDataParametersImpl implements _LoginDataParameters {
  const _$LoginDataParametersImpl(
      {required this.email, required this.password});

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'LoginDataParameters(email: $email, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginDataParametersImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  /// Create a copy of LoginDataParameters
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginDataParametersImplCopyWith<_$LoginDataParametersImpl> get copyWith =>
      __$$LoginDataParametersImplCopyWithImpl<_$LoginDataParametersImpl>(
          this, _$identity);
}

abstract class _LoginDataParameters implements LoginDataParameters {
  const factory _LoginDataParameters(
      {required final String email,
      required final String password}) = _$LoginDataParametersImpl;

  @override
  String get email;
  @override
  String get password;

  /// Create a copy of LoginDataParameters
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoginDataParametersImplCopyWith<_$LoginDataParametersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RegisterDataParameters {
  String get name => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  GenderModel get gender => throw _privateConstructorUsedError;
  FileModel? get file => throw _privateConstructorUsedError;

  /// Create a copy of RegisterDataParameters
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RegisterDataParametersCopyWith<RegisterDataParameters> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterDataParametersCopyWith<$Res> {
  factory $RegisterDataParametersCopyWith(RegisterDataParameters value,
          $Res Function(RegisterDataParameters) then) =
      _$RegisterDataParametersCopyWithImpl<$Res, RegisterDataParameters>;
  @useResult
  $Res call(
      {String name,
      String email,
      String password,
      GenderModel gender,
      FileModel? file});

  $GenderModelCopyWith<$Res> get gender;
  $FileModelCopyWith<$Res>? get file;
}

/// @nodoc
class _$RegisterDataParametersCopyWithImpl<$Res,
        $Val extends RegisterDataParameters>
    implements $RegisterDataParametersCopyWith<$Res> {
  _$RegisterDataParametersCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RegisterDataParameters
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? email = null,
    Object? password = null,
    Object? gender = null,
    Object? file = freezed,
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
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as GenderModel,
      file: freezed == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as FileModel?,
    ) as $Val);
  }

  /// Create a copy of RegisterDataParameters
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GenderModelCopyWith<$Res> get gender {
    return $GenderModelCopyWith<$Res>(_value.gender, (value) {
      return _then(_value.copyWith(gender: value) as $Val);
    });
  }

  /// Create a copy of RegisterDataParameters
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FileModelCopyWith<$Res>? get file {
    if (_value.file == null) {
      return null;
    }

    return $FileModelCopyWith<$Res>(_value.file!, (value) {
      return _then(_value.copyWith(file: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RegisterDataParametersImplCopyWith<$Res>
    implements $RegisterDataParametersCopyWith<$Res> {
  factory _$$RegisterDataParametersImplCopyWith(
          _$RegisterDataParametersImpl value,
          $Res Function(_$RegisterDataParametersImpl) then) =
      __$$RegisterDataParametersImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String email,
      String password,
      GenderModel gender,
      FileModel? file});

  @override
  $GenderModelCopyWith<$Res> get gender;
  @override
  $FileModelCopyWith<$Res>? get file;
}

/// @nodoc
class __$$RegisterDataParametersImplCopyWithImpl<$Res>
    extends _$RegisterDataParametersCopyWithImpl<$Res,
        _$RegisterDataParametersImpl>
    implements _$$RegisterDataParametersImplCopyWith<$Res> {
  __$$RegisterDataParametersImplCopyWithImpl(
      _$RegisterDataParametersImpl _value,
      $Res Function(_$RegisterDataParametersImpl) _then)
      : super(_value, _then);

  /// Create a copy of RegisterDataParameters
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? email = null,
    Object? password = null,
    Object? gender = null,
    Object? file = freezed,
  }) {
    return _then(_$RegisterDataParametersImpl(
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
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as GenderModel,
      file: freezed == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as FileModel?,
    ));
  }
}

/// @nodoc

class _$RegisterDataParametersImpl implements _RegisterDataParameters {
  const _$RegisterDataParametersImpl(
      {required this.name,
      required this.email,
      required this.password,
      required this.gender,
      required this.file});

  @override
  final String name;
  @override
  final String email;
  @override
  final String password;
  @override
  final GenderModel gender;
  @override
  final FileModel? file;

  @override
  String toString() {
    return 'RegisterDataParameters(name: $name, email: $email, password: $password, gender: $gender, file: $file)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterDataParametersImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.file, file) || other.file == file));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, name, email, password, gender, file);

  /// Create a copy of RegisterDataParameters
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterDataParametersImplCopyWith<_$RegisterDataParametersImpl>
      get copyWith => __$$RegisterDataParametersImplCopyWithImpl<
          _$RegisterDataParametersImpl>(this, _$identity);
}

abstract class _RegisterDataParameters implements RegisterDataParameters {
  const factory _RegisterDataParameters(
      {required final String name,
      required final String email,
      required final String password,
      required final GenderModel gender,
      required final FileModel? file}) = _$RegisterDataParametersImpl;

  @override
  String get name;
  @override
  String get email;
  @override
  String get password;
  @override
  GenderModel get gender;
  @override
  FileModel? get file;

  /// Create a copy of RegisterDataParameters
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RegisterDataParametersImplCopyWith<_$RegisterDataParametersImpl>
      get copyWith => throw _privateConstructorUsedError;
}
