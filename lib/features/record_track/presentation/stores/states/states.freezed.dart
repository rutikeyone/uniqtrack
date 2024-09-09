// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'states.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RecordTrackState {
  RecordTrackPermissionState get permissionState =>
      throw _privateConstructorUsedError;
  UserLocationState get locationState => throw _privateConstructorUsedError;

  /// Create a copy of RecordTrackState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RecordTrackStateCopyWith<RecordTrackState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecordTrackStateCopyWith<$Res> {
  factory $RecordTrackStateCopyWith(
          RecordTrackState value, $Res Function(RecordTrackState) then) =
      _$RecordTrackStateCopyWithImpl<$Res, RecordTrackState>;
  @useResult
  $Res call(
      {RecordTrackPermissionState permissionState,
      UserLocationState locationState});

  $RecordTrackPermissionStateCopyWith<$Res> get permissionState;
  $UserLocationStateCopyWith<$Res> get locationState;
}

/// @nodoc
class _$RecordTrackStateCopyWithImpl<$Res, $Val extends RecordTrackState>
    implements $RecordTrackStateCopyWith<$Res> {
  _$RecordTrackStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RecordTrackState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? permissionState = null,
    Object? locationState = null,
  }) {
    return _then(_value.copyWith(
      permissionState: null == permissionState
          ? _value.permissionState
          : permissionState // ignore: cast_nullable_to_non_nullable
              as RecordTrackPermissionState,
      locationState: null == locationState
          ? _value.locationState
          : locationState // ignore: cast_nullable_to_non_nullable
              as UserLocationState,
    ) as $Val);
  }

  /// Create a copy of RecordTrackState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RecordTrackPermissionStateCopyWith<$Res> get permissionState {
    return $RecordTrackPermissionStateCopyWith<$Res>(_value.permissionState,
        (value) {
      return _then(_value.copyWith(permissionState: value) as $Val);
    });
  }

  /// Create a copy of RecordTrackState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserLocationStateCopyWith<$Res> get locationState {
    return $UserLocationStateCopyWith<$Res>(_value.locationState, (value) {
      return _then(_value.copyWith(locationState: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RecordTrackStateImplCopyWith<$Res>
    implements $RecordTrackStateCopyWith<$Res> {
  factory _$$RecordTrackStateImplCopyWith(_$RecordTrackStateImpl value,
          $Res Function(_$RecordTrackStateImpl) then) =
      __$$RecordTrackStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {RecordTrackPermissionState permissionState,
      UserLocationState locationState});

  @override
  $RecordTrackPermissionStateCopyWith<$Res> get permissionState;
  @override
  $UserLocationStateCopyWith<$Res> get locationState;
}

/// @nodoc
class __$$RecordTrackStateImplCopyWithImpl<$Res>
    extends _$RecordTrackStateCopyWithImpl<$Res, _$RecordTrackStateImpl>
    implements _$$RecordTrackStateImplCopyWith<$Res> {
  __$$RecordTrackStateImplCopyWithImpl(_$RecordTrackStateImpl _value,
      $Res Function(_$RecordTrackStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of RecordTrackState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? permissionState = null,
    Object? locationState = null,
  }) {
    return _then(_$RecordTrackStateImpl(
      permissionState: null == permissionState
          ? _value.permissionState
          : permissionState // ignore: cast_nullable_to_non_nullable
              as RecordTrackPermissionState,
      locationState: null == locationState
          ? _value.locationState
          : locationState // ignore: cast_nullable_to_non_nullable
              as UserLocationState,
    ));
  }
}

/// @nodoc

class _$RecordTrackStateImpl implements _RecordTrackState {
  const _$RecordTrackStateImpl(
      {required this.permissionState, required this.locationState});

  @override
  final RecordTrackPermissionState permissionState;
  @override
  final UserLocationState locationState;

  @override
  String toString() {
    return 'RecordTrackState(permissionState: $permissionState, locationState: $locationState)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecordTrackStateImpl &&
            (identical(other.permissionState, permissionState) ||
                other.permissionState == permissionState) &&
            (identical(other.locationState, locationState) ||
                other.locationState == locationState));
  }

  @override
  int get hashCode => Object.hash(runtimeType, permissionState, locationState);

  /// Create a copy of RecordTrackState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RecordTrackStateImplCopyWith<_$RecordTrackStateImpl> get copyWith =>
      __$$RecordTrackStateImplCopyWithImpl<_$RecordTrackStateImpl>(
          this, _$identity);
}

abstract class _RecordTrackState implements RecordTrackState {
  const factory _RecordTrackState(
      {required final RecordTrackPermissionState permissionState,
      required final UserLocationState locationState}) = _$RecordTrackStateImpl;

  @override
  RecordTrackPermissionState get permissionState;
  @override
  UserLocationState get locationState;

  /// Create a copy of RecordTrackState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RecordTrackStateImplCopyWith<_$RecordTrackStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RecordTrackPermissionState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pure,
    required TResult Function() pending,
    required TResult Function() success,
    required TResult Function() denied,
    required TResult Function() permanentlyDenied,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? pure,
    TResult? Function()? pending,
    TResult? Function()? success,
    TResult? Function()? denied,
    TResult? Function()? permanentlyDenied,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pure,
    TResult Function()? pending,
    TResult Function()? success,
    TResult Function()? denied,
    TResult Function()? permanentlyDenied,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RecordTrackPermissionPureState value) pure,
    required TResult Function(_RecordTrackPermissionPendingState value) pending,
    required TResult Function(_RecordTrackPermissionSuccessState value) success,
    required TResult Function(_RecordTrackPermissionDeniedState value) denied,
    required TResult Function(
            _RecordTrackPermissionPermanentlyDeniedState value)
        permanentlyDenied,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RecordTrackPermissionPureState value)? pure,
    TResult? Function(_RecordTrackPermissionPendingState value)? pending,
    TResult? Function(_RecordTrackPermissionSuccessState value)? success,
    TResult? Function(_RecordTrackPermissionDeniedState value)? denied,
    TResult? Function(_RecordTrackPermissionPermanentlyDeniedState value)?
        permanentlyDenied,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RecordTrackPermissionPureState value)? pure,
    TResult Function(_RecordTrackPermissionPendingState value)? pending,
    TResult Function(_RecordTrackPermissionSuccessState value)? success,
    TResult Function(_RecordTrackPermissionDeniedState value)? denied,
    TResult Function(_RecordTrackPermissionPermanentlyDeniedState value)?
        permanentlyDenied,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecordTrackPermissionStateCopyWith<$Res> {
  factory $RecordTrackPermissionStateCopyWith(RecordTrackPermissionState value,
          $Res Function(RecordTrackPermissionState) then) =
      _$RecordTrackPermissionStateCopyWithImpl<$Res,
          RecordTrackPermissionState>;
}

/// @nodoc
class _$RecordTrackPermissionStateCopyWithImpl<$Res,
        $Val extends RecordTrackPermissionState>
    implements $RecordTrackPermissionStateCopyWith<$Res> {
  _$RecordTrackPermissionStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RecordTrackPermissionState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$RecordTrackPermissionPureStateImplCopyWith<$Res> {
  factory _$$RecordTrackPermissionPureStateImplCopyWith(
          _$RecordTrackPermissionPureStateImpl value,
          $Res Function(_$RecordTrackPermissionPureStateImpl) then) =
      __$$RecordTrackPermissionPureStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RecordTrackPermissionPureStateImplCopyWithImpl<$Res>
    extends _$RecordTrackPermissionStateCopyWithImpl<$Res,
        _$RecordTrackPermissionPureStateImpl>
    implements _$$RecordTrackPermissionPureStateImplCopyWith<$Res> {
  __$$RecordTrackPermissionPureStateImplCopyWithImpl(
      _$RecordTrackPermissionPureStateImpl _value,
      $Res Function(_$RecordTrackPermissionPureStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of RecordTrackPermissionState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$RecordTrackPermissionPureStateImpl
    extends _RecordTrackPermissionPureState {
  const _$RecordTrackPermissionPureStateImpl() : super._();

  @override
  String toString() {
    return 'RecordTrackPermissionState.pure()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecordTrackPermissionPureStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pure,
    required TResult Function() pending,
    required TResult Function() success,
    required TResult Function() denied,
    required TResult Function() permanentlyDenied,
  }) {
    return pure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? pure,
    TResult? Function()? pending,
    TResult? Function()? success,
    TResult? Function()? denied,
    TResult? Function()? permanentlyDenied,
  }) {
    return pure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pure,
    TResult Function()? pending,
    TResult Function()? success,
    TResult Function()? denied,
    TResult Function()? permanentlyDenied,
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
    required TResult Function(_RecordTrackPermissionPureState value) pure,
    required TResult Function(_RecordTrackPermissionPendingState value) pending,
    required TResult Function(_RecordTrackPermissionSuccessState value) success,
    required TResult Function(_RecordTrackPermissionDeniedState value) denied,
    required TResult Function(
            _RecordTrackPermissionPermanentlyDeniedState value)
        permanentlyDenied,
  }) {
    return pure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RecordTrackPermissionPureState value)? pure,
    TResult? Function(_RecordTrackPermissionPendingState value)? pending,
    TResult? Function(_RecordTrackPermissionSuccessState value)? success,
    TResult? Function(_RecordTrackPermissionDeniedState value)? denied,
    TResult? Function(_RecordTrackPermissionPermanentlyDeniedState value)?
        permanentlyDenied,
  }) {
    return pure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RecordTrackPermissionPureState value)? pure,
    TResult Function(_RecordTrackPermissionPendingState value)? pending,
    TResult Function(_RecordTrackPermissionSuccessState value)? success,
    TResult Function(_RecordTrackPermissionDeniedState value)? denied,
    TResult Function(_RecordTrackPermissionPermanentlyDeniedState value)?
        permanentlyDenied,
    required TResult orElse(),
  }) {
    if (pure != null) {
      return pure(this);
    }
    return orElse();
  }
}

abstract class _RecordTrackPermissionPureState
    extends RecordTrackPermissionState {
  const factory _RecordTrackPermissionPureState() =
      _$RecordTrackPermissionPureStateImpl;
  const _RecordTrackPermissionPureState._() : super._();
}

/// @nodoc
abstract class _$$RecordTrackPermissionPendingStateImplCopyWith<$Res> {
  factory _$$RecordTrackPermissionPendingStateImplCopyWith(
          _$RecordTrackPermissionPendingStateImpl value,
          $Res Function(_$RecordTrackPermissionPendingStateImpl) then) =
      __$$RecordTrackPermissionPendingStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RecordTrackPermissionPendingStateImplCopyWithImpl<$Res>
    extends _$RecordTrackPermissionStateCopyWithImpl<$Res,
        _$RecordTrackPermissionPendingStateImpl>
    implements _$$RecordTrackPermissionPendingStateImplCopyWith<$Res> {
  __$$RecordTrackPermissionPendingStateImplCopyWithImpl(
      _$RecordTrackPermissionPendingStateImpl _value,
      $Res Function(_$RecordTrackPermissionPendingStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of RecordTrackPermissionState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$RecordTrackPermissionPendingStateImpl
    extends _RecordTrackPermissionPendingState {
  const _$RecordTrackPermissionPendingStateImpl() : super._();

  @override
  String toString() {
    return 'RecordTrackPermissionState.pending()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecordTrackPermissionPendingStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pure,
    required TResult Function() pending,
    required TResult Function() success,
    required TResult Function() denied,
    required TResult Function() permanentlyDenied,
  }) {
    return pending();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? pure,
    TResult? Function()? pending,
    TResult? Function()? success,
    TResult? Function()? denied,
    TResult? Function()? permanentlyDenied,
  }) {
    return pending?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pure,
    TResult Function()? pending,
    TResult Function()? success,
    TResult Function()? denied,
    TResult Function()? permanentlyDenied,
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
    required TResult Function(_RecordTrackPermissionPureState value) pure,
    required TResult Function(_RecordTrackPermissionPendingState value) pending,
    required TResult Function(_RecordTrackPermissionSuccessState value) success,
    required TResult Function(_RecordTrackPermissionDeniedState value) denied,
    required TResult Function(
            _RecordTrackPermissionPermanentlyDeniedState value)
        permanentlyDenied,
  }) {
    return pending(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RecordTrackPermissionPureState value)? pure,
    TResult? Function(_RecordTrackPermissionPendingState value)? pending,
    TResult? Function(_RecordTrackPermissionSuccessState value)? success,
    TResult? Function(_RecordTrackPermissionDeniedState value)? denied,
    TResult? Function(_RecordTrackPermissionPermanentlyDeniedState value)?
        permanentlyDenied,
  }) {
    return pending?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RecordTrackPermissionPureState value)? pure,
    TResult Function(_RecordTrackPermissionPendingState value)? pending,
    TResult Function(_RecordTrackPermissionSuccessState value)? success,
    TResult Function(_RecordTrackPermissionDeniedState value)? denied,
    TResult Function(_RecordTrackPermissionPermanentlyDeniedState value)?
        permanentlyDenied,
    required TResult orElse(),
  }) {
    if (pending != null) {
      return pending(this);
    }
    return orElse();
  }
}

abstract class _RecordTrackPermissionPendingState
    extends RecordTrackPermissionState {
  const factory _RecordTrackPermissionPendingState() =
      _$RecordTrackPermissionPendingStateImpl;
  const _RecordTrackPermissionPendingState._() : super._();
}

/// @nodoc
abstract class _$$RecordTrackPermissionSuccessStateImplCopyWith<$Res> {
  factory _$$RecordTrackPermissionSuccessStateImplCopyWith(
          _$RecordTrackPermissionSuccessStateImpl value,
          $Res Function(_$RecordTrackPermissionSuccessStateImpl) then) =
      __$$RecordTrackPermissionSuccessStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RecordTrackPermissionSuccessStateImplCopyWithImpl<$Res>
    extends _$RecordTrackPermissionStateCopyWithImpl<$Res,
        _$RecordTrackPermissionSuccessStateImpl>
    implements _$$RecordTrackPermissionSuccessStateImplCopyWith<$Res> {
  __$$RecordTrackPermissionSuccessStateImplCopyWithImpl(
      _$RecordTrackPermissionSuccessStateImpl _value,
      $Res Function(_$RecordTrackPermissionSuccessStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of RecordTrackPermissionState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$RecordTrackPermissionSuccessStateImpl
    extends _RecordTrackPermissionSuccessState {
  const _$RecordTrackPermissionSuccessStateImpl() : super._();

  @override
  String toString() {
    return 'RecordTrackPermissionState.success()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecordTrackPermissionSuccessStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pure,
    required TResult Function() pending,
    required TResult Function() success,
    required TResult Function() denied,
    required TResult Function() permanentlyDenied,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? pure,
    TResult? Function()? pending,
    TResult? Function()? success,
    TResult? Function()? denied,
    TResult? Function()? permanentlyDenied,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pure,
    TResult Function()? pending,
    TResult Function()? success,
    TResult Function()? denied,
    TResult Function()? permanentlyDenied,
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
    required TResult Function(_RecordTrackPermissionPureState value) pure,
    required TResult Function(_RecordTrackPermissionPendingState value) pending,
    required TResult Function(_RecordTrackPermissionSuccessState value) success,
    required TResult Function(_RecordTrackPermissionDeniedState value) denied,
    required TResult Function(
            _RecordTrackPermissionPermanentlyDeniedState value)
        permanentlyDenied,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RecordTrackPermissionPureState value)? pure,
    TResult? Function(_RecordTrackPermissionPendingState value)? pending,
    TResult? Function(_RecordTrackPermissionSuccessState value)? success,
    TResult? Function(_RecordTrackPermissionDeniedState value)? denied,
    TResult? Function(_RecordTrackPermissionPermanentlyDeniedState value)?
        permanentlyDenied,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RecordTrackPermissionPureState value)? pure,
    TResult Function(_RecordTrackPermissionPendingState value)? pending,
    TResult Function(_RecordTrackPermissionSuccessState value)? success,
    TResult Function(_RecordTrackPermissionDeniedState value)? denied,
    TResult Function(_RecordTrackPermissionPermanentlyDeniedState value)?
        permanentlyDenied,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _RecordTrackPermissionSuccessState
    extends RecordTrackPermissionState {
  const factory _RecordTrackPermissionSuccessState() =
      _$RecordTrackPermissionSuccessStateImpl;
  const _RecordTrackPermissionSuccessState._() : super._();
}

/// @nodoc
abstract class _$$RecordTrackPermissionDeniedStateImplCopyWith<$Res> {
  factory _$$RecordTrackPermissionDeniedStateImplCopyWith(
          _$RecordTrackPermissionDeniedStateImpl value,
          $Res Function(_$RecordTrackPermissionDeniedStateImpl) then) =
      __$$RecordTrackPermissionDeniedStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RecordTrackPermissionDeniedStateImplCopyWithImpl<$Res>
    extends _$RecordTrackPermissionStateCopyWithImpl<$Res,
        _$RecordTrackPermissionDeniedStateImpl>
    implements _$$RecordTrackPermissionDeniedStateImplCopyWith<$Res> {
  __$$RecordTrackPermissionDeniedStateImplCopyWithImpl(
      _$RecordTrackPermissionDeniedStateImpl _value,
      $Res Function(_$RecordTrackPermissionDeniedStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of RecordTrackPermissionState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$RecordTrackPermissionDeniedStateImpl
    extends _RecordTrackPermissionDeniedState {
  const _$RecordTrackPermissionDeniedStateImpl() : super._();

  @override
  String toString() {
    return 'RecordTrackPermissionState.denied()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecordTrackPermissionDeniedStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pure,
    required TResult Function() pending,
    required TResult Function() success,
    required TResult Function() denied,
    required TResult Function() permanentlyDenied,
  }) {
    return denied();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? pure,
    TResult? Function()? pending,
    TResult? Function()? success,
    TResult? Function()? denied,
    TResult? Function()? permanentlyDenied,
  }) {
    return denied?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pure,
    TResult Function()? pending,
    TResult Function()? success,
    TResult Function()? denied,
    TResult Function()? permanentlyDenied,
    required TResult orElse(),
  }) {
    if (denied != null) {
      return denied();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RecordTrackPermissionPureState value) pure,
    required TResult Function(_RecordTrackPermissionPendingState value) pending,
    required TResult Function(_RecordTrackPermissionSuccessState value) success,
    required TResult Function(_RecordTrackPermissionDeniedState value) denied,
    required TResult Function(
            _RecordTrackPermissionPermanentlyDeniedState value)
        permanentlyDenied,
  }) {
    return denied(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RecordTrackPermissionPureState value)? pure,
    TResult? Function(_RecordTrackPermissionPendingState value)? pending,
    TResult? Function(_RecordTrackPermissionSuccessState value)? success,
    TResult? Function(_RecordTrackPermissionDeniedState value)? denied,
    TResult? Function(_RecordTrackPermissionPermanentlyDeniedState value)?
        permanentlyDenied,
  }) {
    return denied?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RecordTrackPermissionPureState value)? pure,
    TResult Function(_RecordTrackPermissionPendingState value)? pending,
    TResult Function(_RecordTrackPermissionSuccessState value)? success,
    TResult Function(_RecordTrackPermissionDeniedState value)? denied,
    TResult Function(_RecordTrackPermissionPermanentlyDeniedState value)?
        permanentlyDenied,
    required TResult orElse(),
  }) {
    if (denied != null) {
      return denied(this);
    }
    return orElse();
  }
}

abstract class _RecordTrackPermissionDeniedState
    extends RecordTrackPermissionState {
  const factory _RecordTrackPermissionDeniedState() =
      _$RecordTrackPermissionDeniedStateImpl;
  const _RecordTrackPermissionDeniedState._() : super._();
}

/// @nodoc
abstract class _$$RecordTrackPermissionPermanentlyDeniedStateImplCopyWith<
    $Res> {
  factory _$$RecordTrackPermissionPermanentlyDeniedStateImplCopyWith(
          _$RecordTrackPermissionPermanentlyDeniedStateImpl value,
          $Res Function(_$RecordTrackPermissionPermanentlyDeniedStateImpl)
              then) =
      __$$RecordTrackPermissionPermanentlyDeniedStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RecordTrackPermissionPermanentlyDeniedStateImplCopyWithImpl<$Res>
    extends _$RecordTrackPermissionStateCopyWithImpl<$Res,
        _$RecordTrackPermissionPermanentlyDeniedStateImpl>
    implements
        _$$RecordTrackPermissionPermanentlyDeniedStateImplCopyWith<$Res> {
  __$$RecordTrackPermissionPermanentlyDeniedStateImplCopyWithImpl(
      _$RecordTrackPermissionPermanentlyDeniedStateImpl _value,
      $Res Function(_$RecordTrackPermissionPermanentlyDeniedStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of RecordTrackPermissionState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$RecordTrackPermissionPermanentlyDeniedStateImpl
    extends _RecordTrackPermissionPermanentlyDeniedState {
  const _$RecordTrackPermissionPermanentlyDeniedStateImpl() : super._();

  @override
  String toString() {
    return 'RecordTrackPermissionState.permanentlyDenied()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecordTrackPermissionPermanentlyDeniedStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pure,
    required TResult Function() pending,
    required TResult Function() success,
    required TResult Function() denied,
    required TResult Function() permanentlyDenied,
  }) {
    return permanentlyDenied();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? pure,
    TResult? Function()? pending,
    TResult? Function()? success,
    TResult? Function()? denied,
    TResult? Function()? permanentlyDenied,
  }) {
    return permanentlyDenied?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pure,
    TResult Function()? pending,
    TResult Function()? success,
    TResult Function()? denied,
    TResult Function()? permanentlyDenied,
    required TResult orElse(),
  }) {
    if (permanentlyDenied != null) {
      return permanentlyDenied();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RecordTrackPermissionPureState value) pure,
    required TResult Function(_RecordTrackPermissionPendingState value) pending,
    required TResult Function(_RecordTrackPermissionSuccessState value) success,
    required TResult Function(_RecordTrackPermissionDeniedState value) denied,
    required TResult Function(
            _RecordTrackPermissionPermanentlyDeniedState value)
        permanentlyDenied,
  }) {
    return permanentlyDenied(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RecordTrackPermissionPureState value)? pure,
    TResult? Function(_RecordTrackPermissionPendingState value)? pending,
    TResult? Function(_RecordTrackPermissionSuccessState value)? success,
    TResult? Function(_RecordTrackPermissionDeniedState value)? denied,
    TResult? Function(_RecordTrackPermissionPermanentlyDeniedState value)?
        permanentlyDenied,
  }) {
    return permanentlyDenied?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RecordTrackPermissionPureState value)? pure,
    TResult Function(_RecordTrackPermissionPendingState value)? pending,
    TResult Function(_RecordTrackPermissionSuccessState value)? success,
    TResult Function(_RecordTrackPermissionDeniedState value)? denied,
    TResult Function(_RecordTrackPermissionPermanentlyDeniedState value)?
        permanentlyDenied,
    required TResult orElse(),
  }) {
    if (permanentlyDenied != null) {
      return permanentlyDenied(this);
    }
    return orElse();
  }
}

abstract class _RecordTrackPermissionPermanentlyDeniedState
    extends RecordTrackPermissionState {
  const factory _RecordTrackPermissionPermanentlyDeniedState() =
      _$RecordTrackPermissionPermanentlyDeniedStateImpl;
  const _RecordTrackPermissionPermanentlyDeniedState._() : super._();
}

/// @nodoc
mixin _$UserLocationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function(
            Position currentPosition, List<Position> positions)
        mark,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function(Position currentPosition, List<Position> positions)? mark,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(Position currentPosition, List<Position> positions)? mark,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserLocationEmptyState value) empty,
    required TResult Function(_UserLocationMarkState value) mark,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserLocationEmptyState value)? empty,
    TResult? Function(_UserLocationMarkState value)? mark,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserLocationEmptyState value)? empty,
    TResult Function(_UserLocationMarkState value)? mark,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserLocationStateCopyWith<$Res> {
  factory $UserLocationStateCopyWith(
          UserLocationState value, $Res Function(UserLocationState) then) =
      _$UserLocationStateCopyWithImpl<$Res, UserLocationState>;
}

/// @nodoc
class _$UserLocationStateCopyWithImpl<$Res, $Val extends UserLocationState>
    implements $UserLocationStateCopyWith<$Res> {
  _$UserLocationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserLocationState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$UserLocationEmptyStateImplCopyWith<$Res> {
  factory _$$UserLocationEmptyStateImplCopyWith(
          _$UserLocationEmptyStateImpl value,
          $Res Function(_$UserLocationEmptyStateImpl) then) =
      __$$UserLocationEmptyStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UserLocationEmptyStateImplCopyWithImpl<$Res>
    extends _$UserLocationStateCopyWithImpl<$Res, _$UserLocationEmptyStateImpl>
    implements _$$UserLocationEmptyStateImplCopyWith<$Res> {
  __$$UserLocationEmptyStateImplCopyWithImpl(
      _$UserLocationEmptyStateImpl _value,
      $Res Function(_$UserLocationEmptyStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserLocationState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$UserLocationEmptyStateImpl implements _UserLocationEmptyState {
  const _$UserLocationEmptyStateImpl();

  @override
  String toString() {
    return 'UserLocationState.empty()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserLocationEmptyStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function(
            Position currentPosition, List<Position> positions)
        mark,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function(Position currentPosition, List<Position> positions)? mark,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(Position currentPosition, List<Position> positions)? mark,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserLocationEmptyState value) empty,
    required TResult Function(_UserLocationMarkState value) mark,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserLocationEmptyState value)? empty,
    TResult? Function(_UserLocationMarkState value)? mark,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserLocationEmptyState value)? empty,
    TResult Function(_UserLocationMarkState value)? mark,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class _UserLocationEmptyState implements UserLocationState {
  const factory _UserLocationEmptyState() = _$UserLocationEmptyStateImpl;
}

/// @nodoc
abstract class _$$UserLocationMarkStateImplCopyWith<$Res> {
  factory _$$UserLocationMarkStateImplCopyWith(
          _$UserLocationMarkStateImpl value,
          $Res Function(_$UserLocationMarkStateImpl) then) =
      __$$UserLocationMarkStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Position currentPosition, List<Position> positions});

  $PositionCopyWith<$Res> get currentPosition;
}

/// @nodoc
class __$$UserLocationMarkStateImplCopyWithImpl<$Res>
    extends _$UserLocationStateCopyWithImpl<$Res, _$UserLocationMarkStateImpl>
    implements _$$UserLocationMarkStateImplCopyWith<$Res> {
  __$$UserLocationMarkStateImplCopyWithImpl(_$UserLocationMarkStateImpl _value,
      $Res Function(_$UserLocationMarkStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserLocationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPosition = null,
    Object? positions = null,
  }) {
    return _then(_$UserLocationMarkStateImpl(
      currentPosition: null == currentPosition
          ? _value.currentPosition
          : currentPosition // ignore: cast_nullable_to_non_nullable
              as Position,
      positions: null == positions
          ? _value._positions
          : positions // ignore: cast_nullable_to_non_nullable
              as List<Position>,
    ));
  }

  /// Create a copy of UserLocationState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PositionCopyWith<$Res> get currentPosition {
    return $PositionCopyWith<$Res>(_value.currentPosition, (value) {
      return _then(_value.copyWith(currentPosition: value));
    });
  }
}

/// @nodoc

class _$UserLocationMarkStateImpl implements _UserLocationMarkState {
  const _$UserLocationMarkStateImpl(
      {required this.currentPosition,
      final List<Position> positions = const []})
      : _positions = positions;

  @override
  final Position currentPosition;
  final List<Position> _positions;
  @override
  @JsonKey()
  List<Position> get positions {
    if (_positions is EqualUnmodifiableListView) return _positions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_positions);
  }

  @override
  String toString() {
    return 'UserLocationState.mark(currentPosition: $currentPosition, positions: $positions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserLocationMarkStateImpl &&
            (identical(other.currentPosition, currentPosition) ||
                other.currentPosition == currentPosition) &&
            const DeepCollectionEquality()
                .equals(other._positions, _positions));
  }

  @override
  int get hashCode => Object.hash(runtimeType, currentPosition,
      const DeepCollectionEquality().hash(_positions));

  /// Create a copy of UserLocationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserLocationMarkStateImplCopyWith<_$UserLocationMarkStateImpl>
      get copyWith => __$$UserLocationMarkStateImplCopyWithImpl<
          _$UserLocationMarkStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function(
            Position currentPosition, List<Position> positions)
        mark,
  }) {
    return mark(currentPosition, positions);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function(Position currentPosition, List<Position> positions)? mark,
  }) {
    return mark?.call(currentPosition, positions);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(Position currentPosition, List<Position> positions)? mark,
    required TResult orElse(),
  }) {
    if (mark != null) {
      return mark(currentPosition, positions);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserLocationEmptyState value) empty,
    required TResult Function(_UserLocationMarkState value) mark,
  }) {
    return mark(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserLocationEmptyState value)? empty,
    TResult? Function(_UserLocationMarkState value)? mark,
  }) {
    return mark?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserLocationEmptyState value)? empty,
    TResult Function(_UserLocationMarkState value)? mark,
    required TResult orElse(),
  }) {
    if (mark != null) {
      return mark(this);
    }
    return orElse();
  }
}

abstract class _UserLocationMarkState implements UserLocationState {
  const factory _UserLocationMarkState(
      {required final Position currentPosition,
      final List<Position> positions}) = _$UserLocationMarkStateImpl;

  Position get currentPosition;
  List<Position> get positions;

  /// Create a copy of UserLocationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserLocationMarkStateImplCopyWith<_$UserLocationMarkStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RecordTrackActions {
  void Function(String, String) get callback =>
      throw _privateConstructorUsedError;
  AppStrings get title => throw _privateConstructorUsedError;
  AppStrings get body => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(void Function(String, String) callback,
            AppStrings title, AppStrings body)
        initStreamPositions,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(void Function(String, String) callback, AppStrings title,
            AppStrings body)?
        initStreamPositions,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(void Function(String, String) callback, AppStrings title,
            AppStrings body)?
        initStreamPositions,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RecordTrackInitStreamPositionsAction value)
        initStreamPositions,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RecordTrackInitStreamPositionsAction value)?
        initStreamPositions,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RecordTrackInitStreamPositionsAction value)?
        initStreamPositions,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of RecordTrackActions
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RecordTrackActionsCopyWith<RecordTrackActions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecordTrackActionsCopyWith<$Res> {
  factory $RecordTrackActionsCopyWith(
          RecordTrackActions value, $Res Function(RecordTrackActions) then) =
      _$RecordTrackActionsCopyWithImpl<$Res, RecordTrackActions>;
  @useResult
  $Res call(
      {void Function(String, String) callback,
      AppStrings title,
      AppStrings body});

  $AppStringsCopyWith<$Res> get title;
  $AppStringsCopyWith<$Res> get body;
}

/// @nodoc
class _$RecordTrackActionsCopyWithImpl<$Res, $Val extends RecordTrackActions>
    implements $RecordTrackActionsCopyWith<$Res> {
  _$RecordTrackActionsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RecordTrackActions
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? callback = null,
    Object? title = null,
    Object? body = null,
  }) {
    return _then(_value.copyWith(
      callback: null == callback
          ? _value.callback
          : callback // ignore: cast_nullable_to_non_nullable
              as void Function(String, String),
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as AppStrings,
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as AppStrings,
    ) as $Val);
  }

  /// Create a copy of RecordTrackActions
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AppStringsCopyWith<$Res> get title {
    return $AppStringsCopyWith<$Res>(_value.title, (value) {
      return _then(_value.copyWith(title: value) as $Val);
    });
  }

  /// Create a copy of RecordTrackActions
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AppStringsCopyWith<$Res> get body {
    return $AppStringsCopyWith<$Res>(_value.body, (value) {
      return _then(_value.copyWith(body: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RecordTrackInitStreamPositionsActionImplCopyWith<$Res>
    implements $RecordTrackActionsCopyWith<$Res> {
  factory _$$RecordTrackInitStreamPositionsActionImplCopyWith(
          _$RecordTrackInitStreamPositionsActionImpl value,
          $Res Function(_$RecordTrackInitStreamPositionsActionImpl) then) =
      __$$RecordTrackInitStreamPositionsActionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {void Function(String, String) callback,
      AppStrings title,
      AppStrings body});

  @override
  $AppStringsCopyWith<$Res> get title;
  @override
  $AppStringsCopyWith<$Res> get body;
}

/// @nodoc
class __$$RecordTrackInitStreamPositionsActionImplCopyWithImpl<$Res>
    extends _$RecordTrackActionsCopyWithImpl<$Res,
        _$RecordTrackInitStreamPositionsActionImpl>
    implements _$$RecordTrackInitStreamPositionsActionImplCopyWith<$Res> {
  __$$RecordTrackInitStreamPositionsActionImplCopyWithImpl(
      _$RecordTrackInitStreamPositionsActionImpl _value,
      $Res Function(_$RecordTrackInitStreamPositionsActionImpl) _then)
      : super(_value, _then);

  /// Create a copy of RecordTrackActions
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? callback = null,
    Object? title = null,
    Object? body = null,
  }) {
    return _then(_$RecordTrackInitStreamPositionsActionImpl(
      callback: null == callback
          ? _value.callback
          : callback // ignore: cast_nullable_to_non_nullable
              as void Function(String, String),
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as AppStrings,
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as AppStrings,
    ));
  }
}

/// @nodoc

class _$RecordTrackInitStreamPositionsActionImpl
    implements _RecordTrackInitStreamPositionsAction {
  const _$RecordTrackInitStreamPositionsActionImpl(
      {required this.callback, required this.title, required this.body});

  @override
  final void Function(String, String) callback;
  @override
  final AppStrings title;
  @override
  final AppStrings body;

  @override
  String toString() {
    return 'RecordTrackActions.initStreamPositions(callback: $callback, title: $title, body: $body)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecordTrackInitStreamPositionsActionImpl &&
            (identical(other.callback, callback) ||
                other.callback == callback) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.body, body) || other.body == body));
  }

  @override
  int get hashCode => Object.hash(runtimeType, callback, title, body);

  /// Create a copy of RecordTrackActions
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RecordTrackInitStreamPositionsActionImplCopyWith<
          _$RecordTrackInitStreamPositionsActionImpl>
      get copyWith => __$$RecordTrackInitStreamPositionsActionImplCopyWithImpl<
          _$RecordTrackInitStreamPositionsActionImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(void Function(String, String) callback,
            AppStrings title, AppStrings body)
        initStreamPositions,
  }) {
    return initStreamPositions(callback, title, body);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(void Function(String, String) callback, AppStrings title,
            AppStrings body)?
        initStreamPositions,
  }) {
    return initStreamPositions?.call(callback, title, body);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(void Function(String, String) callback, AppStrings title,
            AppStrings body)?
        initStreamPositions,
    required TResult orElse(),
  }) {
    if (initStreamPositions != null) {
      return initStreamPositions(callback, title, body);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RecordTrackInitStreamPositionsAction value)
        initStreamPositions,
  }) {
    return initStreamPositions(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RecordTrackInitStreamPositionsAction value)?
        initStreamPositions,
  }) {
    return initStreamPositions?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RecordTrackInitStreamPositionsAction value)?
        initStreamPositions,
    required TResult orElse(),
  }) {
    if (initStreamPositions != null) {
      return initStreamPositions(this);
    }
    return orElse();
  }
}

abstract class _RecordTrackInitStreamPositionsAction
    implements RecordTrackActions {
  const factory _RecordTrackInitStreamPositionsAction(
          {required final void Function(String, String) callback,
          required final AppStrings title,
          required final AppStrings body}) =
      _$RecordTrackInitStreamPositionsActionImpl;

  @override
  void Function(String, String) get callback;
  @override
  AppStrings get title;
  @override
  AppStrings get body;

  /// Create a copy of RecordTrackActions
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RecordTrackInitStreamPositionsActionImplCopyWith<
          _$RecordTrackInitStreamPositionsActionImpl>
      get copyWith => throw _privateConstructorUsedError;
}
