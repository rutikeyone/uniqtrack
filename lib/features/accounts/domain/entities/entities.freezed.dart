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
mixin _$User {
  String? get name => throw _privateConstructorUsedError;
  String? get photo => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  Gender? get gender => throw _privateConstructorUsedError;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res, User>;
  @useResult
  $Res call({String? name, String? photo, String? email, Gender? gender});

  $GenderCopyWith<$Res>? get gender;
}

/// @nodoc
class _$UserCopyWithImpl<$Res, $Val extends User>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? photo = freezed,
    Object? email = freezed,
    Object? gender = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Gender?,
    ) as $Val);
  }

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GenderCopyWith<$Res>? get gender {
    if (_value.gender == null) {
      return null;
    }

    return $GenderCopyWith<$Res>(_value.gender!, (value) {
      return _then(_value.copyWith(gender: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserImplCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$UserImplCopyWith(
          _$UserImpl value, $Res Function(_$UserImpl) then) =
      __$$UserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name, String? photo, String? email, Gender? gender});

  @override
  $GenderCopyWith<$Res>? get gender;
}

/// @nodoc
class __$$UserImplCopyWithImpl<$Res>
    extends _$UserCopyWithImpl<$Res, _$UserImpl>
    implements _$$UserImplCopyWith<$Res> {
  __$$UserImplCopyWithImpl(_$UserImpl _value, $Res Function(_$UserImpl) _then)
      : super(_value, _then);

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? photo = freezed,
    Object? email = freezed,
    Object? gender = freezed,
  }) {
    return _then(_$UserImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Gender?,
    ));
  }
}

/// @nodoc

class _$UserImpl with DiagnosticableTreeMixin implements _User {
  const _$UserImpl(
      {required this.name,
      required this.photo,
      required this.email,
      required this.gender});

  @override
  final String? name;
  @override
  final String? photo;
  @override
  final String? email;
  @override
  final Gender? gender;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'User(name: $name, photo: $photo, email: $email, gender: $gender)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'User'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('photo', photo))
      ..add(DiagnosticsProperty('email', email))
      ..add(DiagnosticsProperty('gender', gender));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.photo, photo) || other.photo == photo) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.gender, gender) || other.gender == gender));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, photo, email, gender);

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      __$$UserImplCopyWithImpl<_$UserImpl>(this, _$identity);
}

abstract class _User implements User {
  const factory _User(
      {required final String? name,
      required final String? photo,
      required final String? email,
      required final Gender? gender}) = _$UserImpl;

  @override
  String? get name;
  @override
  String? get photo;
  @override
  String? get email;
  @override
  Gender? get gender;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$File {
  String get name => throw _privateConstructorUsedError;
  Uint8List get bytes => throw _privateConstructorUsedError;

  /// Create a copy of File
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FileCopyWith<File> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FileCopyWith<$Res> {
  factory $FileCopyWith(File value, $Res Function(File) then) =
      _$FileCopyWithImpl<$Res, File>;
  @useResult
  $Res call({String name, Uint8List bytes});
}

/// @nodoc
class _$FileCopyWithImpl<$Res, $Val extends File>
    implements $FileCopyWith<$Res> {
  _$FileCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of File
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? bytes = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      bytes: null == bytes
          ? _value.bytes
          : bytes // ignore: cast_nullable_to_non_nullable
              as Uint8List,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FileImplCopyWith<$Res> implements $FileCopyWith<$Res> {
  factory _$$FileImplCopyWith(
          _$FileImpl value, $Res Function(_$FileImpl) then) =
      __$$FileImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, Uint8List bytes});
}

/// @nodoc
class __$$FileImplCopyWithImpl<$Res>
    extends _$FileCopyWithImpl<$Res, _$FileImpl>
    implements _$$FileImplCopyWith<$Res> {
  __$$FileImplCopyWithImpl(_$FileImpl _value, $Res Function(_$FileImpl) _then)
      : super(_value, _then);

  /// Create a copy of File
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? bytes = null,
  }) {
    return _then(_$FileImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      bytes: null == bytes
          ? _value.bytes
          : bytes // ignore: cast_nullable_to_non_nullable
              as Uint8List,
    ));
  }
}

/// @nodoc

class _$FileImpl with DiagnosticableTreeMixin implements _File {
  const _$FileImpl({required this.name, required this.bytes});

  @override
  final String name;
  @override
  final Uint8List bytes;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'File(name: $name, bytes: $bytes)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'File'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('bytes', bytes));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FileImpl &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other.bytes, bytes));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, name, const DeepCollectionEquality().hash(bytes));

  /// Create a copy of File
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FileImplCopyWith<_$FileImpl> get copyWith =>
      __$$FileImplCopyWithImpl<_$FileImpl>(this, _$identity);
}

abstract class _File implements File {
  const factory _File(
      {required final String name,
      required final Uint8List bytes}) = _$FileImpl;

  @override
  String get name;
  @override
  Uint8List get bytes;

  /// Create a copy of File
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FileImplCopyWith<_$FileImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Gender {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unknown,
    required TResult Function() male,
    required TResult Function() female,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unknown,
    TResult? Function()? male,
    TResult? Function()? female,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unknown,
    TResult Function()? male,
    TResult Function()? female,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UnknownGender value) unknown,
    required TResult Function(_MaleGender value) male,
    required TResult Function(_FemaleGender value) female,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UnknownGender value)? unknown,
    TResult? Function(_MaleGender value)? male,
    TResult? Function(_FemaleGender value)? female,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UnknownGender value)? unknown,
    TResult Function(_MaleGender value)? male,
    TResult Function(_FemaleGender value)? female,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GenderCopyWith<$Res> {
  factory $GenderCopyWith(Gender value, $Res Function(Gender) then) =
      _$GenderCopyWithImpl<$Res, Gender>;
}

/// @nodoc
class _$GenderCopyWithImpl<$Res, $Val extends Gender>
    implements $GenderCopyWith<$Res> {
  _$GenderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Gender
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$UnknownGenderImplCopyWith<$Res> {
  factory _$$UnknownGenderImplCopyWith(
          _$UnknownGenderImpl value, $Res Function(_$UnknownGenderImpl) then) =
      __$$UnknownGenderImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UnknownGenderImplCopyWithImpl<$Res>
    extends _$GenderCopyWithImpl<$Res, _$UnknownGenderImpl>
    implements _$$UnknownGenderImplCopyWith<$Res> {
  __$$UnknownGenderImplCopyWithImpl(
      _$UnknownGenderImpl _value, $Res Function(_$UnknownGenderImpl) _then)
      : super(_value, _then);

  /// Create a copy of Gender
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$UnknownGenderImpl extends _UnknownGender with DiagnosticableTreeMixin {
  const _$UnknownGenderImpl() : super._();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Gender.unknown()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'Gender.unknown'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UnknownGenderImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unknown,
    required TResult Function() male,
    required TResult Function() female,
  }) {
    return unknown();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unknown,
    TResult? Function()? male,
    TResult? Function()? female,
  }) {
    return unknown?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unknown,
    TResult Function()? male,
    TResult Function()? female,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UnknownGender value) unknown,
    required TResult Function(_MaleGender value) male,
    required TResult Function(_FemaleGender value) female,
  }) {
    return unknown(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UnknownGender value)? unknown,
    TResult? Function(_MaleGender value)? male,
    TResult? Function(_FemaleGender value)? female,
  }) {
    return unknown?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UnknownGender value)? unknown,
    TResult Function(_MaleGender value)? male,
    TResult Function(_FemaleGender value)? female,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(this);
    }
    return orElse();
  }
}

abstract class _UnknownGender extends Gender {
  const factory _UnknownGender() = _$UnknownGenderImpl;
  const _UnknownGender._() : super._();
}

/// @nodoc
abstract class _$$MaleGenderImplCopyWith<$Res> {
  factory _$$MaleGenderImplCopyWith(
          _$MaleGenderImpl value, $Res Function(_$MaleGenderImpl) then) =
      __$$MaleGenderImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MaleGenderImplCopyWithImpl<$Res>
    extends _$GenderCopyWithImpl<$Res, _$MaleGenderImpl>
    implements _$$MaleGenderImplCopyWith<$Res> {
  __$$MaleGenderImplCopyWithImpl(
      _$MaleGenderImpl _value, $Res Function(_$MaleGenderImpl) _then)
      : super(_value, _then);

  /// Create a copy of Gender
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$MaleGenderImpl extends _MaleGender with DiagnosticableTreeMixin {
  const _$MaleGenderImpl() : super._();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Gender.male()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'Gender.male'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$MaleGenderImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unknown,
    required TResult Function() male,
    required TResult Function() female,
  }) {
    return male();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unknown,
    TResult? Function()? male,
    TResult? Function()? female,
  }) {
    return male?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unknown,
    TResult Function()? male,
    TResult Function()? female,
    required TResult orElse(),
  }) {
    if (male != null) {
      return male();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UnknownGender value) unknown,
    required TResult Function(_MaleGender value) male,
    required TResult Function(_FemaleGender value) female,
  }) {
    return male(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UnknownGender value)? unknown,
    TResult? Function(_MaleGender value)? male,
    TResult? Function(_FemaleGender value)? female,
  }) {
    return male?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UnknownGender value)? unknown,
    TResult Function(_MaleGender value)? male,
    TResult Function(_FemaleGender value)? female,
    required TResult orElse(),
  }) {
    if (male != null) {
      return male(this);
    }
    return orElse();
  }
}

abstract class _MaleGender extends Gender {
  const factory _MaleGender() = _$MaleGenderImpl;
  const _MaleGender._() : super._();
}

/// @nodoc
abstract class _$$FemaleGenderImplCopyWith<$Res> {
  factory _$$FemaleGenderImplCopyWith(
          _$FemaleGenderImpl value, $Res Function(_$FemaleGenderImpl) then) =
      __$$FemaleGenderImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FemaleGenderImplCopyWithImpl<$Res>
    extends _$GenderCopyWithImpl<$Res, _$FemaleGenderImpl>
    implements _$$FemaleGenderImplCopyWith<$Res> {
  __$$FemaleGenderImplCopyWithImpl(
      _$FemaleGenderImpl _value, $Res Function(_$FemaleGenderImpl) _then)
      : super(_value, _then);

  /// Create a copy of Gender
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FemaleGenderImpl extends _FemaleGender with DiagnosticableTreeMixin {
  const _$FemaleGenderImpl() : super._();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Gender.female()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'Gender.female'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FemaleGenderImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unknown,
    required TResult Function() male,
    required TResult Function() female,
  }) {
    return female();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unknown,
    TResult? Function()? male,
    TResult? Function()? female,
  }) {
    return female?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unknown,
    TResult Function()? male,
    TResult Function()? female,
    required TResult orElse(),
  }) {
    if (female != null) {
      return female();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UnknownGender value) unknown,
    required TResult Function(_MaleGender value) male,
    required TResult Function(_FemaleGender value) female,
  }) {
    return female(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UnknownGender value)? unknown,
    TResult? Function(_MaleGender value)? male,
    TResult? Function(_FemaleGender value)? female,
  }) {
    return female?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UnknownGender value)? unknown,
    TResult Function(_MaleGender value)? male,
    TResult Function(_FemaleGender value)? female,
    required TResult orElse(),
  }) {
    if (female != null) {
      return female(this);
    }
    return orElse();
  }
}

abstract class _FemaleGender extends Gender {
  const factory _FemaleGender() = _$FemaleGenderImpl;
  const _FemaleGender._() : super._();
}

/// @nodoc
mixin _$Memory {
  String? get name => throw _privateConstructorUsedError;
  String? get comment => throw _privateConstructorUsedError;
  List<String>? get uploadedPhotos => throw _privateConstructorUsedError;
  List<Uint8List>? get photos => throw _privateConstructorUsedError;
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
      {String? name,
      String? comment,
      List<String>? uploadedPhotos,
      List<Uint8List>? photos,
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
    Object? name = freezed,
    Object? comment = freezed,
    Object? uploadedPhotos = freezed,
    Object? photos = freezed,
    Object? position = freezed,
  }) {
    return _then(_value.copyWith(
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
      {String? name,
      String? comment,
      List<String>? uploadedPhotos,
      List<Uint8List>? photos,
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
    Object? name = freezed,
    Object? comment = freezed,
    Object? uploadedPhotos = freezed,
    Object? photos = freezed,
    Object? position = freezed,
  }) {
    return _then(_$MemoryImpl(
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
              as Position?,
    ));
  }
}

/// @nodoc

class _$MemoryImpl with DiagnosticableTreeMixin implements _Memory {
  const _$MemoryImpl(
      {required this.name,
      required this.comment,
      required final List<String>? uploadedPhotos,
      required final List<Uint8List>? photos,
      required this.position})
      : _uploadedPhotos = uploadedPhotos,
        _photos = photos;

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
  List<Uint8List>? get photos {
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
    return 'Memory(name: $name, comment: $comment, uploadedPhotos: $uploadedPhotos, photos: $photos, position: $position)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Memory'))
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
            other is _$MemoryImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.comment, comment) || other.comment == comment) &&
            const DeepCollectionEquality()
                .equals(other._uploadedPhotos, _uploadedPhotos) &&
            const DeepCollectionEquality().equals(other._photos, _photos) &&
            (identical(other.position, position) ||
                other.position == position));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      comment,
      const DeepCollectionEquality().hash(_uploadedPhotos),
      const DeepCollectionEquality().hash(_photos),
      position);

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
      {required final String? name,
      required final String? comment,
      required final List<String>? uploadedPhotos,
      required final List<Uint8List>? photos,
      required final Position? position}) = _$MemoryImpl;

  @override
  String? get name;
  @override
  String? get comment;
  @override
  List<String>? get uploadedPhotos;
  @override
  List<Uint8List>? get photos;
  @override
  Position? get position;

  /// Create a copy of Memory
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MemoryImplCopyWith<_$MemoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
