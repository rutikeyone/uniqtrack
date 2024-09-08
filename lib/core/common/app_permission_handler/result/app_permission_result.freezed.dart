// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_permission_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AppPermissionResult {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() success,
    required TResult Function(AppPermissionError error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? success,
    TResult? Function(AppPermissionError error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? success,
    TResult Function(AppPermissionError error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AppPermissionSuccessResult value) success,
    required TResult Function(_AppPermissionErrorResult value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AppPermissionSuccessResult value)? success,
    TResult? Function(_AppPermissionErrorResult value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AppPermissionSuccessResult value)? success,
    TResult Function(_AppPermissionErrorResult value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppPermissionResultCopyWith<$Res> {
  factory $AppPermissionResultCopyWith(
          AppPermissionResult value, $Res Function(AppPermissionResult) then) =
      _$AppPermissionResultCopyWithImpl<$Res, AppPermissionResult>;
}

/// @nodoc
class _$AppPermissionResultCopyWithImpl<$Res, $Val extends AppPermissionResult>
    implements $AppPermissionResultCopyWith<$Res> {
  _$AppPermissionResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppPermissionResult
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$AppPermissionSuccessResultImplCopyWith<$Res> {
  factory _$$AppPermissionSuccessResultImplCopyWith(
          _$AppPermissionSuccessResultImpl value,
          $Res Function(_$AppPermissionSuccessResultImpl) then) =
      __$$AppPermissionSuccessResultImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AppPermissionSuccessResultImplCopyWithImpl<$Res>
    extends _$AppPermissionResultCopyWithImpl<$Res,
        _$AppPermissionSuccessResultImpl>
    implements _$$AppPermissionSuccessResultImplCopyWith<$Res> {
  __$$AppPermissionSuccessResultImplCopyWithImpl(
      _$AppPermissionSuccessResultImpl _value,
      $Res Function(_$AppPermissionSuccessResultImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppPermissionResult
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AppPermissionSuccessResultImpl implements _AppPermissionSuccessResult {
  const _$AppPermissionSuccessResultImpl();

  @override
  String toString() {
    return 'AppPermissionResult.success()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppPermissionSuccessResultImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() success,
    required TResult Function(AppPermissionError error) error,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? success,
    TResult? Function(AppPermissionError error)? error,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? success,
    TResult Function(AppPermissionError error)? error,
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
    required TResult Function(_AppPermissionSuccessResult value) success,
    required TResult Function(_AppPermissionErrorResult value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AppPermissionSuccessResult value)? success,
    TResult? Function(_AppPermissionErrorResult value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AppPermissionSuccessResult value)? success,
    TResult Function(_AppPermissionErrorResult value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _AppPermissionSuccessResult implements AppPermissionResult {
  const factory _AppPermissionSuccessResult() =
      _$AppPermissionSuccessResultImpl;
}

/// @nodoc
abstract class _$$AppPermissionErrorResultImplCopyWith<$Res> {
  factory _$$AppPermissionErrorResultImplCopyWith(
          _$AppPermissionErrorResultImpl value,
          $Res Function(_$AppPermissionErrorResultImpl) then) =
      __$$AppPermissionErrorResultImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AppPermissionError error});
}

/// @nodoc
class __$$AppPermissionErrorResultImplCopyWithImpl<$Res>
    extends _$AppPermissionResultCopyWithImpl<$Res,
        _$AppPermissionErrorResultImpl>
    implements _$$AppPermissionErrorResultImplCopyWith<$Res> {
  __$$AppPermissionErrorResultImplCopyWithImpl(
      _$AppPermissionErrorResultImpl _value,
      $Res Function(_$AppPermissionErrorResultImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppPermissionResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$AppPermissionErrorResultImpl(
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as AppPermissionError,
    ));
  }
}

/// @nodoc

class _$AppPermissionErrorResultImpl implements _AppPermissionErrorResult {
  const _$AppPermissionErrorResultImpl({required this.error});

  @override
  final AppPermissionError error;

  @override
  String toString() {
    return 'AppPermissionResult.error(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppPermissionErrorResultImpl &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  /// Create a copy of AppPermissionResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AppPermissionErrorResultImplCopyWith<_$AppPermissionErrorResultImpl>
      get copyWith => __$$AppPermissionErrorResultImplCopyWithImpl<
          _$AppPermissionErrorResultImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() success,
    required TResult Function(AppPermissionError error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? success,
    TResult? Function(AppPermissionError error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? success,
    TResult Function(AppPermissionError error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AppPermissionSuccessResult value) success,
    required TResult Function(_AppPermissionErrorResult value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AppPermissionSuccessResult value)? success,
    TResult? Function(_AppPermissionErrorResult value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AppPermissionSuccessResult value)? success,
    TResult Function(_AppPermissionErrorResult value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _AppPermissionErrorResult implements AppPermissionResult {
  const factory _AppPermissionErrorResult(
          {required final AppPermissionError error}) =
      _$AppPermissionErrorResultImpl;

  AppPermissionError get error;

  /// Create a copy of AppPermissionResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppPermissionErrorResultImplCopyWith<_$AppPermissionErrorResultImpl>
      get copyWith => throw _privateConstructorUsedError;
}
