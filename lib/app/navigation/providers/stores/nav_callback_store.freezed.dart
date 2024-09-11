// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'nav_callback_store.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ForgotPasswordNavCallbackStore {
  VoidCallback get navigateBack => throw _privateConstructorUsedError;

  /// Create a copy of ForgotPasswordNavCallbackStore
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ForgotPasswordNavCallbackStoreCopyWith<ForgotPasswordNavCallbackStore>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForgotPasswordNavCallbackStoreCopyWith<$Res> {
  factory $ForgotPasswordNavCallbackStoreCopyWith(
          ForgotPasswordNavCallbackStore value,
          $Res Function(ForgotPasswordNavCallbackStore) then) =
      _$ForgotPasswordNavCallbackStoreCopyWithImpl<$Res,
          ForgotPasswordNavCallbackStore>;
  @useResult
  $Res call({VoidCallback navigateBack});
}

/// @nodoc
class _$ForgotPasswordNavCallbackStoreCopyWithImpl<$Res,
        $Val extends ForgotPasswordNavCallbackStore>
    implements $ForgotPasswordNavCallbackStoreCopyWith<$Res> {
  _$ForgotPasswordNavCallbackStoreCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ForgotPasswordNavCallbackStore
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? navigateBack = null,
  }) {
    return _then(_value.copyWith(
      navigateBack: null == navigateBack
          ? _value.navigateBack
          : navigateBack // ignore: cast_nullable_to_non_nullable
              as VoidCallback,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ForgotPasswordNavCallbackStoreImplCopyWith<$Res>
    implements $ForgotPasswordNavCallbackStoreCopyWith<$Res> {
  factory _$$ForgotPasswordNavCallbackStoreImplCopyWith(
          _$ForgotPasswordNavCallbackStoreImpl value,
          $Res Function(_$ForgotPasswordNavCallbackStoreImpl) then) =
      __$$ForgotPasswordNavCallbackStoreImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({VoidCallback navigateBack});
}

/// @nodoc
class __$$ForgotPasswordNavCallbackStoreImplCopyWithImpl<$Res>
    extends _$ForgotPasswordNavCallbackStoreCopyWithImpl<$Res,
        _$ForgotPasswordNavCallbackStoreImpl>
    implements _$$ForgotPasswordNavCallbackStoreImplCopyWith<$Res> {
  __$$ForgotPasswordNavCallbackStoreImplCopyWithImpl(
      _$ForgotPasswordNavCallbackStoreImpl _value,
      $Res Function(_$ForgotPasswordNavCallbackStoreImpl) _then)
      : super(_value, _then);

  /// Create a copy of ForgotPasswordNavCallbackStore
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? navigateBack = null,
  }) {
    return _then(_$ForgotPasswordNavCallbackStoreImpl(
      navigateBack: null == navigateBack
          ? _value.navigateBack
          : navigateBack // ignore: cast_nullable_to_non_nullable
              as VoidCallback,
    ));
  }
}

/// @nodoc

class _$ForgotPasswordNavCallbackStoreImpl
    implements _ForgotPasswordNavCallbackStore {
  const _$ForgotPasswordNavCallbackStoreImpl({required this.navigateBack});

  @override
  final VoidCallback navigateBack;

  @override
  String toString() {
    return 'ForgotPasswordNavCallbackStore(navigateBack: $navigateBack)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForgotPasswordNavCallbackStoreImpl &&
            (identical(other.navigateBack, navigateBack) ||
                other.navigateBack == navigateBack));
  }

  @override
  int get hashCode => Object.hash(runtimeType, navigateBack);

  /// Create a copy of ForgotPasswordNavCallbackStore
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ForgotPasswordNavCallbackStoreImplCopyWith<
          _$ForgotPasswordNavCallbackStoreImpl>
      get copyWith => __$$ForgotPasswordNavCallbackStoreImplCopyWithImpl<
          _$ForgotPasswordNavCallbackStoreImpl>(this, _$identity);
}

abstract class _ForgotPasswordNavCallbackStore
    implements ForgotPasswordNavCallbackStore {
  const factory _ForgotPasswordNavCallbackStore(
          {required final VoidCallback navigateBack}) =
      _$ForgotPasswordNavCallbackStoreImpl;

  @override
  VoidCallback get navigateBack;

  /// Create a copy of ForgotPasswordNavCallbackStore
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ForgotPasswordNavCallbackStoreImplCopyWith<
          _$ForgotPasswordNavCallbackStoreImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LoginNavCallbackStore {
  VoidCallback get navigateToRegister => throw _privateConstructorUsedError;
  dynamic Function(String) get navigateToForgotPassword =>
      throw _privateConstructorUsedError;

  /// Create a copy of LoginNavCallbackStore
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LoginNavCallbackStoreCopyWith<LoginNavCallbackStore> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginNavCallbackStoreCopyWith<$Res> {
  factory $LoginNavCallbackStoreCopyWith(LoginNavCallbackStore value,
          $Res Function(LoginNavCallbackStore) then) =
      _$LoginNavCallbackStoreCopyWithImpl<$Res, LoginNavCallbackStore>;
  @useResult
  $Res call(
      {VoidCallback navigateToRegister,
      dynamic Function(String) navigateToForgotPassword});
}

/// @nodoc
class _$LoginNavCallbackStoreCopyWithImpl<$Res,
        $Val extends LoginNavCallbackStore>
    implements $LoginNavCallbackStoreCopyWith<$Res> {
  _$LoginNavCallbackStoreCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LoginNavCallbackStore
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? navigateToRegister = null,
    Object? navigateToForgotPassword = null,
  }) {
    return _then(_value.copyWith(
      navigateToRegister: null == navigateToRegister
          ? _value.navigateToRegister
          : navigateToRegister // ignore: cast_nullable_to_non_nullable
              as VoidCallback,
      navigateToForgotPassword: null == navigateToForgotPassword
          ? _value.navigateToForgotPassword
          : navigateToForgotPassword // ignore: cast_nullable_to_non_nullable
              as dynamic Function(String),
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoginNavCallbackStoreImplCopyWith<$Res>
    implements $LoginNavCallbackStoreCopyWith<$Res> {
  factory _$$LoginNavCallbackStoreImplCopyWith(
          _$LoginNavCallbackStoreImpl value,
          $Res Function(_$LoginNavCallbackStoreImpl) then) =
      __$$LoginNavCallbackStoreImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {VoidCallback navigateToRegister,
      dynamic Function(String) navigateToForgotPassword});
}

/// @nodoc
class __$$LoginNavCallbackStoreImplCopyWithImpl<$Res>
    extends _$LoginNavCallbackStoreCopyWithImpl<$Res,
        _$LoginNavCallbackStoreImpl>
    implements _$$LoginNavCallbackStoreImplCopyWith<$Res> {
  __$$LoginNavCallbackStoreImplCopyWithImpl(_$LoginNavCallbackStoreImpl _value,
      $Res Function(_$LoginNavCallbackStoreImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginNavCallbackStore
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? navigateToRegister = null,
    Object? navigateToForgotPassword = null,
  }) {
    return _then(_$LoginNavCallbackStoreImpl(
      navigateToRegister: null == navigateToRegister
          ? _value.navigateToRegister
          : navigateToRegister // ignore: cast_nullable_to_non_nullable
              as VoidCallback,
      navigateToForgotPassword: null == navigateToForgotPassword
          ? _value.navigateToForgotPassword
          : navigateToForgotPassword // ignore: cast_nullable_to_non_nullable
              as dynamic Function(String),
    ));
  }
}

/// @nodoc

class _$LoginNavCallbackStoreImpl implements _LoginNavCallbackStore {
  const _$LoginNavCallbackStoreImpl(
      {required this.navigateToRegister,
      required this.navigateToForgotPassword});

  @override
  final VoidCallback navigateToRegister;
  @override
  final dynamic Function(String) navigateToForgotPassword;

  @override
  String toString() {
    return 'LoginNavCallbackStore(navigateToRegister: $navigateToRegister, navigateToForgotPassword: $navigateToForgotPassword)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginNavCallbackStoreImpl &&
            (identical(other.navigateToRegister, navigateToRegister) ||
                other.navigateToRegister == navigateToRegister) &&
            (identical(
                    other.navigateToForgotPassword, navigateToForgotPassword) ||
                other.navigateToForgotPassword == navigateToForgotPassword));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, navigateToRegister, navigateToForgotPassword);

  /// Create a copy of LoginNavCallbackStore
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginNavCallbackStoreImplCopyWith<_$LoginNavCallbackStoreImpl>
      get copyWith => __$$LoginNavCallbackStoreImplCopyWithImpl<
          _$LoginNavCallbackStoreImpl>(this, _$identity);
}

abstract class _LoginNavCallbackStore implements LoginNavCallbackStore {
  const factory _LoginNavCallbackStore(
          {required final VoidCallback navigateToRegister,
          required final dynamic Function(String) navigateToForgotPassword}) =
      _$LoginNavCallbackStoreImpl;

  @override
  VoidCallback get navigateToRegister;
  @override
  dynamic Function(String) get navigateToForgotPassword;

  /// Create a copy of LoginNavCallbackStore
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoginNavCallbackStoreImplCopyWith<_$LoginNavCallbackStoreImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RegisterNavCallbackStore {
  VoidCallback get navigateBack => throw _privateConstructorUsedError;

  /// Create a copy of RegisterNavCallbackStore
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RegisterNavCallbackStoreCopyWith<RegisterNavCallbackStore> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterNavCallbackStoreCopyWith<$Res> {
  factory $RegisterNavCallbackStoreCopyWith(RegisterNavCallbackStore value,
          $Res Function(RegisterNavCallbackStore) then) =
      _$RegisterNavCallbackStoreCopyWithImpl<$Res, RegisterNavCallbackStore>;
  @useResult
  $Res call({VoidCallback navigateBack});
}

/// @nodoc
class _$RegisterNavCallbackStoreCopyWithImpl<$Res,
        $Val extends RegisterNavCallbackStore>
    implements $RegisterNavCallbackStoreCopyWith<$Res> {
  _$RegisterNavCallbackStoreCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RegisterNavCallbackStore
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? navigateBack = null,
  }) {
    return _then(_value.copyWith(
      navigateBack: null == navigateBack
          ? _value.navigateBack
          : navigateBack // ignore: cast_nullable_to_non_nullable
              as VoidCallback,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RegisterNavCallbackStoreImplCopyWith<$Res>
    implements $RegisterNavCallbackStoreCopyWith<$Res> {
  factory _$$RegisterNavCallbackStoreImplCopyWith(
          _$RegisterNavCallbackStoreImpl value,
          $Res Function(_$RegisterNavCallbackStoreImpl) then) =
      __$$RegisterNavCallbackStoreImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({VoidCallback navigateBack});
}

/// @nodoc
class __$$RegisterNavCallbackStoreImplCopyWithImpl<$Res>
    extends _$RegisterNavCallbackStoreCopyWithImpl<$Res,
        _$RegisterNavCallbackStoreImpl>
    implements _$$RegisterNavCallbackStoreImplCopyWith<$Res> {
  __$$RegisterNavCallbackStoreImplCopyWithImpl(
      _$RegisterNavCallbackStoreImpl _value,
      $Res Function(_$RegisterNavCallbackStoreImpl) _then)
      : super(_value, _then);

  /// Create a copy of RegisterNavCallbackStore
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? navigateBack = null,
  }) {
    return _then(_$RegisterNavCallbackStoreImpl(
      navigateBack: null == navigateBack
          ? _value.navigateBack
          : navigateBack // ignore: cast_nullable_to_non_nullable
              as VoidCallback,
    ));
  }
}

/// @nodoc

class _$RegisterNavCallbackStoreImpl implements _RegisterNavCallbackStore {
  const _$RegisterNavCallbackStoreImpl({required this.navigateBack});

  @override
  final VoidCallback navigateBack;

  @override
  String toString() {
    return 'RegisterNavCallbackStore(navigateBack: $navigateBack)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterNavCallbackStoreImpl &&
            (identical(other.navigateBack, navigateBack) ||
                other.navigateBack == navigateBack));
  }

  @override
  int get hashCode => Object.hash(runtimeType, navigateBack);

  /// Create a copy of RegisterNavCallbackStore
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterNavCallbackStoreImplCopyWith<_$RegisterNavCallbackStoreImpl>
      get copyWith => __$$RegisterNavCallbackStoreImplCopyWithImpl<
          _$RegisterNavCallbackStoreImpl>(this, _$identity);
}

abstract class _RegisterNavCallbackStore implements RegisterNavCallbackStore {
  const factory _RegisterNavCallbackStore(
          {required final VoidCallback navigateBack}) =
      _$RegisterNavCallbackStoreImpl;

  @override
  VoidCallback get navigateBack;

  /// Create a copy of RegisterNavCallbackStore
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RegisterNavCallbackStoreImplCopyWith<_$RegisterNavCallbackStoreImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CommunityNavCallbackStore {
  VoidCallback get navigateToTrackTracking =>
      throw _privateConstructorUsedError;

  /// Create a copy of CommunityNavCallbackStore
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CommunityNavCallbackStoreCopyWith<CommunityNavCallbackStore> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommunityNavCallbackStoreCopyWith<$Res> {
  factory $CommunityNavCallbackStoreCopyWith(CommunityNavCallbackStore value,
          $Res Function(CommunityNavCallbackStore) then) =
      _$CommunityNavCallbackStoreCopyWithImpl<$Res, CommunityNavCallbackStore>;
  @useResult
  $Res call({VoidCallback navigateToTrackTracking});
}

/// @nodoc
class _$CommunityNavCallbackStoreCopyWithImpl<$Res,
        $Val extends CommunityNavCallbackStore>
    implements $CommunityNavCallbackStoreCopyWith<$Res> {
  _$CommunityNavCallbackStoreCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CommunityNavCallbackStore
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? navigateToTrackTracking = null,
  }) {
    return _then(_value.copyWith(
      navigateToTrackTracking: null == navigateToTrackTracking
          ? _value.navigateToTrackTracking
          : navigateToTrackTracking // ignore: cast_nullable_to_non_nullable
              as VoidCallback,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CommunityNavCallbackStoreImplCopyWith<$Res>
    implements $CommunityNavCallbackStoreCopyWith<$Res> {
  factory _$$CommunityNavCallbackStoreImplCopyWith(
          _$CommunityNavCallbackStoreImpl value,
          $Res Function(_$CommunityNavCallbackStoreImpl) then) =
      __$$CommunityNavCallbackStoreImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({VoidCallback navigateToTrackTracking});
}

/// @nodoc
class __$$CommunityNavCallbackStoreImplCopyWithImpl<$Res>
    extends _$CommunityNavCallbackStoreCopyWithImpl<$Res,
        _$CommunityNavCallbackStoreImpl>
    implements _$$CommunityNavCallbackStoreImplCopyWith<$Res> {
  __$$CommunityNavCallbackStoreImplCopyWithImpl(
      _$CommunityNavCallbackStoreImpl _value,
      $Res Function(_$CommunityNavCallbackStoreImpl) _then)
      : super(_value, _then);

  /// Create a copy of CommunityNavCallbackStore
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? navigateToTrackTracking = null,
  }) {
    return _then(_$CommunityNavCallbackStoreImpl(
      navigateToTrackTracking: null == navigateToTrackTracking
          ? _value.navigateToTrackTracking
          : navigateToTrackTracking // ignore: cast_nullable_to_non_nullable
              as VoidCallback,
    ));
  }
}

/// @nodoc

class _$CommunityNavCallbackStoreImpl implements _CommunityNavCallbackStore {
  const _$CommunityNavCallbackStoreImpl(
      {required this.navigateToTrackTracking});

  @override
  final VoidCallback navigateToTrackTracking;

  @override
  String toString() {
    return 'CommunityNavCallbackStore(navigateToTrackTracking: $navigateToTrackTracking)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommunityNavCallbackStoreImpl &&
            (identical(
                    other.navigateToTrackTracking, navigateToTrackTracking) ||
                other.navigateToTrackTracking == navigateToTrackTracking));
  }

  @override
  int get hashCode => Object.hash(runtimeType, navigateToTrackTracking);

  /// Create a copy of CommunityNavCallbackStore
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CommunityNavCallbackStoreImplCopyWith<_$CommunityNavCallbackStoreImpl>
      get copyWith => __$$CommunityNavCallbackStoreImplCopyWithImpl<
          _$CommunityNavCallbackStoreImpl>(this, _$identity);
}

abstract class _CommunityNavCallbackStore implements CommunityNavCallbackStore {
  const factory _CommunityNavCallbackStore(
          {required final VoidCallback navigateToTrackTracking}) =
      _$CommunityNavCallbackStoreImpl;

  @override
  VoidCallback get navigateToTrackTracking;

  /// Create a copy of CommunityNavCallbackStore
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CommunityNavCallbackStoreImplCopyWith<_$CommunityNavCallbackStoreImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RecordTrackNavCallbackStore {
  VoidCallback get navigateBack => throw _privateConstructorUsedError;
  VoidCallback get navigateToAddMemory => throw _privateConstructorUsedError;
  VoidCallback get navigateToAddRecordTrack =>
      throw _privateConstructorUsedError;

  /// Create a copy of RecordTrackNavCallbackStore
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RecordTrackNavCallbackStoreCopyWith<RecordTrackNavCallbackStore>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecordTrackNavCallbackStoreCopyWith<$Res> {
  factory $RecordTrackNavCallbackStoreCopyWith(
          RecordTrackNavCallbackStore value,
          $Res Function(RecordTrackNavCallbackStore) then) =
      _$RecordTrackNavCallbackStoreCopyWithImpl<$Res,
          RecordTrackNavCallbackStore>;
  @useResult
  $Res call(
      {VoidCallback navigateBack,
      VoidCallback navigateToAddMemory,
      VoidCallback navigateToAddRecordTrack});
}

/// @nodoc
class _$RecordTrackNavCallbackStoreCopyWithImpl<$Res,
        $Val extends RecordTrackNavCallbackStore>
    implements $RecordTrackNavCallbackStoreCopyWith<$Res> {
  _$RecordTrackNavCallbackStoreCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RecordTrackNavCallbackStore
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? navigateBack = null,
    Object? navigateToAddMemory = null,
    Object? navigateToAddRecordTrack = null,
  }) {
    return _then(_value.copyWith(
      navigateBack: null == navigateBack
          ? _value.navigateBack
          : navigateBack // ignore: cast_nullable_to_non_nullable
              as VoidCallback,
      navigateToAddMemory: null == navigateToAddMemory
          ? _value.navigateToAddMemory
          : navigateToAddMemory // ignore: cast_nullable_to_non_nullable
              as VoidCallback,
      navigateToAddRecordTrack: null == navigateToAddRecordTrack
          ? _value.navigateToAddRecordTrack
          : navigateToAddRecordTrack // ignore: cast_nullable_to_non_nullable
              as VoidCallback,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RecordTrackNavCallbackStoreImplCopyWith<$Res>
    implements $RecordTrackNavCallbackStoreCopyWith<$Res> {
  factory _$$RecordTrackNavCallbackStoreImplCopyWith(
          _$RecordTrackNavCallbackStoreImpl value,
          $Res Function(_$RecordTrackNavCallbackStoreImpl) then) =
      __$$RecordTrackNavCallbackStoreImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {VoidCallback navigateBack,
      VoidCallback navigateToAddMemory,
      VoidCallback navigateToAddRecordTrack});
}

/// @nodoc
class __$$RecordTrackNavCallbackStoreImplCopyWithImpl<$Res>
    extends _$RecordTrackNavCallbackStoreCopyWithImpl<$Res,
        _$RecordTrackNavCallbackStoreImpl>
    implements _$$RecordTrackNavCallbackStoreImplCopyWith<$Res> {
  __$$RecordTrackNavCallbackStoreImplCopyWithImpl(
      _$RecordTrackNavCallbackStoreImpl _value,
      $Res Function(_$RecordTrackNavCallbackStoreImpl) _then)
      : super(_value, _then);

  /// Create a copy of RecordTrackNavCallbackStore
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? navigateBack = null,
    Object? navigateToAddMemory = null,
    Object? navigateToAddRecordTrack = null,
  }) {
    return _then(_$RecordTrackNavCallbackStoreImpl(
      navigateBack: null == navigateBack
          ? _value.navigateBack
          : navigateBack // ignore: cast_nullable_to_non_nullable
              as VoidCallback,
      navigateToAddMemory: null == navigateToAddMemory
          ? _value.navigateToAddMemory
          : navigateToAddMemory // ignore: cast_nullable_to_non_nullable
              as VoidCallback,
      navigateToAddRecordTrack: null == navigateToAddRecordTrack
          ? _value.navigateToAddRecordTrack
          : navigateToAddRecordTrack // ignore: cast_nullable_to_non_nullable
              as VoidCallback,
    ));
  }
}

/// @nodoc

class _$RecordTrackNavCallbackStoreImpl
    implements _RecordTrackNavCallbackStore {
  const _$RecordTrackNavCallbackStoreImpl(
      {required this.navigateBack,
      required this.navigateToAddMemory,
      required this.navigateToAddRecordTrack});

  @override
  final VoidCallback navigateBack;
  @override
  final VoidCallback navigateToAddMemory;
  @override
  final VoidCallback navigateToAddRecordTrack;

  @override
  String toString() {
    return 'RecordTrackNavCallbackStore(navigateBack: $navigateBack, navigateToAddMemory: $navigateToAddMemory, navigateToAddRecordTrack: $navigateToAddRecordTrack)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecordTrackNavCallbackStoreImpl &&
            (identical(other.navigateBack, navigateBack) ||
                other.navigateBack == navigateBack) &&
            (identical(other.navigateToAddMemory, navigateToAddMemory) ||
                other.navigateToAddMemory == navigateToAddMemory) &&
            (identical(
                    other.navigateToAddRecordTrack, navigateToAddRecordTrack) ||
                other.navigateToAddRecordTrack == navigateToAddRecordTrack));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, navigateBack, navigateToAddMemory, navigateToAddRecordTrack);

  /// Create a copy of RecordTrackNavCallbackStore
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RecordTrackNavCallbackStoreImplCopyWith<_$RecordTrackNavCallbackStoreImpl>
      get copyWith => __$$RecordTrackNavCallbackStoreImplCopyWithImpl<
          _$RecordTrackNavCallbackStoreImpl>(this, _$identity);
}

abstract class _RecordTrackNavCallbackStore
    implements RecordTrackNavCallbackStore {
  const factory _RecordTrackNavCallbackStore(
          {required final VoidCallback navigateBack,
          required final VoidCallback navigateToAddMemory,
          required final VoidCallback navigateToAddRecordTrack}) =
      _$RecordTrackNavCallbackStoreImpl;

  @override
  VoidCallback get navigateBack;
  @override
  VoidCallback get navigateToAddMemory;
  @override
  VoidCallback get navigateToAddRecordTrack;

  /// Create a copy of RecordTrackNavCallbackStore
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RecordTrackNavCallbackStoreImplCopyWith<_$RecordTrackNavCallbackStoreImpl>
      get copyWith => throw _privateConstructorUsedError;
}
