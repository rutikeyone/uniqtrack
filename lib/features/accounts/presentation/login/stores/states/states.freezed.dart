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
mixin _$LoginActions {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() hideFocus,
    required TResult Function(String email) navigateToForgotPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? hideFocus,
    TResult? Function(String email)? navigateToForgotPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? hideFocus,
    TResult Function(String email)? navigateToForgotPassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginHideFocusAction value) hideFocus,
    required TResult Function(_LoginNavigateToForgotPasswordAction value)
        navigateToForgotPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginHideFocusAction value)? hideFocus,
    TResult? Function(_LoginNavigateToForgotPasswordAction value)?
        navigateToForgotPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginHideFocusAction value)? hideFocus,
    TResult Function(_LoginNavigateToForgotPasswordAction value)?
        navigateToForgotPassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginActionsCopyWith<$Res> {
  factory $LoginActionsCopyWith(
          LoginActions value, $Res Function(LoginActions) then) =
      _$LoginActionsCopyWithImpl<$Res, LoginActions>;
}

/// @nodoc
class _$LoginActionsCopyWithImpl<$Res, $Val extends LoginActions>
    implements $LoginActionsCopyWith<$Res> {
  _$LoginActionsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LoginActions
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$LoginHideFocusActionImplCopyWith<$Res> {
  factory _$$LoginHideFocusActionImplCopyWith(_$LoginHideFocusActionImpl value,
          $Res Function(_$LoginHideFocusActionImpl) then) =
      __$$LoginHideFocusActionImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoginHideFocusActionImplCopyWithImpl<$Res>
    extends _$LoginActionsCopyWithImpl<$Res, _$LoginHideFocusActionImpl>
    implements _$$LoginHideFocusActionImplCopyWith<$Res> {
  __$$LoginHideFocusActionImplCopyWithImpl(_$LoginHideFocusActionImpl _value,
      $Res Function(_$LoginHideFocusActionImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginActions
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoginHideFocusActionImpl extends _LoginHideFocusAction {
  const _$LoginHideFocusActionImpl() : super._();

  @override
  String toString() {
    return 'LoginActions.hideFocus()';
  }

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() hideFocus,
    required TResult Function(String email) navigateToForgotPassword,
  }) {
    return hideFocus();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? hideFocus,
    TResult? Function(String email)? navigateToForgotPassword,
  }) {
    return hideFocus?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? hideFocus,
    TResult Function(String email)? navigateToForgotPassword,
    required TResult orElse(),
  }) {
    if (hideFocus != null) {
      return hideFocus();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginHideFocusAction value) hideFocus,
    required TResult Function(_LoginNavigateToForgotPasswordAction value)
        navigateToForgotPassword,
  }) {
    return hideFocus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginHideFocusAction value)? hideFocus,
    TResult? Function(_LoginNavigateToForgotPasswordAction value)?
        navigateToForgotPassword,
  }) {
    return hideFocus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginHideFocusAction value)? hideFocus,
    TResult Function(_LoginNavigateToForgotPasswordAction value)?
        navigateToForgotPassword,
    required TResult orElse(),
  }) {
    if (hideFocus != null) {
      return hideFocus(this);
    }
    return orElse();
  }
}

abstract class _LoginHideFocusAction extends LoginActions {
  const factory _LoginHideFocusAction() = _$LoginHideFocusActionImpl;
  const _LoginHideFocusAction._() : super._();
}

/// @nodoc
abstract class _$$LoginNavigateToForgotPasswordActionImplCopyWith<$Res> {
  factory _$$LoginNavigateToForgotPasswordActionImplCopyWith(
          _$LoginNavigateToForgotPasswordActionImpl value,
          $Res Function(_$LoginNavigateToForgotPasswordActionImpl) then) =
      __$$LoginNavigateToForgotPasswordActionImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$LoginNavigateToForgotPasswordActionImplCopyWithImpl<$Res>
    extends _$LoginActionsCopyWithImpl<$Res,
        _$LoginNavigateToForgotPasswordActionImpl>
    implements _$$LoginNavigateToForgotPasswordActionImplCopyWith<$Res> {
  __$$LoginNavigateToForgotPasswordActionImplCopyWithImpl(
      _$LoginNavigateToForgotPasswordActionImpl _value,
      $Res Function(_$LoginNavigateToForgotPasswordActionImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginActions
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$LoginNavigateToForgotPasswordActionImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoginNavigateToForgotPasswordActionImpl
    extends _LoginNavigateToForgotPasswordAction {
  const _$LoginNavigateToForgotPasswordActionImpl({required this.email})
      : super._();

  @override
  final String email;

  @override
  String toString() {
    return 'LoginActions.navigateToForgotPassword(email: $email)';
  }

  /// Create a copy of LoginActions
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginNavigateToForgotPasswordActionImplCopyWith<
          _$LoginNavigateToForgotPasswordActionImpl>
      get copyWith => __$$LoginNavigateToForgotPasswordActionImplCopyWithImpl<
          _$LoginNavigateToForgotPasswordActionImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() hideFocus,
    required TResult Function(String email) navigateToForgotPassword,
  }) {
    return navigateToForgotPassword(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? hideFocus,
    TResult? Function(String email)? navigateToForgotPassword,
  }) {
    return navigateToForgotPassword?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? hideFocus,
    TResult Function(String email)? navigateToForgotPassword,
    required TResult orElse(),
  }) {
    if (navigateToForgotPassword != null) {
      return navigateToForgotPassword(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginHideFocusAction value) hideFocus,
    required TResult Function(_LoginNavigateToForgotPasswordAction value)
        navigateToForgotPassword,
  }) {
    return navigateToForgotPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginHideFocusAction value)? hideFocus,
    TResult? Function(_LoginNavigateToForgotPasswordAction value)?
        navigateToForgotPassword,
  }) {
    return navigateToForgotPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginHideFocusAction value)? hideFocus,
    TResult Function(_LoginNavigateToForgotPasswordAction value)?
        navigateToForgotPassword,
    required TResult orElse(),
  }) {
    if (navigateToForgotPassword != null) {
      return navigateToForgotPassword(this);
    }
    return orElse();
  }
}

abstract class _LoginNavigateToForgotPasswordAction extends LoginActions {
  const factory _LoginNavigateToForgotPasswordAction(
          {required final String email}) =
      _$LoginNavigateToForgotPasswordActionImpl;
  const _LoginNavigateToForgotPasswordAction._() : super._();

  String get email;

  /// Create a copy of LoginActions
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoginNavigateToForgotPasswordActionImplCopyWith<
          _$LoginNavigateToForgotPasswordActionImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LoginState {
  Email get email => throw _privateConstructorUsedError;
  Password get password => throw _privateConstructorUsedError;
  LoginStatusState get loginStateStatus => throw _privateConstructorUsedError;
  bool get canLogin => throw _privateConstructorUsedError;

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LoginStateCopyWith<LoginState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res, LoginState>;
  @useResult
  $Res call(
      {Email email,
      Password password,
      LoginStatusState loginStateStatus,
      bool canLogin});

  $LoginStatusStateCopyWith<$Res> get loginStateStatus;
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res, $Val extends LoginState>
    implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? loginStateStatus = null,
    Object? canLogin = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as Email,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      loginStateStatus: null == loginStateStatus
          ? _value.loginStateStatus
          : loginStateStatus // ignore: cast_nullable_to_non_nullable
              as LoginStatusState,
      canLogin: null == canLogin
          ? _value.canLogin
          : canLogin // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LoginStatusStateCopyWith<$Res> get loginStateStatus {
    return $LoginStatusStateCopyWith<$Res>(_value.loginStateStatus, (value) {
      return _then(_value.copyWith(loginStateStatus: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LoginStateImplCopyWith<$Res>
    implements $LoginStateCopyWith<$Res> {
  factory _$$LoginStateImplCopyWith(
          _$LoginStateImpl value, $Res Function(_$LoginStateImpl) then) =
      __$$LoginStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Email email,
      Password password,
      LoginStatusState loginStateStatus,
      bool canLogin});

  @override
  $LoginStatusStateCopyWith<$Res> get loginStateStatus;
}

/// @nodoc
class __$$LoginStateImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$LoginStateImpl>
    implements _$$LoginStateImplCopyWith<$Res> {
  __$$LoginStateImplCopyWithImpl(
      _$LoginStateImpl _value, $Res Function(_$LoginStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? loginStateStatus = null,
    Object? canLogin = null,
  }) {
    return _then(_$LoginStateImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as Email,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      loginStateStatus: null == loginStateStatus
          ? _value.loginStateStatus
          : loginStateStatus // ignore: cast_nullable_to_non_nullable
              as LoginStatusState,
      canLogin: null == canLogin
          ? _value.canLogin
          : canLogin // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$LoginStateImpl implements _LoginState {
  const _$LoginStateImpl(
      {required this.email,
      required this.password,
      required this.loginStateStatus,
      required this.canLogin});

  @override
  final Email email;
  @override
  final Password password;
  @override
  final LoginStatusState loginStateStatus;
  @override
  final bool canLogin;

  @override
  String toString() {
    return 'LoginState(email: $email, password: $password, loginStateStatus: $loginStateStatus, canLogin: $canLogin)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginStateImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.loginStateStatus, loginStateStatus) ||
                other.loginStateStatus == loginStateStatus) &&
            (identical(other.canLogin, canLogin) ||
                other.canLogin == canLogin));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, email, password, loginStateStatus, canLogin);

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginStateImplCopyWith<_$LoginStateImpl> get copyWith =>
      __$$LoginStateImplCopyWithImpl<_$LoginStateImpl>(this, _$identity);
}

abstract class _LoginState implements LoginState {
  const factory _LoginState(
      {required final Email email,
      required final Password password,
      required final LoginStatusState loginStateStatus,
      required final bool canLogin}) = _$LoginStateImpl;

  @override
  Email get email;
  @override
  Password get password;
  @override
  LoginStatusState get loginStateStatus;
  @override
  bool get canLogin;

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoginStateImplCopyWith<_$LoginStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LoginStatusState {
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
    required TResult Function(_$LoginPureStatusState value) pure,
    required TResult Function(_$LoginPendingStatusState value) pending,
    required TResult Function(_$LoginSuccessStatusState value) success,
    required TResult Function(_$LoginFailureStatusState value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$LoginPureStatusState value)? pure,
    TResult? Function(_$LoginPendingStatusState value)? pending,
    TResult? Function(_$LoginSuccessStatusState value)? success,
    TResult? Function(_$LoginFailureStatusState value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$LoginPureStatusState value)? pure,
    TResult Function(_$LoginPendingStatusState value)? pending,
    TResult Function(_$LoginSuccessStatusState value)? success,
    TResult Function(_$LoginFailureStatusState value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStatusStateCopyWith<$Res> {
  factory $LoginStatusStateCopyWith(
          LoginStatusState value, $Res Function(LoginStatusState) then) =
      _$LoginStatusStateCopyWithImpl<$Res, LoginStatusState>;
}

/// @nodoc
class _$LoginStatusStateCopyWithImpl<$Res, $Val extends LoginStatusState>
    implements $LoginStatusStateCopyWith<$Res> {
  _$LoginStatusStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LoginStatusState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$$LoginPureStatusStateImplCopyWith<$Res> {
  factory _$$$LoginPureStatusStateImplCopyWith(
          _$$LoginPureStatusStateImpl value,
          $Res Function(_$$LoginPureStatusStateImpl) then) =
      __$$$LoginPureStatusStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$$LoginPureStatusStateImplCopyWithImpl<$Res>
    extends _$LoginStatusStateCopyWithImpl<$Res, _$$LoginPureStatusStateImpl>
    implements _$$$LoginPureStatusStateImplCopyWith<$Res> {
  __$$$LoginPureStatusStateImplCopyWithImpl(_$$LoginPureStatusStateImpl _value,
      $Res Function(_$$LoginPureStatusStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginStatusState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$$LoginPureStatusStateImpl implements _$LoginPureStatusState {
  const _$$LoginPureStatusStateImpl();

  @override
  String toString() {
    return 'LoginStatusState.pure()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$$LoginPureStatusStateImpl);
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
    required TResult Function(_$LoginPureStatusState value) pure,
    required TResult Function(_$LoginPendingStatusState value) pending,
    required TResult Function(_$LoginSuccessStatusState value) success,
    required TResult Function(_$LoginFailureStatusState value) failure,
  }) {
    return pure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$LoginPureStatusState value)? pure,
    TResult? Function(_$LoginPendingStatusState value)? pending,
    TResult? Function(_$LoginSuccessStatusState value)? success,
    TResult? Function(_$LoginFailureStatusState value)? failure,
  }) {
    return pure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$LoginPureStatusState value)? pure,
    TResult Function(_$LoginPendingStatusState value)? pending,
    TResult Function(_$LoginSuccessStatusState value)? success,
    TResult Function(_$LoginFailureStatusState value)? failure,
    required TResult orElse(),
  }) {
    if (pure != null) {
      return pure(this);
    }
    return orElse();
  }
}

abstract class _$LoginPureStatusState implements LoginStatusState {
  const factory _$LoginPureStatusState() = _$$LoginPureStatusStateImpl;
}

/// @nodoc
abstract class _$$$LoginPendingStatusStateImplCopyWith<$Res> {
  factory _$$$LoginPendingStatusStateImplCopyWith(
          _$$LoginPendingStatusStateImpl value,
          $Res Function(_$$LoginPendingStatusStateImpl) then) =
      __$$$LoginPendingStatusStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$$LoginPendingStatusStateImplCopyWithImpl<$Res>
    extends _$LoginStatusStateCopyWithImpl<$Res, _$$LoginPendingStatusStateImpl>
    implements _$$$LoginPendingStatusStateImplCopyWith<$Res> {
  __$$$LoginPendingStatusStateImplCopyWithImpl(
      _$$LoginPendingStatusStateImpl _value,
      $Res Function(_$$LoginPendingStatusStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginStatusState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$$LoginPendingStatusStateImpl implements _$LoginPendingStatusState {
  const _$$LoginPendingStatusStateImpl();

  @override
  String toString() {
    return 'LoginStatusState.pending()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$$LoginPendingStatusStateImpl);
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
    required TResult Function(_$LoginPureStatusState value) pure,
    required TResult Function(_$LoginPendingStatusState value) pending,
    required TResult Function(_$LoginSuccessStatusState value) success,
    required TResult Function(_$LoginFailureStatusState value) failure,
  }) {
    return pending(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$LoginPureStatusState value)? pure,
    TResult? Function(_$LoginPendingStatusState value)? pending,
    TResult? Function(_$LoginSuccessStatusState value)? success,
    TResult? Function(_$LoginFailureStatusState value)? failure,
  }) {
    return pending?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$LoginPureStatusState value)? pure,
    TResult Function(_$LoginPendingStatusState value)? pending,
    TResult Function(_$LoginSuccessStatusState value)? success,
    TResult Function(_$LoginFailureStatusState value)? failure,
    required TResult orElse(),
  }) {
    if (pending != null) {
      return pending(this);
    }
    return orElse();
  }
}

abstract class _$LoginPendingStatusState implements LoginStatusState {
  const factory _$LoginPendingStatusState() = _$$LoginPendingStatusStateImpl;
}

/// @nodoc
abstract class _$$$LoginSuccessStatusStateImplCopyWith<$Res> {
  factory _$$$LoginSuccessStatusStateImplCopyWith(
          _$$LoginSuccessStatusStateImpl value,
          $Res Function(_$$LoginSuccessStatusStateImpl) then) =
      __$$$LoginSuccessStatusStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$$LoginSuccessStatusStateImplCopyWithImpl<$Res>
    extends _$LoginStatusStateCopyWithImpl<$Res, _$$LoginSuccessStatusStateImpl>
    implements _$$$LoginSuccessStatusStateImplCopyWith<$Res> {
  __$$$LoginSuccessStatusStateImplCopyWithImpl(
      _$$LoginSuccessStatusStateImpl _value,
      $Res Function(_$$LoginSuccessStatusStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginStatusState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$$LoginSuccessStatusStateImpl implements _$LoginSuccessStatusState {
  const _$$LoginSuccessStatusStateImpl();

  @override
  String toString() {
    return 'LoginStatusState.success()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$$LoginSuccessStatusStateImpl);
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
    required TResult Function(_$LoginPureStatusState value) pure,
    required TResult Function(_$LoginPendingStatusState value) pending,
    required TResult Function(_$LoginSuccessStatusState value) success,
    required TResult Function(_$LoginFailureStatusState value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$LoginPureStatusState value)? pure,
    TResult? Function(_$LoginPendingStatusState value)? pending,
    TResult? Function(_$LoginSuccessStatusState value)? success,
    TResult? Function(_$LoginFailureStatusState value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$LoginPureStatusState value)? pure,
    TResult Function(_$LoginPendingStatusState value)? pending,
    TResult Function(_$LoginSuccessStatusState value)? success,
    TResult Function(_$LoginFailureStatusState value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _$LoginSuccessStatusState implements LoginStatusState {
  const factory _$LoginSuccessStatusState() = _$$LoginSuccessStatusStateImpl;
}

/// @nodoc
abstract class _$$$LoginFailureStatusStateImplCopyWith<$Res> {
  factory _$$$LoginFailureStatusStateImplCopyWith(
          _$$LoginFailureStatusStateImpl value,
          $Res Function(_$$LoginFailureStatusStateImpl) then) =
      __$$$LoginFailureStatusStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$$LoginFailureStatusStateImplCopyWithImpl<$Res>
    extends _$LoginStatusStateCopyWithImpl<$Res, _$$LoginFailureStatusStateImpl>
    implements _$$$LoginFailureStatusStateImplCopyWith<$Res> {
  __$$$LoginFailureStatusStateImplCopyWithImpl(
      _$$LoginFailureStatusStateImpl _value,
      $Res Function(_$$LoginFailureStatusStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginStatusState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$$LoginFailureStatusStateImpl implements _$LoginFailureStatusState {
  const _$$LoginFailureStatusStateImpl();

  @override
  String toString() {
    return 'LoginStatusState.failure()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$$LoginFailureStatusStateImpl);
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
    required TResult Function(_$LoginPureStatusState value) pure,
    required TResult Function(_$LoginPendingStatusState value) pending,
    required TResult Function(_$LoginSuccessStatusState value) success,
    required TResult Function(_$LoginFailureStatusState value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$LoginPureStatusState value)? pure,
    TResult? Function(_$LoginPendingStatusState value)? pending,
    TResult? Function(_$LoginSuccessStatusState value)? success,
    TResult? Function(_$LoginFailureStatusState value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$LoginPureStatusState value)? pure,
    TResult Function(_$LoginPendingStatusState value)? pending,
    TResult Function(_$LoginSuccessStatusState value)? success,
    TResult Function(_$LoginFailureStatusState value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _$LoginFailureStatusState implements LoginStatusState {
  const factory _$LoginFailureStatusState() = _$$LoginFailureStatusStateImpl;
}
