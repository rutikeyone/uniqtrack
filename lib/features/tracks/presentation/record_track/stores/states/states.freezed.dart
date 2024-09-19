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
  TrackRecordStatusState get trackRecordStatusState =>
      throw _privateConstructorUsedError;

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
      UserLocationState locationState,
      TrackRecordStatusState trackRecordStatusState});

  $RecordTrackPermissionStateCopyWith<$Res> get permissionState;
  $UserLocationStateCopyWith<$Res> get locationState;
  $TrackRecordStatusStateCopyWith<$Res> get trackRecordStatusState;
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
    Object? trackRecordStatusState = null,
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
      trackRecordStatusState: null == trackRecordStatusState
          ? _value.trackRecordStatusState
          : trackRecordStatusState // ignore: cast_nullable_to_non_nullable
              as TrackRecordStatusState,
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

  /// Create a copy of RecordTrackState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TrackRecordStatusStateCopyWith<$Res> get trackRecordStatusState {
    return $TrackRecordStatusStateCopyWith<$Res>(_value.trackRecordStatusState,
        (value) {
      return _then(_value.copyWith(trackRecordStatusState: value) as $Val);
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
      UserLocationState locationState,
      TrackRecordStatusState trackRecordStatusState});

  @override
  $RecordTrackPermissionStateCopyWith<$Res> get permissionState;
  @override
  $UserLocationStateCopyWith<$Res> get locationState;
  @override
  $TrackRecordStatusStateCopyWith<$Res> get trackRecordStatusState;
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
    Object? trackRecordStatusState = null,
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
      trackRecordStatusState: null == trackRecordStatusState
          ? _value.trackRecordStatusState
          : trackRecordStatusState // ignore: cast_nullable_to_non_nullable
              as TrackRecordStatusState,
    ));
  }
}

/// @nodoc

class _$RecordTrackStateImpl
    with DiagnosticableTreeMixin
    implements _RecordTrackState {
  const _$RecordTrackStateImpl(
      {required this.permissionState,
      required this.locationState,
      required this.trackRecordStatusState});

  @override
  final RecordTrackPermissionState permissionState;
  @override
  final UserLocationState locationState;
  @override
  final TrackRecordStatusState trackRecordStatusState;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RecordTrackState(permissionState: $permissionState, locationState: $locationState, trackRecordStatusState: $trackRecordStatusState)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RecordTrackState'))
      ..add(DiagnosticsProperty('permissionState', permissionState))
      ..add(DiagnosticsProperty('locationState', locationState))
      ..add(DiagnosticsProperty(
          'trackRecordStatusState', trackRecordStatusState));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecordTrackStateImpl &&
            (identical(other.permissionState, permissionState) ||
                other.permissionState == permissionState) &&
            (identical(other.locationState, locationState) ||
                other.locationState == locationState) &&
            (identical(other.trackRecordStatusState, trackRecordStatusState) ||
                other.trackRecordStatusState == trackRecordStatusState));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, permissionState, locationState, trackRecordStatusState);

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
          required final UserLocationState locationState,
          required final TrackRecordStatusState trackRecordStatusState}) =
      _$RecordTrackStateImpl;

  @override
  RecordTrackPermissionState get permissionState;
  @override
  UserLocationState get locationState;
  @override
  TrackRecordStatusState get trackRecordStatusState;

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
    extends _RecordTrackPermissionPureState with DiagnosticableTreeMixin {
  const _$RecordTrackPermissionPureStateImpl() : super._();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RecordTrackPermissionState.pure()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'RecordTrackPermissionState.pure'));
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
    extends _RecordTrackPermissionPendingState with DiagnosticableTreeMixin {
  const _$RecordTrackPermissionPendingStateImpl() : super._();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RecordTrackPermissionState.pending()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'RecordTrackPermissionState.pending'));
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
    extends _RecordTrackPermissionSuccessState with DiagnosticableTreeMixin {
  const _$RecordTrackPermissionSuccessStateImpl() : super._();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RecordTrackPermissionState.success()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'RecordTrackPermissionState.success'));
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
    extends _RecordTrackPermissionDeniedState with DiagnosticableTreeMixin {
  const _$RecordTrackPermissionDeniedStateImpl() : super._();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RecordTrackPermissionState.denied()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'RecordTrackPermissionState.denied'));
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
    extends _RecordTrackPermissionPermanentlyDeniedState
    with DiagnosticableTreeMixin {
  const _$RecordTrackPermissionPermanentlyDeniedStateImpl() : super._();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RecordTrackPermissionState.permanentlyDenied()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty(
        'type', 'RecordTrackPermissionState.permanentlyDenied'));
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
    required TResult Function(Position currentPosition) mark,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function(Position currentPosition)? mark,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(Position currentPosition)? mark,
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

class _$UserLocationEmptyStateImpl
    with DiagnosticableTreeMixin
    implements _UserLocationEmptyState {
  const _$UserLocationEmptyStateImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserLocationState.empty()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'UserLocationState.empty'));
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
    required TResult Function(Position currentPosition) mark,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function(Position currentPosition)? mark,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(Position currentPosition)? mark,
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
  $Res call({Position currentPosition});

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
  }) {
    return _then(_$UserLocationMarkStateImpl(
      currentPosition: null == currentPosition
          ? _value.currentPosition
          : currentPosition // ignore: cast_nullable_to_non_nullable
              as Position,
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

class _$UserLocationMarkStateImpl
    with DiagnosticableTreeMixin
    implements _UserLocationMarkState {
  const _$UserLocationMarkStateImpl({required this.currentPosition});

  @override
  final Position currentPosition;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserLocationState.mark(currentPosition: $currentPosition)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UserLocationState.mark'))
      ..add(DiagnosticsProperty('currentPosition', currentPosition));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserLocationMarkStateImpl &&
            (identical(other.currentPosition, currentPosition) ||
                other.currentPosition == currentPosition));
  }

  @override
  int get hashCode => Object.hash(runtimeType, currentPosition);

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
    required TResult Function(Position currentPosition) mark,
  }) {
    return mark(currentPosition);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function(Position currentPosition)? mark,
  }) {
    return mark?.call(currentPosition);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(Position currentPosition)? mark,
    required TResult orElse(),
  }) {
    if (mark != null) {
      return mark(currentPosition);
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
      {required final Position currentPosition}) = _$UserLocationMarkStateImpl;

  Position get currentPosition;

  /// Create a copy of UserLocationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserLocationMarkStateImplCopyWith<_$UserLocationMarkStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RecordTrackActions {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(void Function(String, String) callback,
            AppStrings title, AppStrings body)
        initStreamPositions,
    required TResult Function(Position position, double zoom)
        moveToUserPosition,
    required TResult Function() showDetailsRecordingData,
    required TResult Function() hideDetailsRecordingData,
    required TResult Function() navigateBack,
    required TResult Function(Position? position) navigateToAddMemory,
    required TResult Function(Memory memory) navigateToEditMemory,
    required TResult Function(Track track) navigateToAddRecordTrack,
    required TResult Function(Memory memory) showMemoryDetails,
    required TResult Function() hideMemoryDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(void Function(String, String) callback, AppStrings title,
            AppStrings body)?
        initStreamPositions,
    TResult? Function(Position position, double zoom)? moveToUserPosition,
    TResult? Function()? showDetailsRecordingData,
    TResult? Function()? hideDetailsRecordingData,
    TResult? Function()? navigateBack,
    TResult? Function(Position? position)? navigateToAddMemory,
    TResult? Function(Memory memory)? navigateToEditMemory,
    TResult? Function(Track track)? navigateToAddRecordTrack,
    TResult? Function(Memory memory)? showMemoryDetails,
    TResult? Function()? hideMemoryDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(void Function(String, String) callback, AppStrings title,
            AppStrings body)?
        initStreamPositions,
    TResult Function(Position position, double zoom)? moveToUserPosition,
    TResult Function()? showDetailsRecordingData,
    TResult Function()? hideDetailsRecordingData,
    TResult Function()? navigateBack,
    TResult Function(Position? position)? navigateToAddMemory,
    TResult Function(Memory memory)? navigateToEditMemory,
    TResult Function(Track track)? navigateToAddRecordTrack,
    TResult Function(Memory memory)? showMemoryDetails,
    TResult Function()? hideMemoryDetails,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitStreamPositionsAction value)
        initStreamPositions,
    required TResult Function(_UserPositionChangesAction value)
        moveToUserPosition,
    required TResult Function(_ShowDetailsRecordingDataAction value)
        showDetailsRecordingData,
    required TResult Function(_HideDetailsRecordingDataAction value)
        hideDetailsRecordingData,
    required TResult Function(_NavigateBackAction value) navigateBack,
    required TResult Function(_NavigateToAddMemoryAction value)
        navigateToAddMemory,
    required TResult Function(_NavigateToEditMemoryAction value)
        navigateToEditMemory,
    required TResult Function(_NavigateToAddRecordTrackAction value)
        navigateToAddRecordTrack,
    required TResult Function(_ShowMemoryDetailsAction value) showMemoryDetails,
    required TResult Function(_HideMemoryDetailsAction value) hideMemoryDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitStreamPositionsAction value)? initStreamPositions,
    TResult? Function(_UserPositionChangesAction value)? moveToUserPosition,
    TResult? Function(_ShowDetailsRecordingDataAction value)?
        showDetailsRecordingData,
    TResult? Function(_HideDetailsRecordingDataAction value)?
        hideDetailsRecordingData,
    TResult? Function(_NavigateBackAction value)? navigateBack,
    TResult? Function(_NavigateToAddMemoryAction value)? navigateToAddMemory,
    TResult? Function(_NavigateToEditMemoryAction value)? navigateToEditMemory,
    TResult? Function(_NavigateToAddRecordTrackAction value)?
        navigateToAddRecordTrack,
    TResult? Function(_ShowMemoryDetailsAction value)? showMemoryDetails,
    TResult? Function(_HideMemoryDetailsAction value)? hideMemoryDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitStreamPositionsAction value)? initStreamPositions,
    TResult Function(_UserPositionChangesAction value)? moveToUserPosition,
    TResult Function(_ShowDetailsRecordingDataAction value)?
        showDetailsRecordingData,
    TResult Function(_HideDetailsRecordingDataAction value)?
        hideDetailsRecordingData,
    TResult Function(_NavigateBackAction value)? navigateBack,
    TResult Function(_NavigateToAddMemoryAction value)? navigateToAddMemory,
    TResult Function(_NavigateToEditMemoryAction value)? navigateToEditMemory,
    TResult Function(_NavigateToAddRecordTrackAction value)?
        navigateToAddRecordTrack,
    TResult Function(_ShowMemoryDetailsAction value)? showMemoryDetails,
    TResult Function(_HideMemoryDetailsAction value)? hideMemoryDetails,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecordTrackActionsCopyWith<$Res> {
  factory $RecordTrackActionsCopyWith(
          RecordTrackActions value, $Res Function(RecordTrackActions) then) =
      _$RecordTrackActionsCopyWithImpl<$Res, RecordTrackActions>;
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
}

/// @nodoc
abstract class _$$InitStreamPositionsActionImplCopyWith<$Res> {
  factory _$$InitStreamPositionsActionImplCopyWith(
          _$InitStreamPositionsActionImpl value,
          $Res Function(_$InitStreamPositionsActionImpl) then) =
      __$$InitStreamPositionsActionImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {void Function(String, String) callback,
      AppStrings title,
      AppStrings body});

  $AppStringsCopyWith<$Res> get title;
  $AppStringsCopyWith<$Res> get body;
}

/// @nodoc
class __$$InitStreamPositionsActionImplCopyWithImpl<$Res>
    extends _$RecordTrackActionsCopyWithImpl<$Res,
        _$InitStreamPositionsActionImpl>
    implements _$$InitStreamPositionsActionImplCopyWith<$Res> {
  __$$InitStreamPositionsActionImplCopyWithImpl(
      _$InitStreamPositionsActionImpl _value,
      $Res Function(_$InitStreamPositionsActionImpl) _then)
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
    return _then(_$InitStreamPositionsActionImpl(
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

  /// Create a copy of RecordTrackActions
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AppStringsCopyWith<$Res> get title {
    return $AppStringsCopyWith<$Res>(_value.title, (value) {
      return _then(_value.copyWith(title: value));
    });
  }

  /// Create a copy of RecordTrackActions
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AppStringsCopyWith<$Res> get body {
    return $AppStringsCopyWith<$Res>(_value.body, (value) {
      return _then(_value.copyWith(body: value));
    });
  }
}

/// @nodoc

class _$InitStreamPositionsActionImpl
    with DiagnosticableTreeMixin
    implements _InitStreamPositionsAction {
  const _$InitStreamPositionsActionImpl(
      {required this.callback, required this.title, required this.body});

  @override
  final void Function(String, String) callback;
  @override
  final AppStrings title;
  @override
  final AppStrings body;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RecordTrackActions.initStreamPositions(callback: $callback, title: $title, body: $body)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
          DiagnosticsProperty('type', 'RecordTrackActions.initStreamPositions'))
      ..add(DiagnosticsProperty('callback', callback))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('body', body));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitStreamPositionsActionImpl &&
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
  _$$InitStreamPositionsActionImplCopyWith<_$InitStreamPositionsActionImpl>
      get copyWith => __$$InitStreamPositionsActionImplCopyWithImpl<
          _$InitStreamPositionsActionImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(void Function(String, String) callback,
            AppStrings title, AppStrings body)
        initStreamPositions,
    required TResult Function(Position position, double zoom)
        moveToUserPosition,
    required TResult Function() showDetailsRecordingData,
    required TResult Function() hideDetailsRecordingData,
    required TResult Function() navigateBack,
    required TResult Function(Position? position) navigateToAddMemory,
    required TResult Function(Memory memory) navigateToEditMemory,
    required TResult Function(Track track) navigateToAddRecordTrack,
    required TResult Function(Memory memory) showMemoryDetails,
    required TResult Function() hideMemoryDetails,
  }) {
    return initStreamPositions(callback, title, body);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(void Function(String, String) callback, AppStrings title,
            AppStrings body)?
        initStreamPositions,
    TResult? Function(Position position, double zoom)? moveToUserPosition,
    TResult? Function()? showDetailsRecordingData,
    TResult? Function()? hideDetailsRecordingData,
    TResult? Function()? navigateBack,
    TResult? Function(Position? position)? navigateToAddMemory,
    TResult? Function(Memory memory)? navigateToEditMemory,
    TResult? Function(Track track)? navigateToAddRecordTrack,
    TResult? Function(Memory memory)? showMemoryDetails,
    TResult? Function()? hideMemoryDetails,
  }) {
    return initStreamPositions?.call(callback, title, body);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(void Function(String, String) callback, AppStrings title,
            AppStrings body)?
        initStreamPositions,
    TResult Function(Position position, double zoom)? moveToUserPosition,
    TResult Function()? showDetailsRecordingData,
    TResult Function()? hideDetailsRecordingData,
    TResult Function()? navigateBack,
    TResult Function(Position? position)? navigateToAddMemory,
    TResult Function(Memory memory)? navigateToEditMemory,
    TResult Function(Track track)? navigateToAddRecordTrack,
    TResult Function(Memory memory)? showMemoryDetails,
    TResult Function()? hideMemoryDetails,
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
    required TResult Function(_InitStreamPositionsAction value)
        initStreamPositions,
    required TResult Function(_UserPositionChangesAction value)
        moveToUserPosition,
    required TResult Function(_ShowDetailsRecordingDataAction value)
        showDetailsRecordingData,
    required TResult Function(_HideDetailsRecordingDataAction value)
        hideDetailsRecordingData,
    required TResult Function(_NavigateBackAction value) navigateBack,
    required TResult Function(_NavigateToAddMemoryAction value)
        navigateToAddMemory,
    required TResult Function(_NavigateToEditMemoryAction value)
        navigateToEditMemory,
    required TResult Function(_NavigateToAddRecordTrackAction value)
        navigateToAddRecordTrack,
    required TResult Function(_ShowMemoryDetailsAction value) showMemoryDetails,
    required TResult Function(_HideMemoryDetailsAction value) hideMemoryDetails,
  }) {
    return initStreamPositions(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitStreamPositionsAction value)? initStreamPositions,
    TResult? Function(_UserPositionChangesAction value)? moveToUserPosition,
    TResult? Function(_ShowDetailsRecordingDataAction value)?
        showDetailsRecordingData,
    TResult? Function(_HideDetailsRecordingDataAction value)?
        hideDetailsRecordingData,
    TResult? Function(_NavigateBackAction value)? navigateBack,
    TResult? Function(_NavigateToAddMemoryAction value)? navigateToAddMemory,
    TResult? Function(_NavigateToEditMemoryAction value)? navigateToEditMemory,
    TResult? Function(_NavigateToAddRecordTrackAction value)?
        navigateToAddRecordTrack,
    TResult? Function(_ShowMemoryDetailsAction value)? showMemoryDetails,
    TResult? Function(_HideMemoryDetailsAction value)? hideMemoryDetails,
  }) {
    return initStreamPositions?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitStreamPositionsAction value)? initStreamPositions,
    TResult Function(_UserPositionChangesAction value)? moveToUserPosition,
    TResult Function(_ShowDetailsRecordingDataAction value)?
        showDetailsRecordingData,
    TResult Function(_HideDetailsRecordingDataAction value)?
        hideDetailsRecordingData,
    TResult Function(_NavigateBackAction value)? navigateBack,
    TResult Function(_NavigateToAddMemoryAction value)? navigateToAddMemory,
    TResult Function(_NavigateToEditMemoryAction value)? navigateToEditMemory,
    TResult Function(_NavigateToAddRecordTrackAction value)?
        navigateToAddRecordTrack,
    TResult Function(_ShowMemoryDetailsAction value)? showMemoryDetails,
    TResult Function(_HideMemoryDetailsAction value)? hideMemoryDetails,
    required TResult orElse(),
  }) {
    if (initStreamPositions != null) {
      return initStreamPositions(this);
    }
    return orElse();
  }
}

abstract class _InitStreamPositionsAction implements RecordTrackActions {
  const factory _InitStreamPositionsAction(
      {required final void Function(String, String) callback,
      required final AppStrings title,
      required final AppStrings body}) = _$InitStreamPositionsActionImpl;

  void Function(String, String) get callback;
  AppStrings get title;
  AppStrings get body;

  /// Create a copy of RecordTrackActions
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitStreamPositionsActionImplCopyWith<_$InitStreamPositionsActionImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserPositionChangesActionImplCopyWith<$Res> {
  factory _$$UserPositionChangesActionImplCopyWith(
          _$UserPositionChangesActionImpl value,
          $Res Function(_$UserPositionChangesActionImpl) then) =
      __$$UserPositionChangesActionImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Position position, double zoom});

  $PositionCopyWith<$Res> get position;
}

/// @nodoc
class __$$UserPositionChangesActionImplCopyWithImpl<$Res>
    extends _$RecordTrackActionsCopyWithImpl<$Res,
        _$UserPositionChangesActionImpl>
    implements _$$UserPositionChangesActionImplCopyWith<$Res> {
  __$$UserPositionChangesActionImplCopyWithImpl(
      _$UserPositionChangesActionImpl _value,
      $Res Function(_$UserPositionChangesActionImpl) _then)
      : super(_value, _then);

  /// Create a copy of RecordTrackActions
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? position = null,
    Object? zoom = null,
  }) {
    return _then(_$UserPositionChangesActionImpl(
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as Position,
      zoom: null == zoom
          ? _value.zoom
          : zoom // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }

  /// Create a copy of RecordTrackActions
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PositionCopyWith<$Res> get position {
    return $PositionCopyWith<$Res>(_value.position, (value) {
      return _then(_value.copyWith(position: value));
    });
  }
}

/// @nodoc

class _$UserPositionChangesActionImpl
    with DiagnosticableTreeMixin
    implements _UserPositionChangesAction {
  const _$UserPositionChangesActionImpl(
      {required this.position, required this.zoom});

  @override
  final Position position;
  @override
  final double zoom;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RecordTrackActions.moveToUserPosition(position: $position, zoom: $zoom)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
          DiagnosticsProperty('type', 'RecordTrackActions.moveToUserPosition'))
      ..add(DiagnosticsProperty('position', position))
      ..add(DiagnosticsProperty('zoom', zoom));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserPositionChangesActionImpl &&
            (identical(other.position, position) ||
                other.position == position) &&
            (identical(other.zoom, zoom) || other.zoom == zoom));
  }

  @override
  int get hashCode => Object.hash(runtimeType, position, zoom);

  /// Create a copy of RecordTrackActions
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserPositionChangesActionImplCopyWith<_$UserPositionChangesActionImpl>
      get copyWith => __$$UserPositionChangesActionImplCopyWithImpl<
          _$UserPositionChangesActionImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(void Function(String, String) callback,
            AppStrings title, AppStrings body)
        initStreamPositions,
    required TResult Function(Position position, double zoom)
        moveToUserPosition,
    required TResult Function() showDetailsRecordingData,
    required TResult Function() hideDetailsRecordingData,
    required TResult Function() navigateBack,
    required TResult Function(Position? position) navigateToAddMemory,
    required TResult Function(Memory memory) navigateToEditMemory,
    required TResult Function(Track track) navigateToAddRecordTrack,
    required TResult Function(Memory memory) showMemoryDetails,
    required TResult Function() hideMemoryDetails,
  }) {
    return moveToUserPosition(position, zoom);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(void Function(String, String) callback, AppStrings title,
            AppStrings body)?
        initStreamPositions,
    TResult? Function(Position position, double zoom)? moveToUserPosition,
    TResult? Function()? showDetailsRecordingData,
    TResult? Function()? hideDetailsRecordingData,
    TResult? Function()? navigateBack,
    TResult? Function(Position? position)? navigateToAddMemory,
    TResult? Function(Memory memory)? navigateToEditMemory,
    TResult? Function(Track track)? navigateToAddRecordTrack,
    TResult? Function(Memory memory)? showMemoryDetails,
    TResult? Function()? hideMemoryDetails,
  }) {
    return moveToUserPosition?.call(position, zoom);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(void Function(String, String) callback, AppStrings title,
            AppStrings body)?
        initStreamPositions,
    TResult Function(Position position, double zoom)? moveToUserPosition,
    TResult Function()? showDetailsRecordingData,
    TResult Function()? hideDetailsRecordingData,
    TResult Function()? navigateBack,
    TResult Function(Position? position)? navigateToAddMemory,
    TResult Function(Memory memory)? navigateToEditMemory,
    TResult Function(Track track)? navigateToAddRecordTrack,
    TResult Function(Memory memory)? showMemoryDetails,
    TResult Function()? hideMemoryDetails,
    required TResult orElse(),
  }) {
    if (moveToUserPosition != null) {
      return moveToUserPosition(position, zoom);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitStreamPositionsAction value)
        initStreamPositions,
    required TResult Function(_UserPositionChangesAction value)
        moveToUserPosition,
    required TResult Function(_ShowDetailsRecordingDataAction value)
        showDetailsRecordingData,
    required TResult Function(_HideDetailsRecordingDataAction value)
        hideDetailsRecordingData,
    required TResult Function(_NavigateBackAction value) navigateBack,
    required TResult Function(_NavigateToAddMemoryAction value)
        navigateToAddMemory,
    required TResult Function(_NavigateToEditMemoryAction value)
        navigateToEditMemory,
    required TResult Function(_NavigateToAddRecordTrackAction value)
        navigateToAddRecordTrack,
    required TResult Function(_ShowMemoryDetailsAction value) showMemoryDetails,
    required TResult Function(_HideMemoryDetailsAction value) hideMemoryDetails,
  }) {
    return moveToUserPosition(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitStreamPositionsAction value)? initStreamPositions,
    TResult? Function(_UserPositionChangesAction value)? moveToUserPosition,
    TResult? Function(_ShowDetailsRecordingDataAction value)?
        showDetailsRecordingData,
    TResult? Function(_HideDetailsRecordingDataAction value)?
        hideDetailsRecordingData,
    TResult? Function(_NavigateBackAction value)? navigateBack,
    TResult? Function(_NavigateToAddMemoryAction value)? navigateToAddMemory,
    TResult? Function(_NavigateToEditMemoryAction value)? navigateToEditMemory,
    TResult? Function(_NavigateToAddRecordTrackAction value)?
        navigateToAddRecordTrack,
    TResult? Function(_ShowMemoryDetailsAction value)? showMemoryDetails,
    TResult? Function(_HideMemoryDetailsAction value)? hideMemoryDetails,
  }) {
    return moveToUserPosition?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitStreamPositionsAction value)? initStreamPositions,
    TResult Function(_UserPositionChangesAction value)? moveToUserPosition,
    TResult Function(_ShowDetailsRecordingDataAction value)?
        showDetailsRecordingData,
    TResult Function(_HideDetailsRecordingDataAction value)?
        hideDetailsRecordingData,
    TResult Function(_NavigateBackAction value)? navigateBack,
    TResult Function(_NavigateToAddMemoryAction value)? navigateToAddMemory,
    TResult Function(_NavigateToEditMemoryAction value)? navigateToEditMemory,
    TResult Function(_NavigateToAddRecordTrackAction value)?
        navigateToAddRecordTrack,
    TResult Function(_ShowMemoryDetailsAction value)? showMemoryDetails,
    TResult Function(_HideMemoryDetailsAction value)? hideMemoryDetails,
    required TResult orElse(),
  }) {
    if (moveToUserPosition != null) {
      return moveToUserPosition(this);
    }
    return orElse();
  }
}

abstract class _UserPositionChangesAction implements RecordTrackActions {
  const factory _UserPositionChangesAction(
      {required final Position position,
      required final double zoom}) = _$UserPositionChangesActionImpl;

  Position get position;
  double get zoom;

  /// Create a copy of RecordTrackActions
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserPositionChangesActionImplCopyWith<_$UserPositionChangesActionImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ShowDetailsRecordingDataActionImplCopyWith<$Res> {
  factory _$$ShowDetailsRecordingDataActionImplCopyWith(
          _$ShowDetailsRecordingDataActionImpl value,
          $Res Function(_$ShowDetailsRecordingDataActionImpl) then) =
      __$$ShowDetailsRecordingDataActionImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ShowDetailsRecordingDataActionImplCopyWithImpl<$Res>
    extends _$RecordTrackActionsCopyWithImpl<$Res,
        _$ShowDetailsRecordingDataActionImpl>
    implements _$$ShowDetailsRecordingDataActionImplCopyWith<$Res> {
  __$$ShowDetailsRecordingDataActionImplCopyWithImpl(
      _$ShowDetailsRecordingDataActionImpl _value,
      $Res Function(_$ShowDetailsRecordingDataActionImpl) _then)
      : super(_value, _then);

  /// Create a copy of RecordTrackActions
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ShowDetailsRecordingDataActionImpl
    with DiagnosticableTreeMixin
    implements _ShowDetailsRecordingDataAction {
  const _$ShowDetailsRecordingDataActionImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RecordTrackActions.showDetailsRecordingData()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty(
        'type', 'RecordTrackActions.showDetailsRecordingData'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShowDetailsRecordingDataActionImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(void Function(String, String) callback,
            AppStrings title, AppStrings body)
        initStreamPositions,
    required TResult Function(Position position, double zoom)
        moveToUserPosition,
    required TResult Function() showDetailsRecordingData,
    required TResult Function() hideDetailsRecordingData,
    required TResult Function() navigateBack,
    required TResult Function(Position? position) navigateToAddMemory,
    required TResult Function(Memory memory) navigateToEditMemory,
    required TResult Function(Track track) navigateToAddRecordTrack,
    required TResult Function(Memory memory) showMemoryDetails,
    required TResult Function() hideMemoryDetails,
  }) {
    return showDetailsRecordingData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(void Function(String, String) callback, AppStrings title,
            AppStrings body)?
        initStreamPositions,
    TResult? Function(Position position, double zoom)? moveToUserPosition,
    TResult? Function()? showDetailsRecordingData,
    TResult? Function()? hideDetailsRecordingData,
    TResult? Function()? navigateBack,
    TResult? Function(Position? position)? navigateToAddMemory,
    TResult? Function(Memory memory)? navigateToEditMemory,
    TResult? Function(Track track)? navigateToAddRecordTrack,
    TResult? Function(Memory memory)? showMemoryDetails,
    TResult? Function()? hideMemoryDetails,
  }) {
    return showDetailsRecordingData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(void Function(String, String) callback, AppStrings title,
            AppStrings body)?
        initStreamPositions,
    TResult Function(Position position, double zoom)? moveToUserPosition,
    TResult Function()? showDetailsRecordingData,
    TResult Function()? hideDetailsRecordingData,
    TResult Function()? navigateBack,
    TResult Function(Position? position)? navigateToAddMemory,
    TResult Function(Memory memory)? navigateToEditMemory,
    TResult Function(Track track)? navigateToAddRecordTrack,
    TResult Function(Memory memory)? showMemoryDetails,
    TResult Function()? hideMemoryDetails,
    required TResult orElse(),
  }) {
    if (showDetailsRecordingData != null) {
      return showDetailsRecordingData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitStreamPositionsAction value)
        initStreamPositions,
    required TResult Function(_UserPositionChangesAction value)
        moveToUserPosition,
    required TResult Function(_ShowDetailsRecordingDataAction value)
        showDetailsRecordingData,
    required TResult Function(_HideDetailsRecordingDataAction value)
        hideDetailsRecordingData,
    required TResult Function(_NavigateBackAction value) navigateBack,
    required TResult Function(_NavigateToAddMemoryAction value)
        navigateToAddMemory,
    required TResult Function(_NavigateToEditMemoryAction value)
        navigateToEditMemory,
    required TResult Function(_NavigateToAddRecordTrackAction value)
        navigateToAddRecordTrack,
    required TResult Function(_ShowMemoryDetailsAction value) showMemoryDetails,
    required TResult Function(_HideMemoryDetailsAction value) hideMemoryDetails,
  }) {
    return showDetailsRecordingData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitStreamPositionsAction value)? initStreamPositions,
    TResult? Function(_UserPositionChangesAction value)? moveToUserPosition,
    TResult? Function(_ShowDetailsRecordingDataAction value)?
        showDetailsRecordingData,
    TResult? Function(_HideDetailsRecordingDataAction value)?
        hideDetailsRecordingData,
    TResult? Function(_NavigateBackAction value)? navigateBack,
    TResult? Function(_NavigateToAddMemoryAction value)? navigateToAddMemory,
    TResult? Function(_NavigateToEditMemoryAction value)? navigateToEditMemory,
    TResult? Function(_NavigateToAddRecordTrackAction value)?
        navigateToAddRecordTrack,
    TResult? Function(_ShowMemoryDetailsAction value)? showMemoryDetails,
    TResult? Function(_HideMemoryDetailsAction value)? hideMemoryDetails,
  }) {
    return showDetailsRecordingData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitStreamPositionsAction value)? initStreamPositions,
    TResult Function(_UserPositionChangesAction value)? moveToUserPosition,
    TResult Function(_ShowDetailsRecordingDataAction value)?
        showDetailsRecordingData,
    TResult Function(_HideDetailsRecordingDataAction value)?
        hideDetailsRecordingData,
    TResult Function(_NavigateBackAction value)? navigateBack,
    TResult Function(_NavigateToAddMemoryAction value)? navigateToAddMemory,
    TResult Function(_NavigateToEditMemoryAction value)? navigateToEditMemory,
    TResult Function(_NavigateToAddRecordTrackAction value)?
        navigateToAddRecordTrack,
    TResult Function(_ShowMemoryDetailsAction value)? showMemoryDetails,
    TResult Function(_HideMemoryDetailsAction value)? hideMemoryDetails,
    required TResult orElse(),
  }) {
    if (showDetailsRecordingData != null) {
      return showDetailsRecordingData(this);
    }
    return orElse();
  }
}

abstract class _ShowDetailsRecordingDataAction implements RecordTrackActions {
  const factory _ShowDetailsRecordingDataAction() =
      _$ShowDetailsRecordingDataActionImpl;
}

/// @nodoc
abstract class _$$HideDetailsRecordingDataActionImplCopyWith<$Res> {
  factory _$$HideDetailsRecordingDataActionImplCopyWith(
          _$HideDetailsRecordingDataActionImpl value,
          $Res Function(_$HideDetailsRecordingDataActionImpl) then) =
      __$$HideDetailsRecordingDataActionImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HideDetailsRecordingDataActionImplCopyWithImpl<$Res>
    extends _$RecordTrackActionsCopyWithImpl<$Res,
        _$HideDetailsRecordingDataActionImpl>
    implements _$$HideDetailsRecordingDataActionImplCopyWith<$Res> {
  __$$HideDetailsRecordingDataActionImplCopyWithImpl(
      _$HideDetailsRecordingDataActionImpl _value,
      $Res Function(_$HideDetailsRecordingDataActionImpl) _then)
      : super(_value, _then);

  /// Create a copy of RecordTrackActions
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$HideDetailsRecordingDataActionImpl
    with DiagnosticableTreeMixin
    implements _HideDetailsRecordingDataAction {
  const _$HideDetailsRecordingDataActionImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RecordTrackActions.hideDetailsRecordingData()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty(
        'type', 'RecordTrackActions.hideDetailsRecordingData'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HideDetailsRecordingDataActionImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(void Function(String, String) callback,
            AppStrings title, AppStrings body)
        initStreamPositions,
    required TResult Function(Position position, double zoom)
        moveToUserPosition,
    required TResult Function() showDetailsRecordingData,
    required TResult Function() hideDetailsRecordingData,
    required TResult Function() navigateBack,
    required TResult Function(Position? position) navigateToAddMemory,
    required TResult Function(Memory memory) navigateToEditMemory,
    required TResult Function(Track track) navigateToAddRecordTrack,
    required TResult Function(Memory memory) showMemoryDetails,
    required TResult Function() hideMemoryDetails,
  }) {
    return hideDetailsRecordingData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(void Function(String, String) callback, AppStrings title,
            AppStrings body)?
        initStreamPositions,
    TResult? Function(Position position, double zoom)? moveToUserPosition,
    TResult? Function()? showDetailsRecordingData,
    TResult? Function()? hideDetailsRecordingData,
    TResult? Function()? navigateBack,
    TResult? Function(Position? position)? navigateToAddMemory,
    TResult? Function(Memory memory)? navigateToEditMemory,
    TResult? Function(Track track)? navigateToAddRecordTrack,
    TResult? Function(Memory memory)? showMemoryDetails,
    TResult? Function()? hideMemoryDetails,
  }) {
    return hideDetailsRecordingData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(void Function(String, String) callback, AppStrings title,
            AppStrings body)?
        initStreamPositions,
    TResult Function(Position position, double zoom)? moveToUserPosition,
    TResult Function()? showDetailsRecordingData,
    TResult Function()? hideDetailsRecordingData,
    TResult Function()? navigateBack,
    TResult Function(Position? position)? navigateToAddMemory,
    TResult Function(Memory memory)? navigateToEditMemory,
    TResult Function(Track track)? navigateToAddRecordTrack,
    TResult Function(Memory memory)? showMemoryDetails,
    TResult Function()? hideMemoryDetails,
    required TResult orElse(),
  }) {
    if (hideDetailsRecordingData != null) {
      return hideDetailsRecordingData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitStreamPositionsAction value)
        initStreamPositions,
    required TResult Function(_UserPositionChangesAction value)
        moveToUserPosition,
    required TResult Function(_ShowDetailsRecordingDataAction value)
        showDetailsRecordingData,
    required TResult Function(_HideDetailsRecordingDataAction value)
        hideDetailsRecordingData,
    required TResult Function(_NavigateBackAction value) navigateBack,
    required TResult Function(_NavigateToAddMemoryAction value)
        navigateToAddMemory,
    required TResult Function(_NavigateToEditMemoryAction value)
        navigateToEditMemory,
    required TResult Function(_NavigateToAddRecordTrackAction value)
        navigateToAddRecordTrack,
    required TResult Function(_ShowMemoryDetailsAction value) showMemoryDetails,
    required TResult Function(_HideMemoryDetailsAction value) hideMemoryDetails,
  }) {
    return hideDetailsRecordingData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitStreamPositionsAction value)? initStreamPositions,
    TResult? Function(_UserPositionChangesAction value)? moveToUserPosition,
    TResult? Function(_ShowDetailsRecordingDataAction value)?
        showDetailsRecordingData,
    TResult? Function(_HideDetailsRecordingDataAction value)?
        hideDetailsRecordingData,
    TResult? Function(_NavigateBackAction value)? navigateBack,
    TResult? Function(_NavigateToAddMemoryAction value)? navigateToAddMemory,
    TResult? Function(_NavigateToEditMemoryAction value)? navigateToEditMemory,
    TResult? Function(_NavigateToAddRecordTrackAction value)?
        navigateToAddRecordTrack,
    TResult? Function(_ShowMemoryDetailsAction value)? showMemoryDetails,
    TResult? Function(_HideMemoryDetailsAction value)? hideMemoryDetails,
  }) {
    return hideDetailsRecordingData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitStreamPositionsAction value)? initStreamPositions,
    TResult Function(_UserPositionChangesAction value)? moveToUserPosition,
    TResult Function(_ShowDetailsRecordingDataAction value)?
        showDetailsRecordingData,
    TResult Function(_HideDetailsRecordingDataAction value)?
        hideDetailsRecordingData,
    TResult Function(_NavigateBackAction value)? navigateBack,
    TResult Function(_NavigateToAddMemoryAction value)? navigateToAddMemory,
    TResult Function(_NavigateToEditMemoryAction value)? navigateToEditMemory,
    TResult Function(_NavigateToAddRecordTrackAction value)?
        navigateToAddRecordTrack,
    TResult Function(_ShowMemoryDetailsAction value)? showMemoryDetails,
    TResult Function(_HideMemoryDetailsAction value)? hideMemoryDetails,
    required TResult orElse(),
  }) {
    if (hideDetailsRecordingData != null) {
      return hideDetailsRecordingData(this);
    }
    return orElse();
  }
}

abstract class _HideDetailsRecordingDataAction implements RecordTrackActions {
  const factory _HideDetailsRecordingDataAction() =
      _$HideDetailsRecordingDataActionImpl;
}

/// @nodoc
abstract class _$$NavigateBackActionImplCopyWith<$Res> {
  factory _$$NavigateBackActionImplCopyWith(_$NavigateBackActionImpl value,
          $Res Function(_$NavigateBackActionImpl) then) =
      __$$NavigateBackActionImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NavigateBackActionImplCopyWithImpl<$Res>
    extends _$RecordTrackActionsCopyWithImpl<$Res, _$NavigateBackActionImpl>
    implements _$$NavigateBackActionImplCopyWith<$Res> {
  __$$NavigateBackActionImplCopyWithImpl(_$NavigateBackActionImpl _value,
      $Res Function(_$NavigateBackActionImpl) _then)
      : super(_value, _then);

  /// Create a copy of RecordTrackActions
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$NavigateBackActionImpl
    with DiagnosticableTreeMixin
    implements _NavigateBackAction {
  const _$NavigateBackActionImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RecordTrackActions.navigateBack()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'RecordTrackActions.navigateBack'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NavigateBackActionImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(void Function(String, String) callback,
            AppStrings title, AppStrings body)
        initStreamPositions,
    required TResult Function(Position position, double zoom)
        moveToUserPosition,
    required TResult Function() showDetailsRecordingData,
    required TResult Function() hideDetailsRecordingData,
    required TResult Function() navigateBack,
    required TResult Function(Position? position) navigateToAddMemory,
    required TResult Function(Memory memory) navigateToEditMemory,
    required TResult Function(Track track) navigateToAddRecordTrack,
    required TResult Function(Memory memory) showMemoryDetails,
    required TResult Function() hideMemoryDetails,
  }) {
    return navigateBack();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(void Function(String, String) callback, AppStrings title,
            AppStrings body)?
        initStreamPositions,
    TResult? Function(Position position, double zoom)? moveToUserPosition,
    TResult? Function()? showDetailsRecordingData,
    TResult? Function()? hideDetailsRecordingData,
    TResult? Function()? navigateBack,
    TResult? Function(Position? position)? navigateToAddMemory,
    TResult? Function(Memory memory)? navigateToEditMemory,
    TResult? Function(Track track)? navigateToAddRecordTrack,
    TResult? Function(Memory memory)? showMemoryDetails,
    TResult? Function()? hideMemoryDetails,
  }) {
    return navigateBack?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(void Function(String, String) callback, AppStrings title,
            AppStrings body)?
        initStreamPositions,
    TResult Function(Position position, double zoom)? moveToUserPosition,
    TResult Function()? showDetailsRecordingData,
    TResult Function()? hideDetailsRecordingData,
    TResult Function()? navigateBack,
    TResult Function(Position? position)? navigateToAddMemory,
    TResult Function(Memory memory)? navigateToEditMemory,
    TResult Function(Track track)? navigateToAddRecordTrack,
    TResult Function(Memory memory)? showMemoryDetails,
    TResult Function()? hideMemoryDetails,
    required TResult orElse(),
  }) {
    if (navigateBack != null) {
      return navigateBack();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitStreamPositionsAction value)
        initStreamPositions,
    required TResult Function(_UserPositionChangesAction value)
        moveToUserPosition,
    required TResult Function(_ShowDetailsRecordingDataAction value)
        showDetailsRecordingData,
    required TResult Function(_HideDetailsRecordingDataAction value)
        hideDetailsRecordingData,
    required TResult Function(_NavigateBackAction value) navigateBack,
    required TResult Function(_NavigateToAddMemoryAction value)
        navigateToAddMemory,
    required TResult Function(_NavigateToEditMemoryAction value)
        navigateToEditMemory,
    required TResult Function(_NavigateToAddRecordTrackAction value)
        navigateToAddRecordTrack,
    required TResult Function(_ShowMemoryDetailsAction value) showMemoryDetails,
    required TResult Function(_HideMemoryDetailsAction value) hideMemoryDetails,
  }) {
    return navigateBack(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitStreamPositionsAction value)? initStreamPositions,
    TResult? Function(_UserPositionChangesAction value)? moveToUserPosition,
    TResult? Function(_ShowDetailsRecordingDataAction value)?
        showDetailsRecordingData,
    TResult? Function(_HideDetailsRecordingDataAction value)?
        hideDetailsRecordingData,
    TResult? Function(_NavigateBackAction value)? navigateBack,
    TResult? Function(_NavigateToAddMemoryAction value)? navigateToAddMemory,
    TResult? Function(_NavigateToEditMemoryAction value)? navigateToEditMemory,
    TResult? Function(_NavigateToAddRecordTrackAction value)?
        navigateToAddRecordTrack,
    TResult? Function(_ShowMemoryDetailsAction value)? showMemoryDetails,
    TResult? Function(_HideMemoryDetailsAction value)? hideMemoryDetails,
  }) {
    return navigateBack?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitStreamPositionsAction value)? initStreamPositions,
    TResult Function(_UserPositionChangesAction value)? moveToUserPosition,
    TResult Function(_ShowDetailsRecordingDataAction value)?
        showDetailsRecordingData,
    TResult Function(_HideDetailsRecordingDataAction value)?
        hideDetailsRecordingData,
    TResult Function(_NavigateBackAction value)? navigateBack,
    TResult Function(_NavigateToAddMemoryAction value)? navigateToAddMemory,
    TResult Function(_NavigateToEditMemoryAction value)? navigateToEditMemory,
    TResult Function(_NavigateToAddRecordTrackAction value)?
        navigateToAddRecordTrack,
    TResult Function(_ShowMemoryDetailsAction value)? showMemoryDetails,
    TResult Function(_HideMemoryDetailsAction value)? hideMemoryDetails,
    required TResult orElse(),
  }) {
    if (navigateBack != null) {
      return navigateBack(this);
    }
    return orElse();
  }
}

abstract class _NavigateBackAction implements RecordTrackActions {
  const factory _NavigateBackAction() = _$NavigateBackActionImpl;
}

/// @nodoc
abstract class _$$NavigateToAddMemoryActionImplCopyWith<$Res> {
  factory _$$NavigateToAddMemoryActionImplCopyWith(
          _$NavigateToAddMemoryActionImpl value,
          $Res Function(_$NavigateToAddMemoryActionImpl) then) =
      __$$NavigateToAddMemoryActionImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Position? position});

  $PositionCopyWith<$Res>? get position;
}

/// @nodoc
class __$$NavigateToAddMemoryActionImplCopyWithImpl<$Res>
    extends _$RecordTrackActionsCopyWithImpl<$Res,
        _$NavigateToAddMemoryActionImpl>
    implements _$$NavigateToAddMemoryActionImplCopyWith<$Res> {
  __$$NavigateToAddMemoryActionImplCopyWithImpl(
      _$NavigateToAddMemoryActionImpl _value,
      $Res Function(_$NavigateToAddMemoryActionImpl) _then)
      : super(_value, _then);

  /// Create a copy of RecordTrackActions
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? position = freezed,
  }) {
    return _then(_$NavigateToAddMemoryActionImpl(
      position: freezed == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as Position?,
    ));
  }

  /// Create a copy of RecordTrackActions
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PositionCopyWith<$Res>? get position {
    if (_value.position == null) {
      return null;
    }

    return $PositionCopyWith<$Res>(_value.position!, (value) {
      return _then(_value.copyWith(position: value));
    });
  }
}

/// @nodoc

class _$NavigateToAddMemoryActionImpl
    with DiagnosticableTreeMixin
    implements _NavigateToAddMemoryAction {
  const _$NavigateToAddMemoryActionImpl({required this.position});

  @override
  final Position? position;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RecordTrackActions.navigateToAddMemory(position: $position)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
          DiagnosticsProperty('type', 'RecordTrackActions.navigateToAddMemory'))
      ..add(DiagnosticsProperty('position', position));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NavigateToAddMemoryActionImpl &&
            (identical(other.position, position) ||
                other.position == position));
  }

  @override
  int get hashCode => Object.hash(runtimeType, position);

  /// Create a copy of RecordTrackActions
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NavigateToAddMemoryActionImplCopyWith<_$NavigateToAddMemoryActionImpl>
      get copyWith => __$$NavigateToAddMemoryActionImplCopyWithImpl<
          _$NavigateToAddMemoryActionImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(void Function(String, String) callback,
            AppStrings title, AppStrings body)
        initStreamPositions,
    required TResult Function(Position position, double zoom)
        moveToUserPosition,
    required TResult Function() showDetailsRecordingData,
    required TResult Function() hideDetailsRecordingData,
    required TResult Function() navigateBack,
    required TResult Function(Position? position) navigateToAddMemory,
    required TResult Function(Memory memory) navigateToEditMemory,
    required TResult Function(Track track) navigateToAddRecordTrack,
    required TResult Function(Memory memory) showMemoryDetails,
    required TResult Function() hideMemoryDetails,
  }) {
    return navigateToAddMemory(position);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(void Function(String, String) callback, AppStrings title,
            AppStrings body)?
        initStreamPositions,
    TResult? Function(Position position, double zoom)? moveToUserPosition,
    TResult? Function()? showDetailsRecordingData,
    TResult? Function()? hideDetailsRecordingData,
    TResult? Function()? navigateBack,
    TResult? Function(Position? position)? navigateToAddMemory,
    TResult? Function(Memory memory)? navigateToEditMemory,
    TResult? Function(Track track)? navigateToAddRecordTrack,
    TResult? Function(Memory memory)? showMemoryDetails,
    TResult? Function()? hideMemoryDetails,
  }) {
    return navigateToAddMemory?.call(position);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(void Function(String, String) callback, AppStrings title,
            AppStrings body)?
        initStreamPositions,
    TResult Function(Position position, double zoom)? moveToUserPosition,
    TResult Function()? showDetailsRecordingData,
    TResult Function()? hideDetailsRecordingData,
    TResult Function()? navigateBack,
    TResult Function(Position? position)? navigateToAddMemory,
    TResult Function(Memory memory)? navigateToEditMemory,
    TResult Function(Track track)? navigateToAddRecordTrack,
    TResult Function(Memory memory)? showMemoryDetails,
    TResult Function()? hideMemoryDetails,
    required TResult orElse(),
  }) {
    if (navigateToAddMemory != null) {
      return navigateToAddMemory(position);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitStreamPositionsAction value)
        initStreamPositions,
    required TResult Function(_UserPositionChangesAction value)
        moveToUserPosition,
    required TResult Function(_ShowDetailsRecordingDataAction value)
        showDetailsRecordingData,
    required TResult Function(_HideDetailsRecordingDataAction value)
        hideDetailsRecordingData,
    required TResult Function(_NavigateBackAction value) navigateBack,
    required TResult Function(_NavigateToAddMemoryAction value)
        navigateToAddMemory,
    required TResult Function(_NavigateToEditMemoryAction value)
        navigateToEditMemory,
    required TResult Function(_NavigateToAddRecordTrackAction value)
        navigateToAddRecordTrack,
    required TResult Function(_ShowMemoryDetailsAction value) showMemoryDetails,
    required TResult Function(_HideMemoryDetailsAction value) hideMemoryDetails,
  }) {
    return navigateToAddMemory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitStreamPositionsAction value)? initStreamPositions,
    TResult? Function(_UserPositionChangesAction value)? moveToUserPosition,
    TResult? Function(_ShowDetailsRecordingDataAction value)?
        showDetailsRecordingData,
    TResult? Function(_HideDetailsRecordingDataAction value)?
        hideDetailsRecordingData,
    TResult? Function(_NavigateBackAction value)? navigateBack,
    TResult? Function(_NavigateToAddMemoryAction value)? navigateToAddMemory,
    TResult? Function(_NavigateToEditMemoryAction value)? navigateToEditMemory,
    TResult? Function(_NavigateToAddRecordTrackAction value)?
        navigateToAddRecordTrack,
    TResult? Function(_ShowMemoryDetailsAction value)? showMemoryDetails,
    TResult? Function(_HideMemoryDetailsAction value)? hideMemoryDetails,
  }) {
    return navigateToAddMemory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitStreamPositionsAction value)? initStreamPositions,
    TResult Function(_UserPositionChangesAction value)? moveToUserPosition,
    TResult Function(_ShowDetailsRecordingDataAction value)?
        showDetailsRecordingData,
    TResult Function(_HideDetailsRecordingDataAction value)?
        hideDetailsRecordingData,
    TResult Function(_NavigateBackAction value)? navigateBack,
    TResult Function(_NavigateToAddMemoryAction value)? navigateToAddMemory,
    TResult Function(_NavigateToEditMemoryAction value)? navigateToEditMemory,
    TResult Function(_NavigateToAddRecordTrackAction value)?
        navigateToAddRecordTrack,
    TResult Function(_ShowMemoryDetailsAction value)? showMemoryDetails,
    TResult Function(_HideMemoryDetailsAction value)? hideMemoryDetails,
    required TResult orElse(),
  }) {
    if (navigateToAddMemory != null) {
      return navigateToAddMemory(this);
    }
    return orElse();
  }
}

abstract class _NavigateToAddMemoryAction implements RecordTrackActions {
  const factory _NavigateToAddMemoryAction(
      {required final Position? position}) = _$NavigateToAddMemoryActionImpl;

  Position? get position;

  /// Create a copy of RecordTrackActions
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NavigateToAddMemoryActionImplCopyWith<_$NavigateToAddMemoryActionImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NavigateToEditMemoryActionImplCopyWith<$Res> {
  factory _$$NavigateToEditMemoryActionImplCopyWith(
          _$NavigateToEditMemoryActionImpl value,
          $Res Function(_$NavigateToEditMemoryActionImpl) then) =
      __$$NavigateToEditMemoryActionImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Memory memory});

  $MemoryCopyWith<$Res> get memory;
}

/// @nodoc
class __$$NavigateToEditMemoryActionImplCopyWithImpl<$Res>
    extends _$RecordTrackActionsCopyWithImpl<$Res,
        _$NavigateToEditMemoryActionImpl>
    implements _$$NavigateToEditMemoryActionImplCopyWith<$Res> {
  __$$NavigateToEditMemoryActionImplCopyWithImpl(
      _$NavigateToEditMemoryActionImpl _value,
      $Res Function(_$NavigateToEditMemoryActionImpl) _then)
      : super(_value, _then);

  /// Create a copy of RecordTrackActions
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? memory = null,
  }) {
    return _then(_$NavigateToEditMemoryActionImpl(
      memory: null == memory
          ? _value.memory
          : memory // ignore: cast_nullable_to_non_nullable
              as Memory,
    ));
  }

  /// Create a copy of RecordTrackActions
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MemoryCopyWith<$Res> get memory {
    return $MemoryCopyWith<$Res>(_value.memory, (value) {
      return _then(_value.copyWith(memory: value));
    });
  }
}

/// @nodoc

class _$NavigateToEditMemoryActionImpl
    with DiagnosticableTreeMixin
    implements _NavigateToEditMemoryAction {
  const _$NavigateToEditMemoryActionImpl({required this.memory});

  @override
  final Memory memory;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RecordTrackActions.navigateToEditMemory(memory: $memory)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'RecordTrackActions.navigateToEditMemory'))
      ..add(DiagnosticsProperty('memory', memory));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NavigateToEditMemoryActionImpl &&
            (identical(other.memory, memory) || other.memory == memory));
  }

  @override
  int get hashCode => Object.hash(runtimeType, memory);

  /// Create a copy of RecordTrackActions
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NavigateToEditMemoryActionImplCopyWith<_$NavigateToEditMemoryActionImpl>
      get copyWith => __$$NavigateToEditMemoryActionImplCopyWithImpl<
          _$NavigateToEditMemoryActionImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(void Function(String, String) callback,
            AppStrings title, AppStrings body)
        initStreamPositions,
    required TResult Function(Position position, double zoom)
        moveToUserPosition,
    required TResult Function() showDetailsRecordingData,
    required TResult Function() hideDetailsRecordingData,
    required TResult Function() navigateBack,
    required TResult Function(Position? position) navigateToAddMemory,
    required TResult Function(Memory memory) navigateToEditMemory,
    required TResult Function(Track track) navigateToAddRecordTrack,
    required TResult Function(Memory memory) showMemoryDetails,
    required TResult Function() hideMemoryDetails,
  }) {
    return navigateToEditMemory(memory);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(void Function(String, String) callback, AppStrings title,
            AppStrings body)?
        initStreamPositions,
    TResult? Function(Position position, double zoom)? moveToUserPosition,
    TResult? Function()? showDetailsRecordingData,
    TResult? Function()? hideDetailsRecordingData,
    TResult? Function()? navigateBack,
    TResult? Function(Position? position)? navigateToAddMemory,
    TResult? Function(Memory memory)? navigateToEditMemory,
    TResult? Function(Track track)? navigateToAddRecordTrack,
    TResult? Function(Memory memory)? showMemoryDetails,
    TResult? Function()? hideMemoryDetails,
  }) {
    return navigateToEditMemory?.call(memory);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(void Function(String, String) callback, AppStrings title,
            AppStrings body)?
        initStreamPositions,
    TResult Function(Position position, double zoom)? moveToUserPosition,
    TResult Function()? showDetailsRecordingData,
    TResult Function()? hideDetailsRecordingData,
    TResult Function()? navigateBack,
    TResult Function(Position? position)? navigateToAddMemory,
    TResult Function(Memory memory)? navigateToEditMemory,
    TResult Function(Track track)? navigateToAddRecordTrack,
    TResult Function(Memory memory)? showMemoryDetails,
    TResult Function()? hideMemoryDetails,
    required TResult orElse(),
  }) {
    if (navigateToEditMemory != null) {
      return navigateToEditMemory(memory);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitStreamPositionsAction value)
        initStreamPositions,
    required TResult Function(_UserPositionChangesAction value)
        moveToUserPosition,
    required TResult Function(_ShowDetailsRecordingDataAction value)
        showDetailsRecordingData,
    required TResult Function(_HideDetailsRecordingDataAction value)
        hideDetailsRecordingData,
    required TResult Function(_NavigateBackAction value) navigateBack,
    required TResult Function(_NavigateToAddMemoryAction value)
        navigateToAddMemory,
    required TResult Function(_NavigateToEditMemoryAction value)
        navigateToEditMemory,
    required TResult Function(_NavigateToAddRecordTrackAction value)
        navigateToAddRecordTrack,
    required TResult Function(_ShowMemoryDetailsAction value) showMemoryDetails,
    required TResult Function(_HideMemoryDetailsAction value) hideMemoryDetails,
  }) {
    return navigateToEditMemory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitStreamPositionsAction value)? initStreamPositions,
    TResult? Function(_UserPositionChangesAction value)? moveToUserPosition,
    TResult? Function(_ShowDetailsRecordingDataAction value)?
        showDetailsRecordingData,
    TResult? Function(_HideDetailsRecordingDataAction value)?
        hideDetailsRecordingData,
    TResult? Function(_NavigateBackAction value)? navigateBack,
    TResult? Function(_NavigateToAddMemoryAction value)? navigateToAddMemory,
    TResult? Function(_NavigateToEditMemoryAction value)? navigateToEditMemory,
    TResult? Function(_NavigateToAddRecordTrackAction value)?
        navigateToAddRecordTrack,
    TResult? Function(_ShowMemoryDetailsAction value)? showMemoryDetails,
    TResult? Function(_HideMemoryDetailsAction value)? hideMemoryDetails,
  }) {
    return navigateToEditMemory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitStreamPositionsAction value)? initStreamPositions,
    TResult Function(_UserPositionChangesAction value)? moveToUserPosition,
    TResult Function(_ShowDetailsRecordingDataAction value)?
        showDetailsRecordingData,
    TResult Function(_HideDetailsRecordingDataAction value)?
        hideDetailsRecordingData,
    TResult Function(_NavigateBackAction value)? navigateBack,
    TResult Function(_NavigateToAddMemoryAction value)? navigateToAddMemory,
    TResult Function(_NavigateToEditMemoryAction value)? navigateToEditMemory,
    TResult Function(_NavigateToAddRecordTrackAction value)?
        navigateToAddRecordTrack,
    TResult Function(_ShowMemoryDetailsAction value)? showMemoryDetails,
    TResult Function(_HideMemoryDetailsAction value)? hideMemoryDetails,
    required TResult orElse(),
  }) {
    if (navigateToEditMemory != null) {
      return navigateToEditMemory(this);
    }
    return orElse();
  }
}

abstract class _NavigateToEditMemoryAction implements RecordTrackActions {
  const factory _NavigateToEditMemoryAction({required final Memory memory}) =
      _$NavigateToEditMemoryActionImpl;

  Memory get memory;

  /// Create a copy of RecordTrackActions
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NavigateToEditMemoryActionImplCopyWith<_$NavigateToEditMemoryActionImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NavigateToAddRecordTrackActionImplCopyWith<$Res> {
  factory _$$NavigateToAddRecordTrackActionImplCopyWith(
          _$NavigateToAddRecordTrackActionImpl value,
          $Res Function(_$NavigateToAddRecordTrackActionImpl) then) =
      __$$NavigateToAddRecordTrackActionImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Track track});

  $TrackCopyWith<$Res> get track;
}

/// @nodoc
class __$$NavigateToAddRecordTrackActionImplCopyWithImpl<$Res>
    extends _$RecordTrackActionsCopyWithImpl<$Res,
        _$NavigateToAddRecordTrackActionImpl>
    implements _$$NavigateToAddRecordTrackActionImplCopyWith<$Res> {
  __$$NavigateToAddRecordTrackActionImplCopyWithImpl(
      _$NavigateToAddRecordTrackActionImpl _value,
      $Res Function(_$NavigateToAddRecordTrackActionImpl) _then)
      : super(_value, _then);

  /// Create a copy of RecordTrackActions
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? track = null,
  }) {
    return _then(_$NavigateToAddRecordTrackActionImpl(
      track: null == track
          ? _value.track
          : track // ignore: cast_nullable_to_non_nullable
              as Track,
    ));
  }

  /// Create a copy of RecordTrackActions
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TrackCopyWith<$Res> get track {
    return $TrackCopyWith<$Res>(_value.track, (value) {
      return _then(_value.copyWith(track: value));
    });
  }
}

/// @nodoc

class _$NavigateToAddRecordTrackActionImpl
    with DiagnosticableTreeMixin
    implements _NavigateToAddRecordTrackAction {
  const _$NavigateToAddRecordTrackActionImpl({required this.track});

  @override
  final Track track;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RecordTrackActions.navigateToAddRecordTrack(track: $track)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'RecordTrackActions.navigateToAddRecordTrack'))
      ..add(DiagnosticsProperty('track', track));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NavigateToAddRecordTrackActionImpl &&
            (identical(other.track, track) || other.track == track));
  }

  @override
  int get hashCode => Object.hash(runtimeType, track);

  /// Create a copy of RecordTrackActions
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NavigateToAddRecordTrackActionImplCopyWith<
          _$NavigateToAddRecordTrackActionImpl>
      get copyWith => __$$NavigateToAddRecordTrackActionImplCopyWithImpl<
          _$NavigateToAddRecordTrackActionImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(void Function(String, String) callback,
            AppStrings title, AppStrings body)
        initStreamPositions,
    required TResult Function(Position position, double zoom)
        moveToUserPosition,
    required TResult Function() showDetailsRecordingData,
    required TResult Function() hideDetailsRecordingData,
    required TResult Function() navigateBack,
    required TResult Function(Position? position) navigateToAddMemory,
    required TResult Function(Memory memory) navigateToEditMemory,
    required TResult Function(Track track) navigateToAddRecordTrack,
    required TResult Function(Memory memory) showMemoryDetails,
    required TResult Function() hideMemoryDetails,
  }) {
    return navigateToAddRecordTrack(track);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(void Function(String, String) callback, AppStrings title,
            AppStrings body)?
        initStreamPositions,
    TResult? Function(Position position, double zoom)? moveToUserPosition,
    TResult? Function()? showDetailsRecordingData,
    TResult? Function()? hideDetailsRecordingData,
    TResult? Function()? navigateBack,
    TResult? Function(Position? position)? navigateToAddMemory,
    TResult? Function(Memory memory)? navigateToEditMemory,
    TResult? Function(Track track)? navigateToAddRecordTrack,
    TResult? Function(Memory memory)? showMemoryDetails,
    TResult? Function()? hideMemoryDetails,
  }) {
    return navigateToAddRecordTrack?.call(track);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(void Function(String, String) callback, AppStrings title,
            AppStrings body)?
        initStreamPositions,
    TResult Function(Position position, double zoom)? moveToUserPosition,
    TResult Function()? showDetailsRecordingData,
    TResult Function()? hideDetailsRecordingData,
    TResult Function()? navigateBack,
    TResult Function(Position? position)? navigateToAddMemory,
    TResult Function(Memory memory)? navigateToEditMemory,
    TResult Function(Track track)? navigateToAddRecordTrack,
    TResult Function(Memory memory)? showMemoryDetails,
    TResult Function()? hideMemoryDetails,
    required TResult orElse(),
  }) {
    if (navigateToAddRecordTrack != null) {
      return navigateToAddRecordTrack(track);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitStreamPositionsAction value)
        initStreamPositions,
    required TResult Function(_UserPositionChangesAction value)
        moveToUserPosition,
    required TResult Function(_ShowDetailsRecordingDataAction value)
        showDetailsRecordingData,
    required TResult Function(_HideDetailsRecordingDataAction value)
        hideDetailsRecordingData,
    required TResult Function(_NavigateBackAction value) navigateBack,
    required TResult Function(_NavigateToAddMemoryAction value)
        navigateToAddMemory,
    required TResult Function(_NavigateToEditMemoryAction value)
        navigateToEditMemory,
    required TResult Function(_NavigateToAddRecordTrackAction value)
        navigateToAddRecordTrack,
    required TResult Function(_ShowMemoryDetailsAction value) showMemoryDetails,
    required TResult Function(_HideMemoryDetailsAction value) hideMemoryDetails,
  }) {
    return navigateToAddRecordTrack(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitStreamPositionsAction value)? initStreamPositions,
    TResult? Function(_UserPositionChangesAction value)? moveToUserPosition,
    TResult? Function(_ShowDetailsRecordingDataAction value)?
        showDetailsRecordingData,
    TResult? Function(_HideDetailsRecordingDataAction value)?
        hideDetailsRecordingData,
    TResult? Function(_NavigateBackAction value)? navigateBack,
    TResult? Function(_NavigateToAddMemoryAction value)? navigateToAddMemory,
    TResult? Function(_NavigateToEditMemoryAction value)? navigateToEditMemory,
    TResult? Function(_NavigateToAddRecordTrackAction value)?
        navigateToAddRecordTrack,
    TResult? Function(_ShowMemoryDetailsAction value)? showMemoryDetails,
    TResult? Function(_HideMemoryDetailsAction value)? hideMemoryDetails,
  }) {
    return navigateToAddRecordTrack?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitStreamPositionsAction value)? initStreamPositions,
    TResult Function(_UserPositionChangesAction value)? moveToUserPosition,
    TResult Function(_ShowDetailsRecordingDataAction value)?
        showDetailsRecordingData,
    TResult Function(_HideDetailsRecordingDataAction value)?
        hideDetailsRecordingData,
    TResult Function(_NavigateBackAction value)? navigateBack,
    TResult Function(_NavigateToAddMemoryAction value)? navigateToAddMemory,
    TResult Function(_NavigateToEditMemoryAction value)? navigateToEditMemory,
    TResult Function(_NavigateToAddRecordTrackAction value)?
        navigateToAddRecordTrack,
    TResult Function(_ShowMemoryDetailsAction value)? showMemoryDetails,
    TResult Function(_HideMemoryDetailsAction value)? hideMemoryDetails,
    required TResult orElse(),
  }) {
    if (navigateToAddRecordTrack != null) {
      return navigateToAddRecordTrack(this);
    }
    return orElse();
  }
}

abstract class _NavigateToAddRecordTrackAction implements RecordTrackActions {
  const factory _NavigateToAddRecordTrackAction({required final Track track}) =
      _$NavigateToAddRecordTrackActionImpl;

  Track get track;

  /// Create a copy of RecordTrackActions
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NavigateToAddRecordTrackActionImplCopyWith<
          _$NavigateToAddRecordTrackActionImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ShowMemoryDetailsActionImplCopyWith<$Res> {
  factory _$$ShowMemoryDetailsActionImplCopyWith(
          _$ShowMemoryDetailsActionImpl value,
          $Res Function(_$ShowMemoryDetailsActionImpl) then) =
      __$$ShowMemoryDetailsActionImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Memory memory});

  $MemoryCopyWith<$Res> get memory;
}

/// @nodoc
class __$$ShowMemoryDetailsActionImplCopyWithImpl<$Res>
    extends _$RecordTrackActionsCopyWithImpl<$Res,
        _$ShowMemoryDetailsActionImpl>
    implements _$$ShowMemoryDetailsActionImplCopyWith<$Res> {
  __$$ShowMemoryDetailsActionImplCopyWithImpl(
      _$ShowMemoryDetailsActionImpl _value,
      $Res Function(_$ShowMemoryDetailsActionImpl) _then)
      : super(_value, _then);

  /// Create a copy of RecordTrackActions
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? memory = null,
  }) {
    return _then(_$ShowMemoryDetailsActionImpl(
      memory: null == memory
          ? _value.memory
          : memory // ignore: cast_nullable_to_non_nullable
              as Memory,
    ));
  }

  /// Create a copy of RecordTrackActions
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MemoryCopyWith<$Res> get memory {
    return $MemoryCopyWith<$Res>(_value.memory, (value) {
      return _then(_value.copyWith(memory: value));
    });
  }
}

/// @nodoc

class _$ShowMemoryDetailsActionImpl
    with DiagnosticableTreeMixin
    implements _ShowMemoryDetailsAction {
  const _$ShowMemoryDetailsActionImpl({required this.memory});

  @override
  final Memory memory;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RecordTrackActions.showMemoryDetails(memory: $memory)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RecordTrackActions.showMemoryDetails'))
      ..add(DiagnosticsProperty('memory', memory));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShowMemoryDetailsActionImpl &&
            (identical(other.memory, memory) || other.memory == memory));
  }

  @override
  int get hashCode => Object.hash(runtimeType, memory);

  /// Create a copy of RecordTrackActions
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ShowMemoryDetailsActionImplCopyWith<_$ShowMemoryDetailsActionImpl>
      get copyWith => __$$ShowMemoryDetailsActionImplCopyWithImpl<
          _$ShowMemoryDetailsActionImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(void Function(String, String) callback,
            AppStrings title, AppStrings body)
        initStreamPositions,
    required TResult Function(Position position, double zoom)
        moveToUserPosition,
    required TResult Function() showDetailsRecordingData,
    required TResult Function() hideDetailsRecordingData,
    required TResult Function() navigateBack,
    required TResult Function(Position? position) navigateToAddMemory,
    required TResult Function(Memory memory) navigateToEditMemory,
    required TResult Function(Track track) navigateToAddRecordTrack,
    required TResult Function(Memory memory) showMemoryDetails,
    required TResult Function() hideMemoryDetails,
  }) {
    return showMemoryDetails(memory);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(void Function(String, String) callback, AppStrings title,
            AppStrings body)?
        initStreamPositions,
    TResult? Function(Position position, double zoom)? moveToUserPosition,
    TResult? Function()? showDetailsRecordingData,
    TResult? Function()? hideDetailsRecordingData,
    TResult? Function()? navigateBack,
    TResult? Function(Position? position)? navigateToAddMemory,
    TResult? Function(Memory memory)? navigateToEditMemory,
    TResult? Function(Track track)? navigateToAddRecordTrack,
    TResult? Function(Memory memory)? showMemoryDetails,
    TResult? Function()? hideMemoryDetails,
  }) {
    return showMemoryDetails?.call(memory);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(void Function(String, String) callback, AppStrings title,
            AppStrings body)?
        initStreamPositions,
    TResult Function(Position position, double zoom)? moveToUserPosition,
    TResult Function()? showDetailsRecordingData,
    TResult Function()? hideDetailsRecordingData,
    TResult Function()? navigateBack,
    TResult Function(Position? position)? navigateToAddMemory,
    TResult Function(Memory memory)? navigateToEditMemory,
    TResult Function(Track track)? navigateToAddRecordTrack,
    TResult Function(Memory memory)? showMemoryDetails,
    TResult Function()? hideMemoryDetails,
    required TResult orElse(),
  }) {
    if (showMemoryDetails != null) {
      return showMemoryDetails(memory);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitStreamPositionsAction value)
        initStreamPositions,
    required TResult Function(_UserPositionChangesAction value)
        moveToUserPosition,
    required TResult Function(_ShowDetailsRecordingDataAction value)
        showDetailsRecordingData,
    required TResult Function(_HideDetailsRecordingDataAction value)
        hideDetailsRecordingData,
    required TResult Function(_NavigateBackAction value) navigateBack,
    required TResult Function(_NavigateToAddMemoryAction value)
        navigateToAddMemory,
    required TResult Function(_NavigateToEditMemoryAction value)
        navigateToEditMemory,
    required TResult Function(_NavigateToAddRecordTrackAction value)
        navigateToAddRecordTrack,
    required TResult Function(_ShowMemoryDetailsAction value) showMemoryDetails,
    required TResult Function(_HideMemoryDetailsAction value) hideMemoryDetails,
  }) {
    return showMemoryDetails(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitStreamPositionsAction value)? initStreamPositions,
    TResult? Function(_UserPositionChangesAction value)? moveToUserPosition,
    TResult? Function(_ShowDetailsRecordingDataAction value)?
        showDetailsRecordingData,
    TResult? Function(_HideDetailsRecordingDataAction value)?
        hideDetailsRecordingData,
    TResult? Function(_NavigateBackAction value)? navigateBack,
    TResult? Function(_NavigateToAddMemoryAction value)? navigateToAddMemory,
    TResult? Function(_NavigateToEditMemoryAction value)? navigateToEditMemory,
    TResult? Function(_NavigateToAddRecordTrackAction value)?
        navigateToAddRecordTrack,
    TResult? Function(_ShowMemoryDetailsAction value)? showMemoryDetails,
    TResult? Function(_HideMemoryDetailsAction value)? hideMemoryDetails,
  }) {
    return showMemoryDetails?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitStreamPositionsAction value)? initStreamPositions,
    TResult Function(_UserPositionChangesAction value)? moveToUserPosition,
    TResult Function(_ShowDetailsRecordingDataAction value)?
        showDetailsRecordingData,
    TResult Function(_HideDetailsRecordingDataAction value)?
        hideDetailsRecordingData,
    TResult Function(_NavigateBackAction value)? navigateBack,
    TResult Function(_NavigateToAddMemoryAction value)? navigateToAddMemory,
    TResult Function(_NavigateToEditMemoryAction value)? navigateToEditMemory,
    TResult Function(_NavigateToAddRecordTrackAction value)?
        navigateToAddRecordTrack,
    TResult Function(_ShowMemoryDetailsAction value)? showMemoryDetails,
    TResult Function(_HideMemoryDetailsAction value)? hideMemoryDetails,
    required TResult orElse(),
  }) {
    if (showMemoryDetails != null) {
      return showMemoryDetails(this);
    }
    return orElse();
  }
}

abstract class _ShowMemoryDetailsAction implements RecordTrackActions {
  const factory _ShowMemoryDetailsAction({required final Memory memory}) =
      _$ShowMemoryDetailsActionImpl;

  Memory get memory;

  /// Create a copy of RecordTrackActions
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ShowMemoryDetailsActionImplCopyWith<_$ShowMemoryDetailsActionImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$HideMemoryDetailsActionImplCopyWith<$Res> {
  factory _$$HideMemoryDetailsActionImplCopyWith(
          _$HideMemoryDetailsActionImpl value,
          $Res Function(_$HideMemoryDetailsActionImpl) then) =
      __$$HideMemoryDetailsActionImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HideMemoryDetailsActionImplCopyWithImpl<$Res>
    extends _$RecordTrackActionsCopyWithImpl<$Res,
        _$HideMemoryDetailsActionImpl>
    implements _$$HideMemoryDetailsActionImplCopyWith<$Res> {
  __$$HideMemoryDetailsActionImplCopyWithImpl(
      _$HideMemoryDetailsActionImpl _value,
      $Res Function(_$HideMemoryDetailsActionImpl) _then)
      : super(_value, _then);

  /// Create a copy of RecordTrackActions
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$HideMemoryDetailsActionImpl
    with DiagnosticableTreeMixin
    implements _HideMemoryDetailsAction {
  const _$HideMemoryDetailsActionImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RecordTrackActions.hideMemoryDetails()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(
        DiagnosticsProperty('type', 'RecordTrackActions.hideMemoryDetails'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HideMemoryDetailsActionImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(void Function(String, String) callback,
            AppStrings title, AppStrings body)
        initStreamPositions,
    required TResult Function(Position position, double zoom)
        moveToUserPosition,
    required TResult Function() showDetailsRecordingData,
    required TResult Function() hideDetailsRecordingData,
    required TResult Function() navigateBack,
    required TResult Function(Position? position) navigateToAddMemory,
    required TResult Function(Memory memory) navigateToEditMemory,
    required TResult Function(Track track) navigateToAddRecordTrack,
    required TResult Function(Memory memory) showMemoryDetails,
    required TResult Function() hideMemoryDetails,
  }) {
    return hideMemoryDetails();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(void Function(String, String) callback, AppStrings title,
            AppStrings body)?
        initStreamPositions,
    TResult? Function(Position position, double zoom)? moveToUserPosition,
    TResult? Function()? showDetailsRecordingData,
    TResult? Function()? hideDetailsRecordingData,
    TResult? Function()? navigateBack,
    TResult? Function(Position? position)? navigateToAddMemory,
    TResult? Function(Memory memory)? navigateToEditMemory,
    TResult? Function(Track track)? navigateToAddRecordTrack,
    TResult? Function(Memory memory)? showMemoryDetails,
    TResult? Function()? hideMemoryDetails,
  }) {
    return hideMemoryDetails?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(void Function(String, String) callback, AppStrings title,
            AppStrings body)?
        initStreamPositions,
    TResult Function(Position position, double zoom)? moveToUserPosition,
    TResult Function()? showDetailsRecordingData,
    TResult Function()? hideDetailsRecordingData,
    TResult Function()? navigateBack,
    TResult Function(Position? position)? navigateToAddMemory,
    TResult Function(Memory memory)? navigateToEditMemory,
    TResult Function(Track track)? navigateToAddRecordTrack,
    TResult Function(Memory memory)? showMemoryDetails,
    TResult Function()? hideMemoryDetails,
    required TResult orElse(),
  }) {
    if (hideMemoryDetails != null) {
      return hideMemoryDetails();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitStreamPositionsAction value)
        initStreamPositions,
    required TResult Function(_UserPositionChangesAction value)
        moveToUserPosition,
    required TResult Function(_ShowDetailsRecordingDataAction value)
        showDetailsRecordingData,
    required TResult Function(_HideDetailsRecordingDataAction value)
        hideDetailsRecordingData,
    required TResult Function(_NavigateBackAction value) navigateBack,
    required TResult Function(_NavigateToAddMemoryAction value)
        navigateToAddMemory,
    required TResult Function(_NavigateToEditMemoryAction value)
        navigateToEditMemory,
    required TResult Function(_NavigateToAddRecordTrackAction value)
        navigateToAddRecordTrack,
    required TResult Function(_ShowMemoryDetailsAction value) showMemoryDetails,
    required TResult Function(_HideMemoryDetailsAction value) hideMemoryDetails,
  }) {
    return hideMemoryDetails(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitStreamPositionsAction value)? initStreamPositions,
    TResult? Function(_UserPositionChangesAction value)? moveToUserPosition,
    TResult? Function(_ShowDetailsRecordingDataAction value)?
        showDetailsRecordingData,
    TResult? Function(_HideDetailsRecordingDataAction value)?
        hideDetailsRecordingData,
    TResult? Function(_NavigateBackAction value)? navigateBack,
    TResult? Function(_NavigateToAddMemoryAction value)? navigateToAddMemory,
    TResult? Function(_NavigateToEditMemoryAction value)? navigateToEditMemory,
    TResult? Function(_NavigateToAddRecordTrackAction value)?
        navigateToAddRecordTrack,
    TResult? Function(_ShowMemoryDetailsAction value)? showMemoryDetails,
    TResult? Function(_HideMemoryDetailsAction value)? hideMemoryDetails,
  }) {
    return hideMemoryDetails?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitStreamPositionsAction value)? initStreamPositions,
    TResult Function(_UserPositionChangesAction value)? moveToUserPosition,
    TResult Function(_ShowDetailsRecordingDataAction value)?
        showDetailsRecordingData,
    TResult Function(_HideDetailsRecordingDataAction value)?
        hideDetailsRecordingData,
    TResult Function(_NavigateBackAction value)? navigateBack,
    TResult Function(_NavigateToAddMemoryAction value)? navigateToAddMemory,
    TResult Function(_NavigateToEditMemoryAction value)? navigateToEditMemory,
    TResult Function(_NavigateToAddRecordTrackAction value)?
        navigateToAddRecordTrack,
    TResult Function(_ShowMemoryDetailsAction value)? showMemoryDetails,
    TResult Function(_HideMemoryDetailsAction value)? hideMemoryDetails,
    required TResult orElse(),
  }) {
    if (hideMemoryDetails != null) {
      return hideMemoryDetails(this);
    }
    return orElse();
  }
}

abstract class _HideMemoryDetailsAction implements RecordTrackActions {
  const factory _HideMemoryDetailsAction() = _$HideMemoryDetailsActionImpl;
}

/// @nodoc
mixin _$TrackRecordStatusState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() withoutRecording,
    required TResult Function(
            List<PositionData> positionsData,
            List<Position> positions,
            double distance,
            int duration,
            double averageSpeed,
            double maxAltitude,
            RecordTrackModeState mode,
            bool isRecording,
            List<Memory> memories)
        recording,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? withoutRecording,
    TResult? Function(
            List<PositionData> positionsData,
            List<Position> positions,
            double distance,
            int duration,
            double averageSpeed,
            double maxAltitude,
            RecordTrackModeState mode,
            bool isRecording,
            List<Memory> memories)?
        recording,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? withoutRecording,
    TResult Function(
            List<PositionData> positionsData,
            List<Position> positions,
            double distance,
            int duration,
            double averageSpeed,
            double maxAltitude,
            RecordTrackModeState mode,
            bool isRecording,
            List<Memory> memories)?
        recording,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TrackRecordWithoutRecordingStatusState value)
        withoutRecording,
    required TResult Function(TrackRecordingStatusState value) recording,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TrackRecordWithoutRecordingStatusState value)?
        withoutRecording,
    TResult? Function(TrackRecordingStatusState value)? recording,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TrackRecordWithoutRecordingStatusState value)?
        withoutRecording,
    TResult Function(TrackRecordingStatusState value)? recording,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrackRecordStatusStateCopyWith<$Res> {
  factory $TrackRecordStatusStateCopyWith(TrackRecordStatusState value,
          $Res Function(TrackRecordStatusState) then) =
      _$TrackRecordStatusStateCopyWithImpl<$Res, TrackRecordStatusState>;
}

/// @nodoc
class _$TrackRecordStatusStateCopyWithImpl<$Res,
        $Val extends TrackRecordStatusState>
    implements $TrackRecordStatusStateCopyWith<$Res> {
  _$TrackRecordStatusStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TrackRecordStatusState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$TrackRecordWithoutRecordingStatusStateImplCopyWith<$Res> {
  factory _$$TrackRecordWithoutRecordingStatusStateImplCopyWith(
          _$TrackRecordWithoutRecordingStatusStateImpl value,
          $Res Function(_$TrackRecordWithoutRecordingStatusStateImpl) then) =
      __$$TrackRecordWithoutRecordingStatusStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TrackRecordWithoutRecordingStatusStateImplCopyWithImpl<$Res>
    extends _$TrackRecordStatusStateCopyWithImpl<$Res,
        _$TrackRecordWithoutRecordingStatusStateImpl>
    implements _$$TrackRecordWithoutRecordingStatusStateImplCopyWith<$Res> {
  __$$TrackRecordWithoutRecordingStatusStateImplCopyWithImpl(
      _$TrackRecordWithoutRecordingStatusStateImpl _value,
      $Res Function(_$TrackRecordWithoutRecordingStatusStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of TrackRecordStatusState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$TrackRecordWithoutRecordingStatusStateImpl
    extends TrackRecordWithoutRecordingStatusState
    with DiagnosticableTreeMixin {
  const _$TrackRecordWithoutRecordingStatusStateImpl() : super._();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TrackRecordStatusState.withoutRecording()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(
        DiagnosticsProperty('type', 'TrackRecordStatusState.withoutRecording'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TrackRecordWithoutRecordingStatusStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() withoutRecording,
    required TResult Function(
            List<PositionData> positionsData,
            List<Position> positions,
            double distance,
            int duration,
            double averageSpeed,
            double maxAltitude,
            RecordTrackModeState mode,
            bool isRecording,
            List<Memory> memories)
        recording,
  }) {
    return withoutRecording();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? withoutRecording,
    TResult? Function(
            List<PositionData> positionsData,
            List<Position> positions,
            double distance,
            int duration,
            double averageSpeed,
            double maxAltitude,
            RecordTrackModeState mode,
            bool isRecording,
            List<Memory> memories)?
        recording,
  }) {
    return withoutRecording?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? withoutRecording,
    TResult Function(
            List<PositionData> positionsData,
            List<Position> positions,
            double distance,
            int duration,
            double averageSpeed,
            double maxAltitude,
            RecordTrackModeState mode,
            bool isRecording,
            List<Memory> memories)?
        recording,
    required TResult orElse(),
  }) {
    if (withoutRecording != null) {
      return withoutRecording();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TrackRecordWithoutRecordingStatusState value)
        withoutRecording,
    required TResult Function(TrackRecordingStatusState value) recording,
  }) {
    return withoutRecording(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TrackRecordWithoutRecordingStatusState value)?
        withoutRecording,
    TResult? Function(TrackRecordingStatusState value)? recording,
  }) {
    return withoutRecording?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TrackRecordWithoutRecordingStatusState value)?
        withoutRecording,
    TResult Function(TrackRecordingStatusState value)? recording,
    required TResult orElse(),
  }) {
    if (withoutRecording != null) {
      return withoutRecording(this);
    }
    return orElse();
  }
}

abstract class TrackRecordWithoutRecordingStatusState
    extends TrackRecordStatusState {
  const factory TrackRecordWithoutRecordingStatusState() =
      _$TrackRecordWithoutRecordingStatusStateImpl;
  const TrackRecordWithoutRecordingStatusState._() : super._();
}

/// @nodoc
abstract class _$$TrackRecordingStatusStateImplCopyWith<$Res> {
  factory _$$TrackRecordingStatusStateImplCopyWith(
          _$TrackRecordingStatusStateImpl value,
          $Res Function(_$TrackRecordingStatusStateImpl) then) =
      __$$TrackRecordingStatusStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<PositionData> positionsData,
      List<Position> positions,
      double distance,
      int duration,
      double averageSpeed,
      double maxAltitude,
      RecordTrackModeState mode,
      bool isRecording,
      List<Memory> memories});

  $RecordTrackModeStateCopyWith<$Res> get mode;
}

/// @nodoc
class __$$TrackRecordingStatusStateImplCopyWithImpl<$Res>
    extends _$TrackRecordStatusStateCopyWithImpl<$Res,
        _$TrackRecordingStatusStateImpl>
    implements _$$TrackRecordingStatusStateImplCopyWith<$Res> {
  __$$TrackRecordingStatusStateImplCopyWithImpl(
      _$TrackRecordingStatusStateImpl _value,
      $Res Function(_$TrackRecordingStatusStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of TrackRecordStatusState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? positionsData = null,
    Object? positions = null,
    Object? distance = null,
    Object? duration = null,
    Object? averageSpeed = null,
    Object? maxAltitude = null,
    Object? mode = null,
    Object? isRecording = null,
    Object? memories = null,
  }) {
    return _then(_$TrackRecordingStatusStateImpl(
      positionsData: null == positionsData
          ? _value._positionsData
          : positionsData // ignore: cast_nullable_to_non_nullable
              as List<PositionData>,
      positions: null == positions
          ? _value._positions
          : positions // ignore: cast_nullable_to_non_nullable
              as List<Position>,
      distance: null == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as double,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
      averageSpeed: null == averageSpeed
          ? _value.averageSpeed
          : averageSpeed // ignore: cast_nullable_to_non_nullable
              as double,
      maxAltitude: null == maxAltitude
          ? _value.maxAltitude
          : maxAltitude // ignore: cast_nullable_to_non_nullable
              as double,
      mode: null == mode
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as RecordTrackModeState,
      isRecording: null == isRecording
          ? _value.isRecording
          : isRecording // ignore: cast_nullable_to_non_nullable
              as bool,
      memories: null == memories
          ? _value._memories
          : memories // ignore: cast_nullable_to_non_nullable
              as List<Memory>,
    ));
  }

  /// Create a copy of TrackRecordStatusState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RecordTrackModeStateCopyWith<$Res> get mode {
    return $RecordTrackModeStateCopyWith<$Res>(_value.mode, (value) {
      return _then(_value.copyWith(mode: value));
    });
  }
}

/// @nodoc

class _$TrackRecordingStatusStateImpl extends TrackRecordingStatusState
    with DiagnosticableTreeMixin {
  const _$TrackRecordingStatusStateImpl(
      {required final List<PositionData> positionsData,
      required final List<Position> positions,
      required this.distance,
      required this.duration,
      required this.averageSpeed,
      required this.maxAltitude,
      required this.mode,
      required this.isRecording,
      required final List<Memory> memories})
      : _positionsData = positionsData,
        _positions = positions,
        _memories = memories,
        super._();

  final List<PositionData> _positionsData;
  @override
  List<PositionData> get positionsData {
    if (_positionsData is EqualUnmodifiableListView) return _positionsData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_positionsData);
  }

  final List<Position> _positions;
  @override
  List<Position> get positions {
    if (_positions is EqualUnmodifiableListView) return _positions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_positions);
  }

  @override
  final double distance;
  @override
  final int duration;
  @override
  final double averageSpeed;
  @override
  final double maxAltitude;
  @override
  final RecordTrackModeState mode;
  @override
  final bool isRecording;
  final List<Memory> _memories;
  @override
  List<Memory> get memories {
    if (_memories is EqualUnmodifiableListView) return _memories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_memories);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TrackRecordStatusState.recording(positionsData: $positionsData, positions: $positions, distance: $distance, duration: $duration, averageSpeed: $averageSpeed, maxAltitude: $maxAltitude, mode: $mode, isRecording: $isRecording, memories: $memories)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TrackRecordStatusState.recording'))
      ..add(DiagnosticsProperty('positionsData', positionsData))
      ..add(DiagnosticsProperty('positions', positions))
      ..add(DiagnosticsProperty('distance', distance))
      ..add(DiagnosticsProperty('duration', duration))
      ..add(DiagnosticsProperty('averageSpeed', averageSpeed))
      ..add(DiagnosticsProperty('maxAltitude', maxAltitude))
      ..add(DiagnosticsProperty('mode', mode))
      ..add(DiagnosticsProperty('isRecording', isRecording))
      ..add(DiagnosticsProperty('memories', memories));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TrackRecordingStatusStateImpl &&
            const DeepCollectionEquality()
                .equals(other._positionsData, _positionsData) &&
            const DeepCollectionEquality()
                .equals(other._positions, _positions) &&
            (identical(other.distance, distance) ||
                other.distance == distance) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.averageSpeed, averageSpeed) ||
                other.averageSpeed == averageSpeed) &&
            (identical(other.maxAltitude, maxAltitude) ||
                other.maxAltitude == maxAltitude) &&
            (identical(other.mode, mode) || other.mode == mode) &&
            (identical(other.isRecording, isRecording) ||
                other.isRecording == isRecording) &&
            const DeepCollectionEquality().equals(other._memories, _memories));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_positionsData),
      const DeepCollectionEquality().hash(_positions),
      distance,
      duration,
      averageSpeed,
      maxAltitude,
      mode,
      isRecording,
      const DeepCollectionEquality().hash(_memories));

  /// Create a copy of TrackRecordStatusState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TrackRecordingStatusStateImplCopyWith<_$TrackRecordingStatusStateImpl>
      get copyWith => __$$TrackRecordingStatusStateImplCopyWithImpl<
          _$TrackRecordingStatusStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() withoutRecording,
    required TResult Function(
            List<PositionData> positionsData,
            List<Position> positions,
            double distance,
            int duration,
            double averageSpeed,
            double maxAltitude,
            RecordTrackModeState mode,
            bool isRecording,
            List<Memory> memories)
        recording,
  }) {
    return recording(positionsData, positions, distance, duration, averageSpeed,
        maxAltitude, mode, isRecording, memories);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? withoutRecording,
    TResult? Function(
            List<PositionData> positionsData,
            List<Position> positions,
            double distance,
            int duration,
            double averageSpeed,
            double maxAltitude,
            RecordTrackModeState mode,
            bool isRecording,
            List<Memory> memories)?
        recording,
  }) {
    return recording?.call(positionsData, positions, distance, duration,
        averageSpeed, maxAltitude, mode, isRecording, memories);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? withoutRecording,
    TResult Function(
            List<PositionData> positionsData,
            List<Position> positions,
            double distance,
            int duration,
            double averageSpeed,
            double maxAltitude,
            RecordTrackModeState mode,
            bool isRecording,
            List<Memory> memories)?
        recording,
    required TResult orElse(),
  }) {
    if (recording != null) {
      return recording(positionsData, positions, distance, duration,
          averageSpeed, maxAltitude, mode, isRecording, memories);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TrackRecordWithoutRecordingStatusState value)
        withoutRecording,
    required TResult Function(TrackRecordingStatusState value) recording,
  }) {
    return recording(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TrackRecordWithoutRecordingStatusState value)?
        withoutRecording,
    TResult? Function(TrackRecordingStatusState value)? recording,
  }) {
    return recording?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TrackRecordWithoutRecordingStatusState value)?
        withoutRecording,
    TResult Function(TrackRecordingStatusState value)? recording,
    required TResult orElse(),
  }) {
    if (recording != null) {
      return recording(this);
    }
    return orElse();
  }
}

abstract class TrackRecordingStatusState extends TrackRecordStatusState {
  const factory TrackRecordingStatusState(
      {required final List<PositionData> positionsData,
      required final List<Position> positions,
      required final double distance,
      required final int duration,
      required final double averageSpeed,
      required final double maxAltitude,
      required final RecordTrackModeState mode,
      required final bool isRecording,
      required final List<Memory> memories}) = _$TrackRecordingStatusStateImpl;
  const TrackRecordingStatusState._() : super._();

  List<PositionData> get positionsData;
  List<Position> get positions;
  double get distance;
  int get duration;
  double get averageSpeed;
  double get maxAltitude;
  RecordTrackModeState get mode;
  bool get isRecording;
  List<Memory> get memories;

  /// Create a copy of TrackRecordStatusState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TrackRecordingStatusStateImplCopyWith<_$TrackRecordingStatusStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RecordTrackModeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Position currentPosition) recording,
    required TResult Function() pause,
    required TResult Function() stop,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Position currentPosition)? recording,
    TResult? Function()? pause,
    TResult? Function()? stop,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Position currentPosition)? recording,
    TResult Function()? pause,
    TResult Function()? stop,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RecordTrackRecordingModeState value) recording,
    required TResult Function(_RecordTrackPauseModeState value) pause,
    required TResult Function(_RecordTrackStopModeState value) stop,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RecordTrackRecordingModeState value)? recording,
    TResult? Function(_RecordTrackPauseModeState value)? pause,
    TResult? Function(_RecordTrackStopModeState value)? stop,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RecordTrackRecordingModeState value)? recording,
    TResult Function(_RecordTrackPauseModeState value)? pause,
    TResult Function(_RecordTrackStopModeState value)? stop,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecordTrackModeStateCopyWith<$Res> {
  factory $RecordTrackModeStateCopyWith(RecordTrackModeState value,
          $Res Function(RecordTrackModeState) then) =
      _$RecordTrackModeStateCopyWithImpl<$Res, RecordTrackModeState>;
}

/// @nodoc
class _$RecordTrackModeStateCopyWithImpl<$Res,
        $Val extends RecordTrackModeState>
    implements $RecordTrackModeStateCopyWith<$Res> {
  _$RecordTrackModeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RecordTrackModeState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$RecordTrackRecordingModeStateImplCopyWith<$Res> {
  factory _$$RecordTrackRecordingModeStateImplCopyWith(
          _$RecordTrackRecordingModeStateImpl value,
          $Res Function(_$RecordTrackRecordingModeStateImpl) then) =
      __$$RecordTrackRecordingModeStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Position currentPosition});

  $PositionCopyWith<$Res> get currentPosition;
}

/// @nodoc
class __$$RecordTrackRecordingModeStateImplCopyWithImpl<$Res>
    extends _$RecordTrackModeStateCopyWithImpl<$Res,
        _$RecordTrackRecordingModeStateImpl>
    implements _$$RecordTrackRecordingModeStateImplCopyWith<$Res> {
  __$$RecordTrackRecordingModeStateImplCopyWithImpl(
      _$RecordTrackRecordingModeStateImpl _value,
      $Res Function(_$RecordTrackRecordingModeStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of RecordTrackModeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPosition = null,
  }) {
    return _then(_$RecordTrackRecordingModeStateImpl(
      currentPosition: null == currentPosition
          ? _value.currentPosition
          : currentPosition // ignore: cast_nullable_to_non_nullable
              as Position,
    ));
  }

  /// Create a copy of RecordTrackModeState
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

class _$RecordTrackRecordingModeStateImpl
    with DiagnosticableTreeMixin
    implements _RecordTrackRecordingModeState {
  const _$RecordTrackRecordingModeStateImpl({required this.currentPosition});

  @override
  final Position currentPosition;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RecordTrackModeState.recording(currentPosition: $currentPosition)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RecordTrackModeState.recording'))
      ..add(DiagnosticsProperty('currentPosition', currentPosition));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecordTrackRecordingModeStateImpl &&
            (identical(other.currentPosition, currentPosition) ||
                other.currentPosition == currentPosition));
  }

  @override
  int get hashCode => Object.hash(runtimeType, currentPosition);

  /// Create a copy of RecordTrackModeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RecordTrackRecordingModeStateImplCopyWith<
          _$RecordTrackRecordingModeStateImpl>
      get copyWith => __$$RecordTrackRecordingModeStateImplCopyWithImpl<
          _$RecordTrackRecordingModeStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Position currentPosition) recording,
    required TResult Function() pause,
    required TResult Function() stop,
  }) {
    return recording(currentPosition);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Position currentPosition)? recording,
    TResult? Function()? pause,
    TResult? Function()? stop,
  }) {
    return recording?.call(currentPosition);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Position currentPosition)? recording,
    TResult Function()? pause,
    TResult Function()? stop,
    required TResult orElse(),
  }) {
    if (recording != null) {
      return recording(currentPosition);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RecordTrackRecordingModeState value) recording,
    required TResult Function(_RecordTrackPauseModeState value) pause,
    required TResult Function(_RecordTrackStopModeState value) stop,
  }) {
    return recording(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RecordTrackRecordingModeState value)? recording,
    TResult? Function(_RecordTrackPauseModeState value)? pause,
    TResult? Function(_RecordTrackStopModeState value)? stop,
  }) {
    return recording?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RecordTrackRecordingModeState value)? recording,
    TResult Function(_RecordTrackPauseModeState value)? pause,
    TResult Function(_RecordTrackStopModeState value)? stop,
    required TResult orElse(),
  }) {
    if (recording != null) {
      return recording(this);
    }
    return orElse();
  }
}

abstract class _RecordTrackRecordingModeState implements RecordTrackModeState {
  const factory _RecordTrackRecordingModeState(
          {required final Position currentPosition}) =
      _$RecordTrackRecordingModeStateImpl;

  Position get currentPosition;

  /// Create a copy of RecordTrackModeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RecordTrackRecordingModeStateImplCopyWith<
          _$RecordTrackRecordingModeStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RecordTrackPauseModeStateImplCopyWith<$Res> {
  factory _$$RecordTrackPauseModeStateImplCopyWith(
          _$RecordTrackPauseModeStateImpl value,
          $Res Function(_$RecordTrackPauseModeStateImpl) then) =
      __$$RecordTrackPauseModeStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RecordTrackPauseModeStateImplCopyWithImpl<$Res>
    extends _$RecordTrackModeStateCopyWithImpl<$Res,
        _$RecordTrackPauseModeStateImpl>
    implements _$$RecordTrackPauseModeStateImplCopyWith<$Res> {
  __$$RecordTrackPauseModeStateImplCopyWithImpl(
      _$RecordTrackPauseModeStateImpl _value,
      $Res Function(_$RecordTrackPauseModeStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of RecordTrackModeState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$RecordTrackPauseModeStateImpl
    with DiagnosticableTreeMixin
    implements _RecordTrackPauseModeState {
  const _$RecordTrackPauseModeStateImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RecordTrackModeState.pause()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'RecordTrackModeState.pause'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecordTrackPauseModeStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Position currentPosition) recording,
    required TResult Function() pause,
    required TResult Function() stop,
  }) {
    return pause();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Position currentPosition)? recording,
    TResult? Function()? pause,
    TResult? Function()? stop,
  }) {
    return pause?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Position currentPosition)? recording,
    TResult Function()? pause,
    TResult Function()? stop,
    required TResult orElse(),
  }) {
    if (pause != null) {
      return pause();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RecordTrackRecordingModeState value) recording,
    required TResult Function(_RecordTrackPauseModeState value) pause,
    required TResult Function(_RecordTrackStopModeState value) stop,
  }) {
    return pause(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RecordTrackRecordingModeState value)? recording,
    TResult? Function(_RecordTrackPauseModeState value)? pause,
    TResult? Function(_RecordTrackStopModeState value)? stop,
  }) {
    return pause?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RecordTrackRecordingModeState value)? recording,
    TResult Function(_RecordTrackPauseModeState value)? pause,
    TResult Function(_RecordTrackStopModeState value)? stop,
    required TResult orElse(),
  }) {
    if (pause != null) {
      return pause(this);
    }
    return orElse();
  }
}

abstract class _RecordTrackPauseModeState implements RecordTrackModeState {
  const factory _RecordTrackPauseModeState() = _$RecordTrackPauseModeStateImpl;
}

/// @nodoc
abstract class _$$RecordTrackStopModeStateImplCopyWith<$Res> {
  factory _$$RecordTrackStopModeStateImplCopyWith(
          _$RecordTrackStopModeStateImpl value,
          $Res Function(_$RecordTrackStopModeStateImpl) then) =
      __$$RecordTrackStopModeStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RecordTrackStopModeStateImplCopyWithImpl<$Res>
    extends _$RecordTrackModeStateCopyWithImpl<$Res,
        _$RecordTrackStopModeStateImpl>
    implements _$$RecordTrackStopModeStateImplCopyWith<$Res> {
  __$$RecordTrackStopModeStateImplCopyWithImpl(
      _$RecordTrackStopModeStateImpl _value,
      $Res Function(_$RecordTrackStopModeStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of RecordTrackModeState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$RecordTrackStopModeStateImpl
    with DiagnosticableTreeMixin
    implements _RecordTrackStopModeState {
  const _$RecordTrackStopModeStateImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RecordTrackModeState.stop()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'RecordTrackModeState.stop'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecordTrackStopModeStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Position currentPosition) recording,
    required TResult Function() pause,
    required TResult Function() stop,
  }) {
    return stop();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Position currentPosition)? recording,
    TResult? Function()? pause,
    TResult? Function()? stop,
  }) {
    return stop?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Position currentPosition)? recording,
    TResult Function()? pause,
    TResult Function()? stop,
    required TResult orElse(),
  }) {
    if (stop != null) {
      return stop();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RecordTrackRecordingModeState value) recording,
    required TResult Function(_RecordTrackPauseModeState value) pause,
    required TResult Function(_RecordTrackStopModeState value) stop,
  }) {
    return stop(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RecordTrackRecordingModeState value)? recording,
    TResult? Function(_RecordTrackPauseModeState value)? pause,
    TResult? Function(_RecordTrackStopModeState value)? stop,
  }) {
    return stop?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RecordTrackRecordingModeState value)? recording,
    TResult Function(_RecordTrackPauseModeState value)? pause,
    TResult Function(_RecordTrackStopModeState value)? stop,
    required TResult orElse(),
  }) {
    if (stop != null) {
      return stop(this);
    }
    return orElse();
  }
}

abstract class _RecordTrackStopModeState implements RecordTrackModeState {
  const factory _RecordTrackStopModeState() = _$RecordTrackStopModeStateImpl;
}

/// @nodoc
mixin _$PreviousTrackState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() hasData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function()? hasData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? hasData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmptyTrackState value) empty,
    required TResult Function(_HasDataTrackState value) hasData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmptyTrackState value)? empty,
    TResult? Function(_HasDataTrackState value)? hasData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmptyTrackState value)? empty,
    TResult Function(_HasDataTrackState value)? hasData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PreviousTrackStateCopyWith<$Res> {
  factory $PreviousTrackStateCopyWith(
          PreviousTrackState value, $Res Function(PreviousTrackState) then) =
      _$PreviousTrackStateCopyWithImpl<$Res, PreviousTrackState>;
}

/// @nodoc
class _$PreviousTrackStateCopyWithImpl<$Res, $Val extends PreviousTrackState>
    implements $PreviousTrackStateCopyWith<$Res> {
  _$PreviousTrackStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PreviousTrackState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$EmptyTrackStateImplCopyWith<$Res> {
  factory _$$EmptyTrackStateImplCopyWith(_$EmptyTrackStateImpl value,
          $Res Function(_$EmptyTrackStateImpl) then) =
      __$$EmptyTrackStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EmptyTrackStateImplCopyWithImpl<$Res>
    extends _$PreviousTrackStateCopyWithImpl<$Res, _$EmptyTrackStateImpl>
    implements _$$EmptyTrackStateImplCopyWith<$Res> {
  __$$EmptyTrackStateImplCopyWithImpl(
      _$EmptyTrackStateImpl _value, $Res Function(_$EmptyTrackStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of PreviousTrackState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$EmptyTrackStateImpl
    with DiagnosticableTreeMixin
    implements _EmptyTrackState {
  const _$EmptyTrackStateImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PreviousTrackState.empty()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'PreviousTrackState.empty'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EmptyTrackStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() hasData,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function()? hasData,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? hasData,
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
    required TResult Function(_EmptyTrackState value) empty,
    required TResult Function(_HasDataTrackState value) hasData,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmptyTrackState value)? empty,
    TResult? Function(_HasDataTrackState value)? hasData,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmptyTrackState value)? empty,
    TResult Function(_HasDataTrackState value)? hasData,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class _EmptyTrackState implements PreviousTrackState {
  const factory _EmptyTrackState() = _$EmptyTrackStateImpl;
}

/// @nodoc
abstract class _$$HasDataTrackStateImplCopyWith<$Res> {
  factory _$$HasDataTrackStateImplCopyWith(_$HasDataTrackStateImpl value,
          $Res Function(_$HasDataTrackStateImpl) then) =
      __$$HasDataTrackStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HasDataTrackStateImplCopyWithImpl<$Res>
    extends _$PreviousTrackStateCopyWithImpl<$Res, _$HasDataTrackStateImpl>
    implements _$$HasDataTrackStateImplCopyWith<$Res> {
  __$$HasDataTrackStateImplCopyWithImpl(_$HasDataTrackStateImpl _value,
      $Res Function(_$HasDataTrackStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of PreviousTrackState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$HasDataTrackStateImpl
    with DiagnosticableTreeMixin
    implements _HasDataTrackState {
  const _$HasDataTrackStateImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PreviousTrackState.hasData()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'PreviousTrackState.hasData'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$HasDataTrackStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() hasData,
  }) {
    return hasData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function()? hasData,
  }) {
    return hasData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? hasData,
    required TResult orElse(),
  }) {
    if (hasData != null) {
      return hasData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmptyTrackState value) empty,
    required TResult Function(_HasDataTrackState value) hasData,
  }) {
    return hasData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmptyTrackState value)? empty,
    TResult? Function(_HasDataTrackState value)? hasData,
  }) {
    return hasData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmptyTrackState value)? empty,
    TResult Function(_HasDataTrackState value)? hasData,
    required TResult orElse(),
  }) {
    if (hasData != null) {
      return hasData(this);
    }
    return orElse();
  }
}

abstract class _HasDataTrackState implements PreviousTrackState {
  const factory _HasDataTrackState() = _$HasDataTrackStateImpl;
}
