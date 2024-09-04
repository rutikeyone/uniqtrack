// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'gender_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GenderState {
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
    required TResult Function(_GenderMaleState value) male,
    required TResult Function(_GenderFemaleState value) female,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GenderMaleState value)? male,
    TResult? Function(_GenderFemaleState value)? female,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GenderMaleState value)? male,
    TResult Function(_GenderFemaleState value)? female,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GenderStateCopyWith<$Res> {
  factory $GenderStateCopyWith(
          GenderState value, $Res Function(GenderState) then) =
      _$GenderStateCopyWithImpl<$Res, GenderState>;
}

/// @nodoc
class _$GenderStateCopyWithImpl<$Res, $Val extends GenderState>
    implements $GenderStateCopyWith<$Res> {
  _$GenderStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GenderState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GenderMaleStateImplCopyWith<$Res> {
  factory _$$GenderMaleStateImplCopyWith(_$GenderMaleStateImpl value,
          $Res Function(_$GenderMaleStateImpl) then) =
      __$$GenderMaleStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GenderMaleStateImplCopyWithImpl<$Res>
    extends _$GenderStateCopyWithImpl<$Res, _$GenderMaleStateImpl>
    implements _$$GenderMaleStateImplCopyWith<$Res> {
  __$$GenderMaleStateImplCopyWithImpl(
      _$GenderMaleStateImpl _value, $Res Function(_$GenderMaleStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of GenderState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GenderMaleStateImpl implements _GenderMaleState {
  const _$GenderMaleStateImpl();

  @override
  String toString() {
    return 'GenderState.male()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GenderMaleStateImpl);
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
    required TResult Function(_GenderMaleState value) male,
    required TResult Function(_GenderFemaleState value) female,
  }) {
    return male(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GenderMaleState value)? male,
    TResult? Function(_GenderFemaleState value)? female,
  }) {
    return male?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GenderMaleState value)? male,
    TResult Function(_GenderFemaleState value)? female,
    required TResult orElse(),
  }) {
    if (male != null) {
      return male(this);
    }
    return orElse();
  }
}

abstract class _GenderMaleState implements GenderState {
  const factory _GenderMaleState() = _$GenderMaleStateImpl;
}

/// @nodoc
abstract class _$$GenderFemaleStateImplCopyWith<$Res> {
  factory _$$GenderFemaleStateImplCopyWith(_$GenderFemaleStateImpl value,
          $Res Function(_$GenderFemaleStateImpl) then) =
      __$$GenderFemaleStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GenderFemaleStateImplCopyWithImpl<$Res>
    extends _$GenderStateCopyWithImpl<$Res, _$GenderFemaleStateImpl>
    implements _$$GenderFemaleStateImplCopyWith<$Res> {
  __$$GenderFemaleStateImplCopyWithImpl(_$GenderFemaleStateImpl _value,
      $Res Function(_$GenderFemaleStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of GenderState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GenderFemaleStateImpl implements _GenderFemaleState {
  const _$GenderFemaleStateImpl();

  @override
  String toString() {
    return 'GenderState.female()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GenderFemaleStateImpl);
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
    required TResult Function(_GenderMaleState value) male,
    required TResult Function(_GenderFemaleState value) female,
  }) {
    return female(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GenderMaleState value)? male,
    TResult? Function(_GenderFemaleState value)? female,
  }) {
    return female?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GenderMaleState value)? male,
    TResult Function(_GenderFemaleState value)? female,
    required TResult orElse(),
  }) {
    if (female != null) {
      return female(this);
    }
    return orElse();
  }
}

abstract class _GenderFemaleState implements GenderState {
  const factory _GenderFemaleState() = _$GenderFemaleStateImpl;
}
