// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthState {
  bool get firstTime => throw _privateConstructorUsedError;
  Activity<bool> get stateChanged => throw _privateConstructorUsedError;
  AuthStatus get authStatus => throw _privateConstructorUsedError;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AuthStateCopyWith<AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
  @useResult
  $Res call(
      {bool firstTime, Activity<bool> stateChanged, AuthStatus authStatus});

  $AuthStatusCopyWith<$Res> get authStatus;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstTime = null,
    Object? stateChanged = null,
    Object? authStatus = null,
  }) {
    return _then(_value.copyWith(
      firstTime: null == firstTime
          ? _value.firstTime
          : firstTime // ignore: cast_nullable_to_non_nullable
              as bool,
      stateChanged: null == stateChanged
          ? _value.stateChanged
          : stateChanged // ignore: cast_nullable_to_non_nullable
              as Activity<bool>,
      authStatus: null == authStatus
          ? _value.authStatus
          : authStatus // ignore: cast_nullable_to_non_nullable
              as AuthStatus,
    ) as $Val);
  }

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AuthStatusCopyWith<$Res> get authStatus {
    return $AuthStatusCopyWith<$Res>(_value.authStatus, (value) {
      return _then(_value.copyWith(authStatus: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AuthStateImplCopyWith<$Res>
    implements $AuthStateCopyWith<$Res> {
  factory _$$AuthStateImplCopyWith(
          _$AuthStateImpl value, $Res Function(_$AuthStateImpl) then) =
      __$$AuthStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool firstTime, Activity<bool> stateChanged, AuthStatus authStatus});

  @override
  $AuthStatusCopyWith<$Res> get authStatus;
}

/// @nodoc
class __$$AuthStateImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthStateImpl>
    implements _$$AuthStateImplCopyWith<$Res> {
  __$$AuthStateImplCopyWithImpl(
      _$AuthStateImpl _value, $Res Function(_$AuthStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstTime = null,
    Object? stateChanged = null,
    Object? authStatus = null,
  }) {
    return _then(_$AuthStateImpl(
      firstTime: null == firstTime
          ? _value.firstTime
          : firstTime // ignore: cast_nullable_to_non_nullable
              as bool,
      stateChanged: null == stateChanged
          ? _value.stateChanged
          : stateChanged // ignore: cast_nullable_to_non_nullable
              as Activity<bool>,
      authStatus: null == authStatus
          ? _value.authStatus
          : authStatus // ignore: cast_nullable_to_non_nullable
              as AuthStatus,
    ));
  }
}

/// @nodoc

class _$AuthStateImpl extends _AuthState {
  const _$AuthStateImpl(
      {required this.firstTime,
      required this.stateChanged,
      required this.authStatus})
      : super._();

  @override
  final bool firstTime;
  @override
  final Activity<bool> stateChanged;
  @override
  final AuthStatus authStatus;

  @override
  String toString() {
    return 'AuthState(firstTime: $firstTime, stateChanged: $stateChanged, authStatus: $authStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthStateImpl &&
            (identical(other.firstTime, firstTime) ||
                other.firstTime == firstTime) &&
            (identical(other.stateChanged, stateChanged) ||
                other.stateChanged == stateChanged) &&
            (identical(other.authStatus, authStatus) ||
                other.authStatus == authStatus));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, firstTime, stateChanged, authStatus);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthStateImplCopyWith<_$AuthStateImpl> get copyWith =>
      __$$AuthStateImplCopyWithImpl<_$AuthStateImpl>(this, _$identity);
}

abstract class _AuthState extends AuthState {
  const factory _AuthState(
      {required final bool firstTime,
      required final Activity<bool> stateChanged,
      required final AuthStatus authStatus}) = _$AuthStateImpl;
  const _AuthState._() : super._();

  @override
  bool get firstTime;
  @override
  Activity<bool> get stateChanged;
  @override
  AuthStatus get authStatus;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthStateImplCopyWith<_$AuthStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AuthStatus {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pending,
    required TResult Function(User user) authenticated,
    required TResult Function() notAuth,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? pending,
    TResult? Function(User user)? authenticated,
    TResult? Function()? notAuth,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pending,
    TResult Function(User user)? authenticated,
    TResult Function()? notAuth,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthPendingStatus value) pending,
    required TResult Function(_AuthAuthenticatedStatus value) authenticated,
    required TResult Function(_AuthNotAuthStatus value) notAuth,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthPendingStatus value)? pending,
    TResult? Function(_AuthAuthenticatedStatus value)? authenticated,
    TResult? Function(_AuthNotAuthStatus value)? notAuth,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthPendingStatus value)? pending,
    TResult Function(_AuthAuthenticatedStatus value)? authenticated,
    TResult Function(_AuthNotAuthStatus value)? notAuth,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStatusCopyWith<$Res> {
  factory $AuthStatusCopyWith(
          AuthStatus value, $Res Function(AuthStatus) then) =
      _$AuthStatusCopyWithImpl<$Res, AuthStatus>;
}

/// @nodoc
class _$AuthStatusCopyWithImpl<$Res, $Val extends AuthStatus>
    implements $AuthStatusCopyWith<$Res> {
  _$AuthStatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthStatus
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$AuthPendingStatusImplCopyWith<$Res> {
  factory _$$AuthPendingStatusImplCopyWith(_$AuthPendingStatusImpl value,
          $Res Function(_$AuthPendingStatusImpl) then) =
      __$$AuthPendingStatusImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthPendingStatusImplCopyWithImpl<$Res>
    extends _$AuthStatusCopyWithImpl<$Res, _$AuthPendingStatusImpl>
    implements _$$AuthPendingStatusImplCopyWith<$Res> {
  __$$AuthPendingStatusImplCopyWithImpl(_$AuthPendingStatusImpl _value,
      $Res Function(_$AuthPendingStatusImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthStatus
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AuthPendingStatusImpl implements _AuthPendingStatus {
  const _$AuthPendingStatusImpl();

  @override
  String toString() {
    return 'AuthStatus.pending()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AuthPendingStatusImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pending,
    required TResult Function(User user) authenticated,
    required TResult Function() notAuth,
  }) {
    return pending();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? pending,
    TResult? Function(User user)? authenticated,
    TResult? Function()? notAuth,
  }) {
    return pending?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pending,
    TResult Function(User user)? authenticated,
    TResult Function()? notAuth,
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
    required TResult Function(_AuthPendingStatus value) pending,
    required TResult Function(_AuthAuthenticatedStatus value) authenticated,
    required TResult Function(_AuthNotAuthStatus value) notAuth,
  }) {
    return pending(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthPendingStatus value)? pending,
    TResult? Function(_AuthAuthenticatedStatus value)? authenticated,
    TResult? Function(_AuthNotAuthStatus value)? notAuth,
  }) {
    return pending?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthPendingStatus value)? pending,
    TResult Function(_AuthAuthenticatedStatus value)? authenticated,
    TResult Function(_AuthNotAuthStatus value)? notAuth,
    required TResult orElse(),
  }) {
    if (pending != null) {
      return pending(this);
    }
    return orElse();
  }
}

abstract class _AuthPendingStatus implements AuthStatus {
  const factory _AuthPendingStatus() = _$AuthPendingStatusImpl;
}

/// @nodoc
abstract class _$$AuthAuthenticatedStatusImplCopyWith<$Res> {
  factory _$$AuthAuthenticatedStatusImplCopyWith(
          _$AuthAuthenticatedStatusImpl value,
          $Res Function(_$AuthAuthenticatedStatusImpl) then) =
      __$$AuthAuthenticatedStatusImplCopyWithImpl<$Res>;
  @useResult
  $Res call({User user});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$$AuthAuthenticatedStatusImplCopyWithImpl<$Res>
    extends _$AuthStatusCopyWithImpl<$Res, _$AuthAuthenticatedStatusImpl>
    implements _$$AuthAuthenticatedStatusImplCopyWith<$Res> {
  __$$AuthAuthenticatedStatusImplCopyWithImpl(
      _$AuthAuthenticatedStatusImpl _value,
      $Res Function(_$AuthAuthenticatedStatusImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthStatus
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$AuthAuthenticatedStatusImpl(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }

  /// Create a copy of AuthStatus
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$AuthAuthenticatedStatusImpl implements _AuthAuthenticatedStatus {
  const _$AuthAuthenticatedStatusImpl({required this.user});

  @override
  final User user;

  @override
  String toString() {
    return 'AuthStatus.authenticated(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthAuthenticatedStatusImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  /// Create a copy of AuthStatus
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthAuthenticatedStatusImplCopyWith<_$AuthAuthenticatedStatusImpl>
      get copyWith => __$$AuthAuthenticatedStatusImplCopyWithImpl<
          _$AuthAuthenticatedStatusImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pending,
    required TResult Function(User user) authenticated,
    required TResult Function() notAuth,
  }) {
    return authenticated(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? pending,
    TResult? Function(User user)? authenticated,
    TResult? Function()? notAuth,
  }) {
    return authenticated?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pending,
    TResult Function(User user)? authenticated,
    TResult Function()? notAuth,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthPendingStatus value) pending,
    required TResult Function(_AuthAuthenticatedStatus value) authenticated,
    required TResult Function(_AuthNotAuthStatus value) notAuth,
  }) {
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthPendingStatus value)? pending,
    TResult? Function(_AuthAuthenticatedStatus value)? authenticated,
    TResult? Function(_AuthNotAuthStatus value)? notAuth,
  }) {
    return authenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthPendingStatus value)? pending,
    TResult Function(_AuthAuthenticatedStatus value)? authenticated,
    TResult Function(_AuthNotAuthStatus value)? notAuth,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(this);
    }
    return orElse();
  }
}

abstract class _AuthAuthenticatedStatus implements AuthStatus {
  const factory _AuthAuthenticatedStatus({required final User user}) =
      _$AuthAuthenticatedStatusImpl;

  User get user;

  /// Create a copy of AuthStatus
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthAuthenticatedStatusImplCopyWith<_$AuthAuthenticatedStatusImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthNotAuthStatusImplCopyWith<$Res> {
  factory _$$AuthNotAuthStatusImplCopyWith(_$AuthNotAuthStatusImpl value,
          $Res Function(_$AuthNotAuthStatusImpl) then) =
      __$$AuthNotAuthStatusImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthNotAuthStatusImplCopyWithImpl<$Res>
    extends _$AuthStatusCopyWithImpl<$Res, _$AuthNotAuthStatusImpl>
    implements _$$AuthNotAuthStatusImplCopyWith<$Res> {
  __$$AuthNotAuthStatusImplCopyWithImpl(_$AuthNotAuthStatusImpl _value,
      $Res Function(_$AuthNotAuthStatusImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthStatus
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AuthNotAuthStatusImpl implements _AuthNotAuthStatus {
  const _$AuthNotAuthStatusImpl();

  @override
  String toString() {
    return 'AuthStatus.notAuth()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AuthNotAuthStatusImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pending,
    required TResult Function(User user) authenticated,
    required TResult Function() notAuth,
  }) {
    return notAuth();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? pending,
    TResult? Function(User user)? authenticated,
    TResult? Function()? notAuth,
  }) {
    return notAuth?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pending,
    TResult Function(User user)? authenticated,
    TResult Function()? notAuth,
    required TResult orElse(),
  }) {
    if (notAuth != null) {
      return notAuth();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthPendingStatus value) pending,
    required TResult Function(_AuthAuthenticatedStatus value) authenticated,
    required TResult Function(_AuthNotAuthStatus value) notAuth,
  }) {
    return notAuth(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthPendingStatus value)? pending,
    TResult? Function(_AuthAuthenticatedStatus value)? authenticated,
    TResult? Function(_AuthNotAuthStatus value)? notAuth,
  }) {
    return notAuth?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthPendingStatus value)? pending,
    TResult Function(_AuthAuthenticatedStatus value)? authenticated,
    TResult Function(_AuthNotAuthStatus value)? notAuth,
    required TResult orElse(),
  }) {
    if (notAuth != null) {
      return notAuth(this);
    }
    return orElse();
  }
}

abstract class _AuthNotAuthStatus implements AuthStatus {
  const factory _AuthNotAuthStatus() = _$AuthNotAuthStatusImpl;
}
