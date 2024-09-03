// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'gender.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Gender {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() male,
    required TResult Function() female,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? male,
    TResult? Function()? female,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? male,
    TResult Function()? female,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MaleGender value) male,
    required TResult Function(_FemaleGender value) female,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MaleGender value)? male,
    TResult? Function(_FemaleGender value)? female,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
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

class _$MaleGenderImpl implements _MaleGender {
  const _$MaleGenderImpl();

  @override
  String toString() {
    return 'Gender.male()';
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
    required TResult Function() male,
    required TResult Function() female,
  }) {
    return male();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? male,
    TResult? Function()? female,
  }) {
    return male?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
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
    required TResult Function(_MaleGender value) male,
    required TResult Function(_FemaleGender value) female,
  }) {
    return male(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MaleGender value)? male,
    TResult? Function(_FemaleGender value)? female,
  }) {
    return male?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
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

abstract class _MaleGender implements Gender {
  const factory _MaleGender() = _$MaleGenderImpl;
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

class _$FemaleGenderImpl implements _FemaleGender {
  const _$FemaleGenderImpl();

  @override
  String toString() {
    return 'Gender.female()';
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
    required TResult Function() male,
    required TResult Function() female,
  }) {
    return female();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? male,
    TResult? Function()? female,
  }) {
    return female?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
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
    required TResult Function(_MaleGender value) male,
    required TResult Function(_FemaleGender value) female,
  }) {
    return female(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MaleGender value)? male,
    TResult? Function(_FemaleGender value)? female,
  }) {
    return female?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
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

abstract class _FemaleGender implements Gender {
  const factory _FemaleGender() = _$FemaleGenderImpl;
}