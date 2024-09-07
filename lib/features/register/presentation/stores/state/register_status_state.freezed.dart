// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_status_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RegisterStatusState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pure,
    required TResult Function() pending,
    required TResult Function() success,
    required TResult Function() failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? pure,
    TResult? Function()? pending,
    TResult? Function()? success,
    TResult? Function()? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pure,
    TResult Function()? pending,
    TResult Function()? success,
    TResult Function()? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RegisterPureStatusState value) pure,
    required TResult Function(_RegisterPendingStatusState value) pending,
    required TResult Function(_RegisterSuccessStatusState value) success,
    required TResult Function(_RegisterFailureStatusState value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RegisterPureStatusState value)? pure,
    TResult? Function(_RegisterPendingStatusState value)? pending,
    TResult? Function(_RegisterSuccessStatusState value)? success,
    TResult? Function(_RegisterFailureStatusState value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RegisterPureStatusState value)? pure,
    TResult Function(_RegisterPendingStatusState value)? pending,
    TResult Function(_RegisterSuccessStatusState value)? success,
    TResult Function(_RegisterFailureStatusState value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterStatusStateCopyWith<$Res> {
  factory $RegisterStatusStateCopyWith(
          RegisterStatusState value, $Res Function(RegisterStatusState) then) =
      _$RegisterStatusStateCopyWithImpl<$Res, RegisterStatusState>;
}

/// @nodoc
class _$RegisterStatusStateCopyWithImpl<$Res, $Val extends RegisterStatusState>
    implements $RegisterStatusStateCopyWith<$Res> {
  _$RegisterStatusStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RegisterStatusState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$RegisterPureStatusStateImplCopyWith<$Res> {
  factory _$$RegisterPureStatusStateImplCopyWith(
          _$RegisterPureStatusStateImpl value,
          $Res Function(_$RegisterPureStatusStateImpl) then) =
      __$$RegisterPureStatusStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RegisterPureStatusStateImplCopyWithImpl<$Res>
    extends _$RegisterStatusStateCopyWithImpl<$Res,
        _$RegisterPureStatusStateImpl>
    implements _$$RegisterPureStatusStateImplCopyWith<$Res> {
  __$$RegisterPureStatusStateImplCopyWithImpl(
      _$RegisterPureStatusStateImpl _value,
      $Res Function(_$RegisterPureStatusStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of RegisterStatusState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$RegisterPureStatusStateImpl implements _RegisterPureStatusState {
  const _$RegisterPureStatusStateImpl();

  @override
  String toString() {
    return 'RegisterStatusState.pure()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterPureStatusStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pure,
    required TResult Function() pending,
    required TResult Function() success,
    required TResult Function() failure,
  }) {
    return pure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? pure,
    TResult? Function()? pending,
    TResult? Function()? success,
    TResult? Function()? failure,
  }) {
    return pure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pure,
    TResult Function()? pending,
    TResult Function()? success,
    TResult Function()? failure,
    required TResult orElse(),
  }) {
    if (pure != null) {
      return pure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RegisterPureStatusState value) pure,
    required TResult Function(_RegisterPendingStatusState value) pending,
    required TResult Function(_RegisterSuccessStatusState value) success,
    required TResult Function(_RegisterFailureStatusState value) failure,
  }) {
    return pure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RegisterPureStatusState value)? pure,
    TResult? Function(_RegisterPendingStatusState value)? pending,
    TResult? Function(_RegisterSuccessStatusState value)? success,
    TResult? Function(_RegisterFailureStatusState value)? failure,
  }) {
    return pure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RegisterPureStatusState value)? pure,
    TResult Function(_RegisterPendingStatusState value)? pending,
    TResult Function(_RegisterSuccessStatusState value)? success,
    TResult Function(_RegisterFailureStatusState value)? failure,
    required TResult orElse(),
  }) {
    if (pure != null) {
      return pure(this);
    }
    return orElse();
  }
}

abstract class _RegisterPureStatusState implements RegisterStatusState {
  const factory _RegisterPureStatusState() = _$RegisterPureStatusStateImpl;
}

/// @nodoc
abstract class _$$RegisterPendingStatusStateImplCopyWith<$Res> {
  factory _$$RegisterPendingStatusStateImplCopyWith(
          _$RegisterPendingStatusStateImpl value,
          $Res Function(_$RegisterPendingStatusStateImpl) then) =
      __$$RegisterPendingStatusStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RegisterPendingStatusStateImplCopyWithImpl<$Res>
    extends _$RegisterStatusStateCopyWithImpl<$Res,
        _$RegisterPendingStatusStateImpl>
    implements _$$RegisterPendingStatusStateImplCopyWith<$Res> {
  __$$RegisterPendingStatusStateImplCopyWithImpl(
      _$RegisterPendingStatusStateImpl _value,
      $Res Function(_$RegisterPendingStatusStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of RegisterStatusState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$RegisterPendingStatusStateImpl implements _RegisterPendingStatusState {
  const _$RegisterPendingStatusStateImpl();

  @override
  String toString() {
    return 'RegisterStatusState.pending()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterPendingStatusStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pure,
    required TResult Function() pending,
    required TResult Function() success,
    required TResult Function() failure,
  }) {
    return pending();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? pure,
    TResult? Function()? pending,
    TResult? Function()? success,
    TResult? Function()? failure,
  }) {
    return pending?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pure,
    TResult Function()? pending,
    TResult Function()? success,
    TResult Function()? failure,
    required TResult orElse(),
  }) {
    if (pending != null) {
      return pending();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RegisterPureStatusState value) pure,
    required TResult Function(_RegisterPendingStatusState value) pending,
    required TResult Function(_RegisterSuccessStatusState value) success,
    required TResult Function(_RegisterFailureStatusState value) failure,
  }) {
    return pending(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RegisterPureStatusState value)? pure,
    TResult? Function(_RegisterPendingStatusState value)? pending,
    TResult? Function(_RegisterSuccessStatusState value)? success,
    TResult? Function(_RegisterFailureStatusState value)? failure,
  }) {
    return pending?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RegisterPureStatusState value)? pure,
    TResult Function(_RegisterPendingStatusState value)? pending,
    TResult Function(_RegisterSuccessStatusState value)? success,
    TResult Function(_RegisterFailureStatusState value)? failure,
    required TResult orElse(),
  }) {
    if (pending != null) {
      return pending(this);
    }
    return orElse();
  }
}

abstract class _RegisterPendingStatusState implements RegisterStatusState {
  const factory _RegisterPendingStatusState() =
      _$RegisterPendingStatusStateImpl;
}

/// @nodoc
abstract class _$$RegisterSuccessStatusStateImplCopyWith<$Res> {
  factory _$$RegisterSuccessStatusStateImplCopyWith(
          _$RegisterSuccessStatusStateImpl value,
          $Res Function(_$RegisterSuccessStatusStateImpl) then) =
      __$$RegisterSuccessStatusStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RegisterSuccessStatusStateImplCopyWithImpl<$Res>
    extends _$RegisterStatusStateCopyWithImpl<$Res,
        _$RegisterSuccessStatusStateImpl>
    implements _$$RegisterSuccessStatusStateImplCopyWith<$Res> {
  __$$RegisterSuccessStatusStateImplCopyWithImpl(
      _$RegisterSuccessStatusStateImpl _value,
      $Res Function(_$RegisterSuccessStatusStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of RegisterStatusState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$RegisterSuccessStatusStateImpl implements _RegisterSuccessStatusState {
  const _$RegisterSuccessStatusStateImpl();

  @override
  String toString() {
    return 'RegisterStatusState.success()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterSuccessStatusStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pure,
    required TResult Function() pending,
    required TResult Function() success,
    required TResult Function() failure,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? pure,
    TResult? Function()? pending,
    TResult? Function()? success,
    TResult? Function()? failure,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pure,
    TResult Function()? pending,
    TResult Function()? success,
    TResult Function()? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RegisterPureStatusState value) pure,
    required TResult Function(_RegisterPendingStatusState value) pending,
    required TResult Function(_RegisterSuccessStatusState value) success,
    required TResult Function(_RegisterFailureStatusState value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RegisterPureStatusState value)? pure,
    TResult? Function(_RegisterPendingStatusState value)? pending,
    TResult? Function(_RegisterSuccessStatusState value)? success,
    TResult? Function(_RegisterFailureStatusState value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RegisterPureStatusState value)? pure,
    TResult Function(_RegisterPendingStatusState value)? pending,
    TResult Function(_RegisterSuccessStatusState value)? success,
    TResult Function(_RegisterFailureStatusState value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _RegisterSuccessStatusState implements RegisterStatusState {
  const factory _RegisterSuccessStatusState() =
      _$RegisterSuccessStatusStateImpl;
}

/// @nodoc
abstract class _$$RegisterFailureStatusStateImplCopyWith<$Res> {
  factory _$$RegisterFailureStatusStateImplCopyWith(
          _$RegisterFailureStatusStateImpl value,
          $Res Function(_$RegisterFailureStatusStateImpl) then) =
      __$$RegisterFailureStatusStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RegisterFailureStatusStateImplCopyWithImpl<$Res>
    extends _$RegisterStatusStateCopyWithImpl<$Res,
        _$RegisterFailureStatusStateImpl>
    implements _$$RegisterFailureStatusStateImplCopyWith<$Res> {
  __$$RegisterFailureStatusStateImplCopyWithImpl(
      _$RegisterFailureStatusStateImpl _value,
      $Res Function(_$RegisterFailureStatusStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of RegisterStatusState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$RegisterFailureStatusStateImpl implements _RegisterFailureStatusState {
  const _$RegisterFailureStatusStateImpl();

  @override
  String toString() {
    return 'RegisterStatusState.failure()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterFailureStatusStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pure,
    required TResult Function() pending,
    required TResult Function() success,
    required TResult Function() failure,
  }) {
    return failure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? pure,
    TResult? Function()? pending,
    TResult? Function()? success,
    TResult? Function()? failure,
  }) {
    return failure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pure,
    TResult Function()? pending,
    TResult Function()? success,
    TResult Function()? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RegisterPureStatusState value) pure,
    required TResult Function(_RegisterPendingStatusState value) pending,
    required TResult Function(_RegisterSuccessStatusState value) success,
    required TResult Function(_RegisterFailureStatusState value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RegisterPureStatusState value)? pure,
    TResult? Function(_RegisterPendingStatusState value)? pending,
    TResult? Function(_RegisterSuccessStatusState value)? success,
    TResult? Function(_RegisterFailureStatusState value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RegisterPureStatusState value)? pure,
    TResult Function(_RegisterPendingStatusState value)? pending,
    TResult Function(_RegisterSuccessStatusState value)? success,
    TResult Function(_RegisterFailureStatusState value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _RegisterFailureStatusState implements RegisterStatusState {
  const factory _RegisterFailureStatusState() =
      _$RegisterFailureStatusStateImpl;
}
