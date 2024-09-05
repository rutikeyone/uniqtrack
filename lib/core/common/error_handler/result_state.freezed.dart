// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'result_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ResultState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function(T data, Response<dynamic> response) data,
    required TResult Function(AppError error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? loading,
    TResult? Function(T data, Response<dynamic> response)? data,
    TResult? Function(AppError error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function(T data, Response<dynamic> response)? data,
    TResult Function(AppError error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ResultIdleState<T> value) idle,
    required TResult Function(ResultLoadingState<T> value) loading,
    required TResult Function(ResultDataState<T> value) data,
    required TResult Function(ResultErrorState<T> value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ResultIdleState<T> value)? idle,
    TResult? Function(ResultLoadingState<T> value)? loading,
    TResult? Function(ResultDataState<T> value)? data,
    TResult? Function(ResultErrorState<T> value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ResultIdleState<T> value)? idle,
    TResult Function(ResultLoadingState<T> value)? loading,
    TResult Function(ResultDataState<T> value)? data,
    TResult Function(ResultErrorState<T> value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultStateCopyWith<T, $Res> {
  factory $ResultStateCopyWith(
          ResultState<T> value, $Res Function(ResultState<T>) then) =
      _$ResultStateCopyWithImpl<T, $Res, ResultState<T>>;
}

/// @nodoc
class _$ResultStateCopyWithImpl<T, $Res, $Val extends ResultState<T>>
    implements $ResultStateCopyWith<T, $Res> {
  _$ResultStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ResultState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ResultIdleStateImplCopyWith<T, $Res> {
  factory _$$ResultIdleStateImplCopyWith(_$ResultIdleStateImpl<T> value,
          $Res Function(_$ResultIdleStateImpl<T>) then) =
      __$$ResultIdleStateImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$ResultIdleStateImplCopyWithImpl<T, $Res>
    extends _$ResultStateCopyWithImpl<T, $Res, _$ResultIdleStateImpl<T>>
    implements _$$ResultIdleStateImplCopyWith<T, $Res> {
  __$$ResultIdleStateImplCopyWithImpl(_$ResultIdleStateImpl<T> _value,
      $Res Function(_$ResultIdleStateImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of ResultState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ResultIdleStateImpl<T> extends _ResultIdleState<T> {
  const _$ResultIdleStateImpl() : super._();

  @override
  String toString() {
    return 'ResultState<$T>.idle()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ResultIdleStateImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function(T data, Response<dynamic> response) data,
    required TResult Function(AppError error) error,
  }) {
    return idle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? loading,
    TResult? Function(T data, Response<dynamic> response)? data,
    TResult? Function(AppError error)? error,
  }) {
    return idle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function(T data, Response<dynamic> response)? data,
    TResult Function(AppError error)? error,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ResultIdleState<T> value) idle,
    required TResult Function(ResultLoadingState<T> value) loading,
    required TResult Function(ResultDataState<T> value) data,
    required TResult Function(ResultErrorState<T> value) error,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ResultIdleState<T> value)? idle,
    TResult? Function(ResultLoadingState<T> value)? loading,
    TResult? Function(ResultDataState<T> value)? data,
    TResult? Function(ResultErrorState<T> value)? error,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ResultIdleState<T> value)? idle,
    TResult Function(ResultLoadingState<T> value)? loading,
    TResult Function(ResultDataState<T> value)? data,
    TResult Function(ResultErrorState<T> value)? error,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class _ResultIdleState<T> extends ResultState<T> {
  const factory _ResultIdleState() = _$ResultIdleStateImpl<T>;
  const _ResultIdleState._() : super._();
}

/// @nodoc
abstract class _$$ResultLoadingStateImplCopyWith<T, $Res> {
  factory _$$ResultLoadingStateImplCopyWith(_$ResultLoadingStateImpl<T> value,
          $Res Function(_$ResultLoadingStateImpl<T>) then) =
      __$$ResultLoadingStateImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$ResultLoadingStateImplCopyWithImpl<T, $Res>
    extends _$ResultStateCopyWithImpl<T, $Res, _$ResultLoadingStateImpl<T>>
    implements _$$ResultLoadingStateImplCopyWith<T, $Res> {
  __$$ResultLoadingStateImplCopyWithImpl(_$ResultLoadingStateImpl<T> _value,
      $Res Function(_$ResultLoadingStateImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of ResultState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ResultLoadingStateImpl<T> extends ResultLoadingState<T> {
  const _$ResultLoadingStateImpl() : super._();

  @override
  String toString() {
    return 'ResultState<$T>.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResultLoadingStateImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function(T data, Response<dynamic> response) data,
    required TResult Function(AppError error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? loading,
    TResult? Function(T data, Response<dynamic> response)? data,
    TResult? Function(AppError error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function(T data, Response<dynamic> response)? data,
    TResult Function(AppError error)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ResultIdleState<T> value) idle,
    required TResult Function(ResultLoadingState<T> value) loading,
    required TResult Function(ResultDataState<T> value) data,
    required TResult Function(ResultErrorState<T> value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ResultIdleState<T> value)? idle,
    TResult? Function(ResultLoadingState<T> value)? loading,
    TResult? Function(ResultDataState<T> value)? data,
    TResult? Function(ResultErrorState<T> value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ResultIdleState<T> value)? idle,
    TResult Function(ResultLoadingState<T> value)? loading,
    TResult Function(ResultDataState<T> value)? data,
    TResult Function(ResultErrorState<T> value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ResultLoadingState<T> extends ResultState<T> {
  const factory ResultLoadingState() = _$ResultLoadingStateImpl<T>;
  const ResultLoadingState._() : super._();
}

/// @nodoc
abstract class _$$ResultDataStateImplCopyWith<T, $Res> {
  factory _$$ResultDataStateImplCopyWith(_$ResultDataStateImpl<T> value,
          $Res Function(_$ResultDataStateImpl<T>) then) =
      __$$ResultDataStateImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T data, Response<dynamic> response});
}

/// @nodoc
class __$$ResultDataStateImplCopyWithImpl<T, $Res>
    extends _$ResultStateCopyWithImpl<T, $Res, _$ResultDataStateImpl<T>>
    implements _$$ResultDataStateImplCopyWith<T, $Res> {
  __$$ResultDataStateImplCopyWithImpl(_$ResultDataStateImpl<T> _value,
      $Res Function(_$ResultDataStateImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of ResultState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? response = null,
  }) {
    return _then(_$ResultDataStateImpl<T>(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
      response: null == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as Response<dynamic>,
    ));
  }
}

/// @nodoc

class _$ResultDataStateImpl<T> extends ResultDataState<T> {
  const _$ResultDataStateImpl({required this.data, required this.response})
      : super._();

  @override
  final T data;
  @override
  final Response<dynamic> response;

  @override
  String toString() {
    return 'ResultState<$T>.data(data: $data, response: $response)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResultDataStateImpl<T> &&
            const DeepCollectionEquality().equals(other.data, data) &&
            (identical(other.response, response) ||
                other.response == response));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(data), response);

  /// Create a copy of ResultState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResultDataStateImplCopyWith<T, _$ResultDataStateImpl<T>> get copyWith =>
      __$$ResultDataStateImplCopyWithImpl<T, _$ResultDataStateImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function(T data, Response<dynamic> response) data,
    required TResult Function(AppError error) error,
  }) {
    return data(this.data, response);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? loading,
    TResult? Function(T data, Response<dynamic> response)? data,
    TResult? Function(AppError error)? error,
  }) {
    return data?.call(this.data, response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function(T data, Response<dynamic> response)? data,
    TResult Function(AppError error)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this.data, response);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ResultIdleState<T> value) idle,
    required TResult Function(ResultLoadingState<T> value) loading,
    required TResult Function(ResultDataState<T> value) data,
    required TResult Function(ResultErrorState<T> value) error,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ResultIdleState<T> value)? idle,
    TResult? Function(ResultLoadingState<T> value)? loading,
    TResult? Function(ResultDataState<T> value)? data,
    TResult? Function(ResultErrorState<T> value)? error,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ResultIdleState<T> value)? idle,
    TResult Function(ResultLoadingState<T> value)? loading,
    TResult Function(ResultDataState<T> value)? data,
    TResult Function(ResultErrorState<T> value)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class ResultDataState<T> extends ResultState<T> {
  const factory ResultDataState(
      {required final T data,
      required final Response<dynamic> response}) = _$ResultDataStateImpl<T>;
  const ResultDataState._() : super._();

  T get data;
  Response<dynamic> get response;

  /// Create a copy of ResultState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResultDataStateImplCopyWith<T, _$ResultDataStateImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ResultErrorStateImplCopyWith<T, $Res> {
  factory _$$ResultErrorStateImplCopyWith(_$ResultErrorStateImpl<T> value,
          $Res Function(_$ResultErrorStateImpl<T>) then) =
      __$$ResultErrorStateImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({AppError error});

  $AppErrorCopyWith<$Res> get error;
}

/// @nodoc
class __$$ResultErrorStateImplCopyWithImpl<T, $Res>
    extends _$ResultStateCopyWithImpl<T, $Res, _$ResultErrorStateImpl<T>>
    implements _$$ResultErrorStateImplCopyWith<T, $Res> {
  __$$ResultErrorStateImplCopyWithImpl(_$ResultErrorStateImpl<T> _value,
      $Res Function(_$ResultErrorStateImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of ResultState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$ResultErrorStateImpl<T>(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as AppError,
    ));
  }

  /// Create a copy of ResultState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AppErrorCopyWith<$Res> get error {
    return $AppErrorCopyWith<$Res>(_value.error, (value) {
      return _then(_value.copyWith(error: value));
    });
  }
}

/// @nodoc

class _$ResultErrorStateImpl<T> extends ResultErrorState<T> {
  const _$ResultErrorStateImpl(this.error) : super._();

  @override
  final AppError error;

  @override
  String toString() {
    return 'ResultState<$T>.error(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResultErrorStateImpl<T> &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of ResultState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResultErrorStateImplCopyWith<T, _$ResultErrorStateImpl<T>> get copyWith =>
      __$$ResultErrorStateImplCopyWithImpl<T, _$ResultErrorStateImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function(T data, Response<dynamic> response) data,
    required TResult Function(AppError error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? loading,
    TResult? Function(T data, Response<dynamic> response)? data,
    TResult? Function(AppError error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function(T data, Response<dynamic> response)? data,
    TResult Function(AppError error)? error,
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
    required TResult Function(_ResultIdleState<T> value) idle,
    required TResult Function(ResultLoadingState<T> value) loading,
    required TResult Function(ResultDataState<T> value) data,
    required TResult Function(ResultErrorState<T> value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ResultIdleState<T> value)? idle,
    TResult? Function(ResultLoadingState<T> value)? loading,
    TResult? Function(ResultDataState<T> value)? data,
    TResult? Function(ResultErrorState<T> value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ResultIdleState<T> value)? idle,
    TResult Function(ResultLoadingState<T> value)? loading,
    TResult Function(ResultDataState<T> value)? data,
    TResult Function(ResultErrorState<T> value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ResultErrorState<T> extends ResultState<T> {
  const factory ResultErrorState(final AppError error) =
      _$ResultErrorStateImpl<T>;
  const ResultErrorState._() : super._();

  AppError get error;

  /// Create a copy of ResultState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResultErrorStateImplCopyWith<T, _$ResultErrorStateImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
