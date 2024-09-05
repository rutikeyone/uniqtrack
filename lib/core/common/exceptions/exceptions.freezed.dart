// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'exceptions.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AppError {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() base,
    required TResult Function(FirebaseErrorCategory category) firebase,
    required TResult Function(NetworkErrorCategory category) network,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? base,
    TResult? Function(FirebaseErrorCategory category)? firebase,
    TResult? Function(NetworkErrorCategory category)? network,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? base,
    TResult Function(FirebaseErrorCategory category)? firebase,
    TResult Function(NetworkErrorCategory category)? network,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AppBaseError value) base,
    required TResult Function(_AppFirebaseError value) firebase,
    required TResult Function(_AppNetworkError value) network,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AppBaseError value)? base,
    TResult? Function(_AppFirebaseError value)? firebase,
    TResult? Function(_AppNetworkError value)? network,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AppBaseError value)? base,
    TResult Function(_AppFirebaseError value)? firebase,
    TResult Function(_AppNetworkError value)? network,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppErrorCopyWith<$Res> {
  factory $AppErrorCopyWith(AppError value, $Res Function(AppError) then) =
      _$AppErrorCopyWithImpl<$Res, AppError>;
}

/// @nodoc
class _$AppErrorCopyWithImpl<$Res, $Val extends AppError>
    implements $AppErrorCopyWith<$Res> {
  _$AppErrorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppError
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$AppBaseErrorImplCopyWith<$Res> {
  factory _$$AppBaseErrorImplCopyWith(
          _$AppBaseErrorImpl value, $Res Function(_$AppBaseErrorImpl) then) =
      __$$AppBaseErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AppBaseErrorImplCopyWithImpl<$Res>
    extends _$AppErrorCopyWithImpl<$Res, _$AppBaseErrorImpl>
    implements _$$AppBaseErrorImplCopyWith<$Res> {
  __$$AppBaseErrorImplCopyWithImpl(
      _$AppBaseErrorImpl _value, $Res Function(_$AppBaseErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppError
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AppBaseErrorImpl extends _AppBaseError {
  const _$AppBaseErrorImpl() : super._();

  @override
  String toString() {
    return 'AppError.base()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AppBaseErrorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() base,
    required TResult Function(FirebaseErrorCategory category) firebase,
    required TResult Function(NetworkErrorCategory category) network,
  }) {
    return base();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? base,
    TResult? Function(FirebaseErrorCategory category)? firebase,
    TResult? Function(NetworkErrorCategory category)? network,
  }) {
    return base?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? base,
    TResult Function(FirebaseErrorCategory category)? firebase,
    TResult Function(NetworkErrorCategory category)? network,
    required TResult orElse(),
  }) {
    if (base != null) {
      return base();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AppBaseError value) base,
    required TResult Function(_AppFirebaseError value) firebase,
    required TResult Function(_AppNetworkError value) network,
  }) {
    return base(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AppBaseError value)? base,
    TResult? Function(_AppFirebaseError value)? firebase,
    TResult? Function(_AppNetworkError value)? network,
  }) {
    return base?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AppBaseError value)? base,
    TResult Function(_AppFirebaseError value)? firebase,
    TResult Function(_AppNetworkError value)? network,
    required TResult orElse(),
  }) {
    if (base != null) {
      return base(this);
    }
    return orElse();
  }
}

abstract class _AppBaseError extends AppError {
  const factory _AppBaseError() = _$AppBaseErrorImpl;
  const _AppBaseError._() : super._();
}

/// @nodoc
abstract class _$$AppFirebaseErrorImplCopyWith<$Res> {
  factory _$$AppFirebaseErrorImplCopyWith(_$AppFirebaseErrorImpl value,
          $Res Function(_$AppFirebaseErrorImpl) then) =
      __$$AppFirebaseErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({FirebaseErrorCategory category});

  $FirebaseErrorCategoryCopyWith<$Res> get category;
}

/// @nodoc
class __$$AppFirebaseErrorImplCopyWithImpl<$Res>
    extends _$AppErrorCopyWithImpl<$Res, _$AppFirebaseErrorImpl>
    implements _$$AppFirebaseErrorImplCopyWith<$Res> {
  __$$AppFirebaseErrorImplCopyWithImpl(_$AppFirebaseErrorImpl _value,
      $Res Function(_$AppFirebaseErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppError
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
  }) {
    return _then(_$AppFirebaseErrorImpl(
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as FirebaseErrorCategory,
    ));
  }

  /// Create a copy of AppError
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FirebaseErrorCategoryCopyWith<$Res> get category {
    return $FirebaseErrorCategoryCopyWith<$Res>(_value.category, (value) {
      return _then(_value.copyWith(category: value));
    });
  }
}

/// @nodoc

class _$AppFirebaseErrorImpl extends _AppFirebaseError {
  const _$AppFirebaseErrorImpl({required this.category}) : super._();

  @override
  final FirebaseErrorCategory category;

  @override
  String toString() {
    return 'AppError.firebase(category: $category)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppFirebaseErrorImpl &&
            (identical(other.category, category) ||
                other.category == category));
  }

  @override
  int get hashCode => Object.hash(runtimeType, category);

  /// Create a copy of AppError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AppFirebaseErrorImplCopyWith<_$AppFirebaseErrorImpl> get copyWith =>
      __$$AppFirebaseErrorImplCopyWithImpl<_$AppFirebaseErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() base,
    required TResult Function(FirebaseErrorCategory category) firebase,
    required TResult Function(NetworkErrorCategory category) network,
  }) {
    return firebase(category);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? base,
    TResult? Function(FirebaseErrorCategory category)? firebase,
    TResult? Function(NetworkErrorCategory category)? network,
  }) {
    return firebase?.call(category);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? base,
    TResult Function(FirebaseErrorCategory category)? firebase,
    TResult Function(NetworkErrorCategory category)? network,
    required TResult orElse(),
  }) {
    if (firebase != null) {
      return firebase(category);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AppBaseError value) base,
    required TResult Function(_AppFirebaseError value) firebase,
    required TResult Function(_AppNetworkError value) network,
  }) {
    return firebase(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AppBaseError value)? base,
    TResult? Function(_AppFirebaseError value)? firebase,
    TResult? Function(_AppNetworkError value)? network,
  }) {
    return firebase?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AppBaseError value)? base,
    TResult Function(_AppFirebaseError value)? firebase,
    TResult Function(_AppNetworkError value)? network,
    required TResult orElse(),
  }) {
    if (firebase != null) {
      return firebase(this);
    }
    return orElse();
  }
}

abstract class _AppFirebaseError extends AppError {
  const factory _AppFirebaseError(
      {required final FirebaseErrorCategory category}) = _$AppFirebaseErrorImpl;
  const _AppFirebaseError._() : super._();

  FirebaseErrorCategory get category;

  /// Create a copy of AppError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppFirebaseErrorImplCopyWith<_$AppFirebaseErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AppNetworkErrorImplCopyWith<$Res> {
  factory _$$AppNetworkErrorImplCopyWith(_$AppNetworkErrorImpl value,
          $Res Function(_$AppNetworkErrorImpl) then) =
      __$$AppNetworkErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({NetworkErrorCategory category});

  $NetworkErrorCategoryCopyWith<$Res> get category;
}

/// @nodoc
class __$$AppNetworkErrorImplCopyWithImpl<$Res>
    extends _$AppErrorCopyWithImpl<$Res, _$AppNetworkErrorImpl>
    implements _$$AppNetworkErrorImplCopyWith<$Res> {
  __$$AppNetworkErrorImplCopyWithImpl(
      _$AppNetworkErrorImpl _value, $Res Function(_$AppNetworkErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppError
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
  }) {
    return _then(_$AppNetworkErrorImpl(
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as NetworkErrorCategory,
    ));
  }

  /// Create a copy of AppError
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $NetworkErrorCategoryCopyWith<$Res> get category {
    return $NetworkErrorCategoryCopyWith<$Res>(_value.category, (value) {
      return _then(_value.copyWith(category: value));
    });
  }
}

/// @nodoc

class _$AppNetworkErrorImpl extends _AppNetworkError {
  const _$AppNetworkErrorImpl({required this.category}) : super._();

  @override
  final NetworkErrorCategory category;

  @override
  String toString() {
    return 'AppError.network(category: $category)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppNetworkErrorImpl &&
            (identical(other.category, category) ||
                other.category == category));
  }

  @override
  int get hashCode => Object.hash(runtimeType, category);

  /// Create a copy of AppError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AppNetworkErrorImplCopyWith<_$AppNetworkErrorImpl> get copyWith =>
      __$$AppNetworkErrorImplCopyWithImpl<_$AppNetworkErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() base,
    required TResult Function(FirebaseErrorCategory category) firebase,
    required TResult Function(NetworkErrorCategory category) network,
  }) {
    return network(category);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? base,
    TResult? Function(FirebaseErrorCategory category)? firebase,
    TResult? Function(NetworkErrorCategory category)? network,
  }) {
    return network?.call(category);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? base,
    TResult Function(FirebaseErrorCategory category)? firebase,
    TResult Function(NetworkErrorCategory category)? network,
    required TResult orElse(),
  }) {
    if (network != null) {
      return network(category);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AppBaseError value) base,
    required TResult Function(_AppFirebaseError value) firebase,
    required TResult Function(_AppNetworkError value) network,
  }) {
    return network(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AppBaseError value)? base,
    TResult? Function(_AppFirebaseError value)? firebase,
    TResult? Function(_AppNetworkError value)? network,
  }) {
    return network?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AppBaseError value)? base,
    TResult Function(_AppFirebaseError value)? firebase,
    TResult Function(_AppNetworkError value)? network,
    required TResult orElse(),
  }) {
    if (network != null) {
      return network(this);
    }
    return orElse();
  }
}

abstract class _AppNetworkError extends AppError {
  const factory _AppNetworkError(
      {required final NetworkErrorCategory category}) = _$AppNetworkErrorImpl;
  const _AppNetworkError._() : super._();

  NetworkErrorCategory get category;

  /// Create a copy of AppError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppNetworkErrorImplCopyWith<_$AppNetworkErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FirebaseErrorCategory {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() base,
    required TResult Function() emailAlreadyInUse,
    required TResult Function() invalidEmail,
    required TResult Function() operationNotAllowed,
    required TResult Function() weakPassword,
    required TResult Function() tooManyRequests,
    required TResult Function() userTokenExpired,
    required TResult Function() networkRequestFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? base,
    TResult? Function()? emailAlreadyInUse,
    TResult? Function()? invalidEmail,
    TResult? Function()? operationNotAllowed,
    TResult? Function()? weakPassword,
    TResult? Function()? tooManyRequests,
    TResult? Function()? userTokenExpired,
    TResult? Function()? networkRequestFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? base,
    TResult Function()? emailAlreadyInUse,
    TResult Function()? invalidEmail,
    TResult Function()? operationNotAllowed,
    TResult Function()? weakPassword,
    TResult Function()? tooManyRequests,
    TResult Function()? userTokenExpired,
    TResult Function()? networkRequestFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FirebaseBaseErrorCategory value) base,
    required TResult Function(_FirebaseEmailAlreadyInUseErrorCategory value)
        emailAlreadyInUse,
    required TResult Function(_FirebaseInvalidEmailErrorCategory value)
        invalidEmail,
    required TResult Function(_FirebaseOperationNotAllowedErrorCategory value)
        operationNotAllowed,
    required TResult Function(_FirebaseWeakPasswordErrorCategory value)
        weakPassword,
    required TResult Function(_FirebaseTooManyRequestsErrorCategory value)
        tooManyRequests,
    required TResult Function(_FirebaseUserTokenExpiredErrorCategory value)
        userTokenExpired,
    required TResult Function(_FirebaseNetworkRequestsFailedErrorCategory value)
        networkRequestFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FirebaseBaseErrorCategory value)? base,
    TResult? Function(_FirebaseEmailAlreadyInUseErrorCategory value)?
        emailAlreadyInUse,
    TResult? Function(_FirebaseInvalidEmailErrorCategory value)? invalidEmail,
    TResult? Function(_FirebaseOperationNotAllowedErrorCategory value)?
        operationNotAllowed,
    TResult? Function(_FirebaseWeakPasswordErrorCategory value)? weakPassword,
    TResult? Function(_FirebaseTooManyRequestsErrorCategory value)?
        tooManyRequests,
    TResult? Function(_FirebaseUserTokenExpiredErrorCategory value)?
        userTokenExpired,
    TResult? Function(_FirebaseNetworkRequestsFailedErrorCategory value)?
        networkRequestFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FirebaseBaseErrorCategory value)? base,
    TResult Function(_FirebaseEmailAlreadyInUseErrorCategory value)?
        emailAlreadyInUse,
    TResult Function(_FirebaseInvalidEmailErrorCategory value)? invalidEmail,
    TResult Function(_FirebaseOperationNotAllowedErrorCategory value)?
        operationNotAllowed,
    TResult Function(_FirebaseWeakPasswordErrorCategory value)? weakPassword,
    TResult Function(_FirebaseTooManyRequestsErrorCategory value)?
        tooManyRequests,
    TResult Function(_FirebaseUserTokenExpiredErrorCategory value)?
        userTokenExpired,
    TResult Function(_FirebaseNetworkRequestsFailedErrorCategory value)?
        networkRequestFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FirebaseErrorCategoryCopyWith<$Res> {
  factory $FirebaseErrorCategoryCopyWith(FirebaseErrorCategory value,
          $Res Function(FirebaseErrorCategory) then) =
      _$FirebaseErrorCategoryCopyWithImpl<$Res, FirebaseErrorCategory>;
}

/// @nodoc
class _$FirebaseErrorCategoryCopyWithImpl<$Res,
        $Val extends FirebaseErrorCategory>
    implements $FirebaseErrorCategoryCopyWith<$Res> {
  _$FirebaseErrorCategoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FirebaseErrorCategory
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$FirebaseBaseErrorCategoryImplCopyWith<$Res> {
  factory _$$FirebaseBaseErrorCategoryImplCopyWith(
          _$FirebaseBaseErrorCategoryImpl value,
          $Res Function(_$FirebaseBaseErrorCategoryImpl) then) =
      __$$FirebaseBaseErrorCategoryImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FirebaseBaseErrorCategoryImplCopyWithImpl<$Res>
    extends _$FirebaseErrorCategoryCopyWithImpl<$Res,
        _$FirebaseBaseErrorCategoryImpl>
    implements _$$FirebaseBaseErrorCategoryImplCopyWith<$Res> {
  __$$FirebaseBaseErrorCategoryImplCopyWithImpl(
      _$FirebaseBaseErrorCategoryImpl _value,
      $Res Function(_$FirebaseBaseErrorCategoryImpl) _then)
      : super(_value, _then);

  /// Create a copy of FirebaseErrorCategory
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FirebaseBaseErrorCategoryImpl implements _FirebaseBaseErrorCategory {
  const _$FirebaseBaseErrorCategoryImpl();

  @override
  String toString() {
    return 'FirebaseErrorCategory.base()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FirebaseBaseErrorCategoryImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() base,
    required TResult Function() emailAlreadyInUse,
    required TResult Function() invalidEmail,
    required TResult Function() operationNotAllowed,
    required TResult Function() weakPassword,
    required TResult Function() tooManyRequests,
    required TResult Function() userTokenExpired,
    required TResult Function() networkRequestFailed,
  }) {
    return base();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? base,
    TResult? Function()? emailAlreadyInUse,
    TResult? Function()? invalidEmail,
    TResult? Function()? operationNotAllowed,
    TResult? Function()? weakPassword,
    TResult? Function()? tooManyRequests,
    TResult? Function()? userTokenExpired,
    TResult? Function()? networkRequestFailed,
  }) {
    return base?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? base,
    TResult Function()? emailAlreadyInUse,
    TResult Function()? invalidEmail,
    TResult Function()? operationNotAllowed,
    TResult Function()? weakPassword,
    TResult Function()? tooManyRequests,
    TResult Function()? userTokenExpired,
    TResult Function()? networkRequestFailed,
    required TResult orElse(),
  }) {
    if (base != null) {
      return base();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FirebaseBaseErrorCategory value) base,
    required TResult Function(_FirebaseEmailAlreadyInUseErrorCategory value)
        emailAlreadyInUse,
    required TResult Function(_FirebaseInvalidEmailErrorCategory value)
        invalidEmail,
    required TResult Function(_FirebaseOperationNotAllowedErrorCategory value)
        operationNotAllowed,
    required TResult Function(_FirebaseWeakPasswordErrorCategory value)
        weakPassword,
    required TResult Function(_FirebaseTooManyRequestsErrorCategory value)
        tooManyRequests,
    required TResult Function(_FirebaseUserTokenExpiredErrorCategory value)
        userTokenExpired,
    required TResult Function(_FirebaseNetworkRequestsFailedErrorCategory value)
        networkRequestFailed,
  }) {
    return base(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FirebaseBaseErrorCategory value)? base,
    TResult? Function(_FirebaseEmailAlreadyInUseErrorCategory value)?
        emailAlreadyInUse,
    TResult? Function(_FirebaseInvalidEmailErrorCategory value)? invalidEmail,
    TResult? Function(_FirebaseOperationNotAllowedErrorCategory value)?
        operationNotAllowed,
    TResult? Function(_FirebaseWeakPasswordErrorCategory value)? weakPassword,
    TResult? Function(_FirebaseTooManyRequestsErrorCategory value)?
        tooManyRequests,
    TResult? Function(_FirebaseUserTokenExpiredErrorCategory value)?
        userTokenExpired,
    TResult? Function(_FirebaseNetworkRequestsFailedErrorCategory value)?
        networkRequestFailed,
  }) {
    return base?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FirebaseBaseErrorCategory value)? base,
    TResult Function(_FirebaseEmailAlreadyInUseErrorCategory value)?
        emailAlreadyInUse,
    TResult Function(_FirebaseInvalidEmailErrorCategory value)? invalidEmail,
    TResult Function(_FirebaseOperationNotAllowedErrorCategory value)?
        operationNotAllowed,
    TResult Function(_FirebaseWeakPasswordErrorCategory value)? weakPassword,
    TResult Function(_FirebaseTooManyRequestsErrorCategory value)?
        tooManyRequests,
    TResult Function(_FirebaseUserTokenExpiredErrorCategory value)?
        userTokenExpired,
    TResult Function(_FirebaseNetworkRequestsFailedErrorCategory value)?
        networkRequestFailed,
    required TResult orElse(),
  }) {
    if (base != null) {
      return base(this);
    }
    return orElse();
  }
}

abstract class _FirebaseBaseErrorCategory implements FirebaseErrorCategory {
  const factory _FirebaseBaseErrorCategory() = _$FirebaseBaseErrorCategoryImpl;
}

/// @nodoc
abstract class _$$FirebaseEmailAlreadyInUseErrorCategoryImplCopyWith<$Res> {
  factory _$$FirebaseEmailAlreadyInUseErrorCategoryImplCopyWith(
          _$FirebaseEmailAlreadyInUseErrorCategoryImpl value,
          $Res Function(_$FirebaseEmailAlreadyInUseErrorCategoryImpl) then) =
      __$$FirebaseEmailAlreadyInUseErrorCategoryImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FirebaseEmailAlreadyInUseErrorCategoryImplCopyWithImpl<$Res>
    extends _$FirebaseErrorCategoryCopyWithImpl<$Res,
        _$FirebaseEmailAlreadyInUseErrorCategoryImpl>
    implements _$$FirebaseEmailAlreadyInUseErrorCategoryImplCopyWith<$Res> {
  __$$FirebaseEmailAlreadyInUseErrorCategoryImplCopyWithImpl(
      _$FirebaseEmailAlreadyInUseErrorCategoryImpl _value,
      $Res Function(_$FirebaseEmailAlreadyInUseErrorCategoryImpl) _then)
      : super(_value, _then);

  /// Create a copy of FirebaseErrorCategory
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FirebaseEmailAlreadyInUseErrorCategoryImpl
    implements _FirebaseEmailAlreadyInUseErrorCategory {
  const _$FirebaseEmailAlreadyInUseErrorCategoryImpl();

  @override
  String toString() {
    return 'FirebaseErrorCategory.emailAlreadyInUse()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FirebaseEmailAlreadyInUseErrorCategoryImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() base,
    required TResult Function() emailAlreadyInUse,
    required TResult Function() invalidEmail,
    required TResult Function() operationNotAllowed,
    required TResult Function() weakPassword,
    required TResult Function() tooManyRequests,
    required TResult Function() userTokenExpired,
    required TResult Function() networkRequestFailed,
  }) {
    return emailAlreadyInUse();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? base,
    TResult? Function()? emailAlreadyInUse,
    TResult? Function()? invalidEmail,
    TResult? Function()? operationNotAllowed,
    TResult? Function()? weakPassword,
    TResult? Function()? tooManyRequests,
    TResult? Function()? userTokenExpired,
    TResult? Function()? networkRequestFailed,
  }) {
    return emailAlreadyInUse?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? base,
    TResult Function()? emailAlreadyInUse,
    TResult Function()? invalidEmail,
    TResult Function()? operationNotAllowed,
    TResult Function()? weakPassword,
    TResult Function()? tooManyRequests,
    TResult Function()? userTokenExpired,
    TResult Function()? networkRequestFailed,
    required TResult orElse(),
  }) {
    if (emailAlreadyInUse != null) {
      return emailAlreadyInUse();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FirebaseBaseErrorCategory value) base,
    required TResult Function(_FirebaseEmailAlreadyInUseErrorCategory value)
        emailAlreadyInUse,
    required TResult Function(_FirebaseInvalidEmailErrorCategory value)
        invalidEmail,
    required TResult Function(_FirebaseOperationNotAllowedErrorCategory value)
        operationNotAllowed,
    required TResult Function(_FirebaseWeakPasswordErrorCategory value)
        weakPassword,
    required TResult Function(_FirebaseTooManyRequestsErrorCategory value)
        tooManyRequests,
    required TResult Function(_FirebaseUserTokenExpiredErrorCategory value)
        userTokenExpired,
    required TResult Function(_FirebaseNetworkRequestsFailedErrorCategory value)
        networkRequestFailed,
  }) {
    return emailAlreadyInUse(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FirebaseBaseErrorCategory value)? base,
    TResult? Function(_FirebaseEmailAlreadyInUseErrorCategory value)?
        emailAlreadyInUse,
    TResult? Function(_FirebaseInvalidEmailErrorCategory value)? invalidEmail,
    TResult? Function(_FirebaseOperationNotAllowedErrorCategory value)?
        operationNotAllowed,
    TResult? Function(_FirebaseWeakPasswordErrorCategory value)? weakPassword,
    TResult? Function(_FirebaseTooManyRequestsErrorCategory value)?
        tooManyRequests,
    TResult? Function(_FirebaseUserTokenExpiredErrorCategory value)?
        userTokenExpired,
    TResult? Function(_FirebaseNetworkRequestsFailedErrorCategory value)?
        networkRequestFailed,
  }) {
    return emailAlreadyInUse?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FirebaseBaseErrorCategory value)? base,
    TResult Function(_FirebaseEmailAlreadyInUseErrorCategory value)?
        emailAlreadyInUse,
    TResult Function(_FirebaseInvalidEmailErrorCategory value)? invalidEmail,
    TResult Function(_FirebaseOperationNotAllowedErrorCategory value)?
        operationNotAllowed,
    TResult Function(_FirebaseWeakPasswordErrorCategory value)? weakPassword,
    TResult Function(_FirebaseTooManyRequestsErrorCategory value)?
        tooManyRequests,
    TResult Function(_FirebaseUserTokenExpiredErrorCategory value)?
        userTokenExpired,
    TResult Function(_FirebaseNetworkRequestsFailedErrorCategory value)?
        networkRequestFailed,
    required TResult orElse(),
  }) {
    if (emailAlreadyInUse != null) {
      return emailAlreadyInUse(this);
    }
    return orElse();
  }
}

abstract class _FirebaseEmailAlreadyInUseErrorCategory
    implements FirebaseErrorCategory {
  const factory _FirebaseEmailAlreadyInUseErrorCategory() =
      _$FirebaseEmailAlreadyInUseErrorCategoryImpl;
}

/// @nodoc
abstract class _$$FirebaseInvalidEmailErrorCategoryImplCopyWith<$Res> {
  factory _$$FirebaseInvalidEmailErrorCategoryImplCopyWith(
          _$FirebaseInvalidEmailErrorCategoryImpl value,
          $Res Function(_$FirebaseInvalidEmailErrorCategoryImpl) then) =
      __$$FirebaseInvalidEmailErrorCategoryImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FirebaseInvalidEmailErrorCategoryImplCopyWithImpl<$Res>
    extends _$FirebaseErrorCategoryCopyWithImpl<$Res,
        _$FirebaseInvalidEmailErrorCategoryImpl>
    implements _$$FirebaseInvalidEmailErrorCategoryImplCopyWith<$Res> {
  __$$FirebaseInvalidEmailErrorCategoryImplCopyWithImpl(
      _$FirebaseInvalidEmailErrorCategoryImpl _value,
      $Res Function(_$FirebaseInvalidEmailErrorCategoryImpl) _then)
      : super(_value, _then);

  /// Create a copy of FirebaseErrorCategory
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FirebaseInvalidEmailErrorCategoryImpl
    implements _FirebaseInvalidEmailErrorCategory {
  const _$FirebaseInvalidEmailErrorCategoryImpl();

  @override
  String toString() {
    return 'FirebaseErrorCategory.invalidEmail()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FirebaseInvalidEmailErrorCategoryImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() base,
    required TResult Function() emailAlreadyInUse,
    required TResult Function() invalidEmail,
    required TResult Function() operationNotAllowed,
    required TResult Function() weakPassword,
    required TResult Function() tooManyRequests,
    required TResult Function() userTokenExpired,
    required TResult Function() networkRequestFailed,
  }) {
    return invalidEmail();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? base,
    TResult? Function()? emailAlreadyInUse,
    TResult? Function()? invalidEmail,
    TResult? Function()? operationNotAllowed,
    TResult? Function()? weakPassword,
    TResult? Function()? tooManyRequests,
    TResult? Function()? userTokenExpired,
    TResult? Function()? networkRequestFailed,
  }) {
    return invalidEmail?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? base,
    TResult Function()? emailAlreadyInUse,
    TResult Function()? invalidEmail,
    TResult Function()? operationNotAllowed,
    TResult Function()? weakPassword,
    TResult Function()? tooManyRequests,
    TResult Function()? userTokenExpired,
    TResult Function()? networkRequestFailed,
    required TResult orElse(),
  }) {
    if (invalidEmail != null) {
      return invalidEmail();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FirebaseBaseErrorCategory value) base,
    required TResult Function(_FirebaseEmailAlreadyInUseErrorCategory value)
        emailAlreadyInUse,
    required TResult Function(_FirebaseInvalidEmailErrorCategory value)
        invalidEmail,
    required TResult Function(_FirebaseOperationNotAllowedErrorCategory value)
        operationNotAllowed,
    required TResult Function(_FirebaseWeakPasswordErrorCategory value)
        weakPassword,
    required TResult Function(_FirebaseTooManyRequestsErrorCategory value)
        tooManyRequests,
    required TResult Function(_FirebaseUserTokenExpiredErrorCategory value)
        userTokenExpired,
    required TResult Function(_FirebaseNetworkRequestsFailedErrorCategory value)
        networkRequestFailed,
  }) {
    return invalidEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FirebaseBaseErrorCategory value)? base,
    TResult? Function(_FirebaseEmailAlreadyInUseErrorCategory value)?
        emailAlreadyInUse,
    TResult? Function(_FirebaseInvalidEmailErrorCategory value)? invalidEmail,
    TResult? Function(_FirebaseOperationNotAllowedErrorCategory value)?
        operationNotAllowed,
    TResult? Function(_FirebaseWeakPasswordErrorCategory value)? weakPassword,
    TResult? Function(_FirebaseTooManyRequestsErrorCategory value)?
        tooManyRequests,
    TResult? Function(_FirebaseUserTokenExpiredErrorCategory value)?
        userTokenExpired,
    TResult? Function(_FirebaseNetworkRequestsFailedErrorCategory value)?
        networkRequestFailed,
  }) {
    return invalidEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FirebaseBaseErrorCategory value)? base,
    TResult Function(_FirebaseEmailAlreadyInUseErrorCategory value)?
        emailAlreadyInUse,
    TResult Function(_FirebaseInvalidEmailErrorCategory value)? invalidEmail,
    TResult Function(_FirebaseOperationNotAllowedErrorCategory value)?
        operationNotAllowed,
    TResult Function(_FirebaseWeakPasswordErrorCategory value)? weakPassword,
    TResult Function(_FirebaseTooManyRequestsErrorCategory value)?
        tooManyRequests,
    TResult Function(_FirebaseUserTokenExpiredErrorCategory value)?
        userTokenExpired,
    TResult Function(_FirebaseNetworkRequestsFailedErrorCategory value)?
        networkRequestFailed,
    required TResult orElse(),
  }) {
    if (invalidEmail != null) {
      return invalidEmail(this);
    }
    return orElse();
  }
}

abstract class _FirebaseInvalidEmailErrorCategory
    implements FirebaseErrorCategory {
  const factory _FirebaseInvalidEmailErrorCategory() =
      _$FirebaseInvalidEmailErrorCategoryImpl;
}

/// @nodoc
abstract class _$$FirebaseOperationNotAllowedErrorCategoryImplCopyWith<$Res> {
  factory _$$FirebaseOperationNotAllowedErrorCategoryImplCopyWith(
          _$FirebaseOperationNotAllowedErrorCategoryImpl value,
          $Res Function(_$FirebaseOperationNotAllowedErrorCategoryImpl) then) =
      __$$FirebaseOperationNotAllowedErrorCategoryImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FirebaseOperationNotAllowedErrorCategoryImplCopyWithImpl<$Res>
    extends _$FirebaseErrorCategoryCopyWithImpl<$Res,
        _$FirebaseOperationNotAllowedErrorCategoryImpl>
    implements _$$FirebaseOperationNotAllowedErrorCategoryImplCopyWith<$Res> {
  __$$FirebaseOperationNotAllowedErrorCategoryImplCopyWithImpl(
      _$FirebaseOperationNotAllowedErrorCategoryImpl _value,
      $Res Function(_$FirebaseOperationNotAllowedErrorCategoryImpl) _then)
      : super(_value, _then);

  /// Create a copy of FirebaseErrorCategory
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FirebaseOperationNotAllowedErrorCategoryImpl
    implements _FirebaseOperationNotAllowedErrorCategory {
  const _$FirebaseOperationNotAllowedErrorCategoryImpl();

  @override
  String toString() {
    return 'FirebaseErrorCategory.operationNotAllowed()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FirebaseOperationNotAllowedErrorCategoryImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() base,
    required TResult Function() emailAlreadyInUse,
    required TResult Function() invalidEmail,
    required TResult Function() operationNotAllowed,
    required TResult Function() weakPassword,
    required TResult Function() tooManyRequests,
    required TResult Function() userTokenExpired,
    required TResult Function() networkRequestFailed,
  }) {
    return operationNotAllowed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? base,
    TResult? Function()? emailAlreadyInUse,
    TResult? Function()? invalidEmail,
    TResult? Function()? operationNotAllowed,
    TResult? Function()? weakPassword,
    TResult? Function()? tooManyRequests,
    TResult? Function()? userTokenExpired,
    TResult? Function()? networkRequestFailed,
  }) {
    return operationNotAllowed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? base,
    TResult Function()? emailAlreadyInUse,
    TResult Function()? invalidEmail,
    TResult Function()? operationNotAllowed,
    TResult Function()? weakPassword,
    TResult Function()? tooManyRequests,
    TResult Function()? userTokenExpired,
    TResult Function()? networkRequestFailed,
    required TResult orElse(),
  }) {
    if (operationNotAllowed != null) {
      return operationNotAllowed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FirebaseBaseErrorCategory value) base,
    required TResult Function(_FirebaseEmailAlreadyInUseErrorCategory value)
        emailAlreadyInUse,
    required TResult Function(_FirebaseInvalidEmailErrorCategory value)
        invalidEmail,
    required TResult Function(_FirebaseOperationNotAllowedErrorCategory value)
        operationNotAllowed,
    required TResult Function(_FirebaseWeakPasswordErrorCategory value)
        weakPassword,
    required TResult Function(_FirebaseTooManyRequestsErrorCategory value)
        tooManyRequests,
    required TResult Function(_FirebaseUserTokenExpiredErrorCategory value)
        userTokenExpired,
    required TResult Function(_FirebaseNetworkRequestsFailedErrorCategory value)
        networkRequestFailed,
  }) {
    return operationNotAllowed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FirebaseBaseErrorCategory value)? base,
    TResult? Function(_FirebaseEmailAlreadyInUseErrorCategory value)?
        emailAlreadyInUse,
    TResult? Function(_FirebaseInvalidEmailErrorCategory value)? invalidEmail,
    TResult? Function(_FirebaseOperationNotAllowedErrorCategory value)?
        operationNotAllowed,
    TResult? Function(_FirebaseWeakPasswordErrorCategory value)? weakPassword,
    TResult? Function(_FirebaseTooManyRequestsErrorCategory value)?
        tooManyRequests,
    TResult? Function(_FirebaseUserTokenExpiredErrorCategory value)?
        userTokenExpired,
    TResult? Function(_FirebaseNetworkRequestsFailedErrorCategory value)?
        networkRequestFailed,
  }) {
    return operationNotAllowed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FirebaseBaseErrorCategory value)? base,
    TResult Function(_FirebaseEmailAlreadyInUseErrorCategory value)?
        emailAlreadyInUse,
    TResult Function(_FirebaseInvalidEmailErrorCategory value)? invalidEmail,
    TResult Function(_FirebaseOperationNotAllowedErrorCategory value)?
        operationNotAllowed,
    TResult Function(_FirebaseWeakPasswordErrorCategory value)? weakPassword,
    TResult Function(_FirebaseTooManyRequestsErrorCategory value)?
        tooManyRequests,
    TResult Function(_FirebaseUserTokenExpiredErrorCategory value)?
        userTokenExpired,
    TResult Function(_FirebaseNetworkRequestsFailedErrorCategory value)?
        networkRequestFailed,
    required TResult orElse(),
  }) {
    if (operationNotAllowed != null) {
      return operationNotAllowed(this);
    }
    return orElse();
  }
}

abstract class _FirebaseOperationNotAllowedErrorCategory
    implements FirebaseErrorCategory {
  const factory _FirebaseOperationNotAllowedErrorCategory() =
      _$FirebaseOperationNotAllowedErrorCategoryImpl;
}

/// @nodoc
abstract class _$$FirebaseWeakPasswordErrorCategoryImplCopyWith<$Res> {
  factory _$$FirebaseWeakPasswordErrorCategoryImplCopyWith(
          _$FirebaseWeakPasswordErrorCategoryImpl value,
          $Res Function(_$FirebaseWeakPasswordErrorCategoryImpl) then) =
      __$$FirebaseWeakPasswordErrorCategoryImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FirebaseWeakPasswordErrorCategoryImplCopyWithImpl<$Res>
    extends _$FirebaseErrorCategoryCopyWithImpl<$Res,
        _$FirebaseWeakPasswordErrorCategoryImpl>
    implements _$$FirebaseWeakPasswordErrorCategoryImplCopyWith<$Res> {
  __$$FirebaseWeakPasswordErrorCategoryImplCopyWithImpl(
      _$FirebaseWeakPasswordErrorCategoryImpl _value,
      $Res Function(_$FirebaseWeakPasswordErrorCategoryImpl) _then)
      : super(_value, _then);

  /// Create a copy of FirebaseErrorCategory
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FirebaseWeakPasswordErrorCategoryImpl
    implements _FirebaseWeakPasswordErrorCategory {
  const _$FirebaseWeakPasswordErrorCategoryImpl();

  @override
  String toString() {
    return 'FirebaseErrorCategory.weakPassword()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FirebaseWeakPasswordErrorCategoryImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() base,
    required TResult Function() emailAlreadyInUse,
    required TResult Function() invalidEmail,
    required TResult Function() operationNotAllowed,
    required TResult Function() weakPassword,
    required TResult Function() tooManyRequests,
    required TResult Function() userTokenExpired,
    required TResult Function() networkRequestFailed,
  }) {
    return weakPassword();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? base,
    TResult? Function()? emailAlreadyInUse,
    TResult? Function()? invalidEmail,
    TResult? Function()? operationNotAllowed,
    TResult? Function()? weakPassword,
    TResult? Function()? tooManyRequests,
    TResult? Function()? userTokenExpired,
    TResult? Function()? networkRequestFailed,
  }) {
    return weakPassword?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? base,
    TResult Function()? emailAlreadyInUse,
    TResult Function()? invalidEmail,
    TResult Function()? operationNotAllowed,
    TResult Function()? weakPassword,
    TResult Function()? tooManyRequests,
    TResult Function()? userTokenExpired,
    TResult Function()? networkRequestFailed,
    required TResult orElse(),
  }) {
    if (weakPassword != null) {
      return weakPassword();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FirebaseBaseErrorCategory value) base,
    required TResult Function(_FirebaseEmailAlreadyInUseErrorCategory value)
        emailAlreadyInUse,
    required TResult Function(_FirebaseInvalidEmailErrorCategory value)
        invalidEmail,
    required TResult Function(_FirebaseOperationNotAllowedErrorCategory value)
        operationNotAllowed,
    required TResult Function(_FirebaseWeakPasswordErrorCategory value)
        weakPassword,
    required TResult Function(_FirebaseTooManyRequestsErrorCategory value)
        tooManyRequests,
    required TResult Function(_FirebaseUserTokenExpiredErrorCategory value)
        userTokenExpired,
    required TResult Function(_FirebaseNetworkRequestsFailedErrorCategory value)
        networkRequestFailed,
  }) {
    return weakPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FirebaseBaseErrorCategory value)? base,
    TResult? Function(_FirebaseEmailAlreadyInUseErrorCategory value)?
        emailAlreadyInUse,
    TResult? Function(_FirebaseInvalidEmailErrorCategory value)? invalidEmail,
    TResult? Function(_FirebaseOperationNotAllowedErrorCategory value)?
        operationNotAllowed,
    TResult? Function(_FirebaseWeakPasswordErrorCategory value)? weakPassword,
    TResult? Function(_FirebaseTooManyRequestsErrorCategory value)?
        tooManyRequests,
    TResult? Function(_FirebaseUserTokenExpiredErrorCategory value)?
        userTokenExpired,
    TResult? Function(_FirebaseNetworkRequestsFailedErrorCategory value)?
        networkRequestFailed,
  }) {
    return weakPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FirebaseBaseErrorCategory value)? base,
    TResult Function(_FirebaseEmailAlreadyInUseErrorCategory value)?
        emailAlreadyInUse,
    TResult Function(_FirebaseInvalidEmailErrorCategory value)? invalidEmail,
    TResult Function(_FirebaseOperationNotAllowedErrorCategory value)?
        operationNotAllowed,
    TResult Function(_FirebaseWeakPasswordErrorCategory value)? weakPassword,
    TResult Function(_FirebaseTooManyRequestsErrorCategory value)?
        tooManyRequests,
    TResult Function(_FirebaseUserTokenExpiredErrorCategory value)?
        userTokenExpired,
    TResult Function(_FirebaseNetworkRequestsFailedErrorCategory value)?
        networkRequestFailed,
    required TResult orElse(),
  }) {
    if (weakPassword != null) {
      return weakPassword(this);
    }
    return orElse();
  }
}

abstract class _FirebaseWeakPasswordErrorCategory
    implements FirebaseErrorCategory {
  const factory _FirebaseWeakPasswordErrorCategory() =
      _$FirebaseWeakPasswordErrorCategoryImpl;
}

/// @nodoc
abstract class _$$FirebaseTooManyRequestsErrorCategoryImplCopyWith<$Res> {
  factory _$$FirebaseTooManyRequestsErrorCategoryImplCopyWith(
          _$FirebaseTooManyRequestsErrorCategoryImpl value,
          $Res Function(_$FirebaseTooManyRequestsErrorCategoryImpl) then) =
      __$$FirebaseTooManyRequestsErrorCategoryImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FirebaseTooManyRequestsErrorCategoryImplCopyWithImpl<$Res>
    extends _$FirebaseErrorCategoryCopyWithImpl<$Res,
        _$FirebaseTooManyRequestsErrorCategoryImpl>
    implements _$$FirebaseTooManyRequestsErrorCategoryImplCopyWith<$Res> {
  __$$FirebaseTooManyRequestsErrorCategoryImplCopyWithImpl(
      _$FirebaseTooManyRequestsErrorCategoryImpl _value,
      $Res Function(_$FirebaseTooManyRequestsErrorCategoryImpl) _then)
      : super(_value, _then);

  /// Create a copy of FirebaseErrorCategory
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FirebaseTooManyRequestsErrorCategoryImpl
    implements _FirebaseTooManyRequestsErrorCategory {
  const _$FirebaseTooManyRequestsErrorCategoryImpl();

  @override
  String toString() {
    return 'FirebaseErrorCategory.tooManyRequests()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FirebaseTooManyRequestsErrorCategoryImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() base,
    required TResult Function() emailAlreadyInUse,
    required TResult Function() invalidEmail,
    required TResult Function() operationNotAllowed,
    required TResult Function() weakPassword,
    required TResult Function() tooManyRequests,
    required TResult Function() userTokenExpired,
    required TResult Function() networkRequestFailed,
  }) {
    return tooManyRequests();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? base,
    TResult? Function()? emailAlreadyInUse,
    TResult? Function()? invalidEmail,
    TResult? Function()? operationNotAllowed,
    TResult? Function()? weakPassword,
    TResult? Function()? tooManyRequests,
    TResult? Function()? userTokenExpired,
    TResult? Function()? networkRequestFailed,
  }) {
    return tooManyRequests?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? base,
    TResult Function()? emailAlreadyInUse,
    TResult Function()? invalidEmail,
    TResult Function()? operationNotAllowed,
    TResult Function()? weakPassword,
    TResult Function()? tooManyRequests,
    TResult Function()? userTokenExpired,
    TResult Function()? networkRequestFailed,
    required TResult orElse(),
  }) {
    if (tooManyRequests != null) {
      return tooManyRequests();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FirebaseBaseErrorCategory value) base,
    required TResult Function(_FirebaseEmailAlreadyInUseErrorCategory value)
        emailAlreadyInUse,
    required TResult Function(_FirebaseInvalidEmailErrorCategory value)
        invalidEmail,
    required TResult Function(_FirebaseOperationNotAllowedErrorCategory value)
        operationNotAllowed,
    required TResult Function(_FirebaseWeakPasswordErrorCategory value)
        weakPassword,
    required TResult Function(_FirebaseTooManyRequestsErrorCategory value)
        tooManyRequests,
    required TResult Function(_FirebaseUserTokenExpiredErrorCategory value)
        userTokenExpired,
    required TResult Function(_FirebaseNetworkRequestsFailedErrorCategory value)
        networkRequestFailed,
  }) {
    return tooManyRequests(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FirebaseBaseErrorCategory value)? base,
    TResult? Function(_FirebaseEmailAlreadyInUseErrorCategory value)?
        emailAlreadyInUse,
    TResult? Function(_FirebaseInvalidEmailErrorCategory value)? invalidEmail,
    TResult? Function(_FirebaseOperationNotAllowedErrorCategory value)?
        operationNotAllowed,
    TResult? Function(_FirebaseWeakPasswordErrorCategory value)? weakPassword,
    TResult? Function(_FirebaseTooManyRequestsErrorCategory value)?
        tooManyRequests,
    TResult? Function(_FirebaseUserTokenExpiredErrorCategory value)?
        userTokenExpired,
    TResult? Function(_FirebaseNetworkRequestsFailedErrorCategory value)?
        networkRequestFailed,
  }) {
    return tooManyRequests?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FirebaseBaseErrorCategory value)? base,
    TResult Function(_FirebaseEmailAlreadyInUseErrorCategory value)?
        emailAlreadyInUse,
    TResult Function(_FirebaseInvalidEmailErrorCategory value)? invalidEmail,
    TResult Function(_FirebaseOperationNotAllowedErrorCategory value)?
        operationNotAllowed,
    TResult Function(_FirebaseWeakPasswordErrorCategory value)? weakPassword,
    TResult Function(_FirebaseTooManyRequestsErrorCategory value)?
        tooManyRequests,
    TResult Function(_FirebaseUserTokenExpiredErrorCategory value)?
        userTokenExpired,
    TResult Function(_FirebaseNetworkRequestsFailedErrorCategory value)?
        networkRequestFailed,
    required TResult orElse(),
  }) {
    if (tooManyRequests != null) {
      return tooManyRequests(this);
    }
    return orElse();
  }
}

abstract class _FirebaseTooManyRequestsErrorCategory
    implements FirebaseErrorCategory {
  const factory _FirebaseTooManyRequestsErrorCategory() =
      _$FirebaseTooManyRequestsErrorCategoryImpl;
}

/// @nodoc
abstract class _$$FirebaseUserTokenExpiredErrorCategoryImplCopyWith<$Res> {
  factory _$$FirebaseUserTokenExpiredErrorCategoryImplCopyWith(
          _$FirebaseUserTokenExpiredErrorCategoryImpl value,
          $Res Function(_$FirebaseUserTokenExpiredErrorCategoryImpl) then) =
      __$$FirebaseUserTokenExpiredErrorCategoryImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FirebaseUserTokenExpiredErrorCategoryImplCopyWithImpl<$Res>
    extends _$FirebaseErrorCategoryCopyWithImpl<$Res,
        _$FirebaseUserTokenExpiredErrorCategoryImpl>
    implements _$$FirebaseUserTokenExpiredErrorCategoryImplCopyWith<$Res> {
  __$$FirebaseUserTokenExpiredErrorCategoryImplCopyWithImpl(
      _$FirebaseUserTokenExpiredErrorCategoryImpl _value,
      $Res Function(_$FirebaseUserTokenExpiredErrorCategoryImpl) _then)
      : super(_value, _then);

  /// Create a copy of FirebaseErrorCategory
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FirebaseUserTokenExpiredErrorCategoryImpl
    implements _FirebaseUserTokenExpiredErrorCategory {
  const _$FirebaseUserTokenExpiredErrorCategoryImpl();

  @override
  String toString() {
    return 'FirebaseErrorCategory.userTokenExpired()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FirebaseUserTokenExpiredErrorCategoryImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() base,
    required TResult Function() emailAlreadyInUse,
    required TResult Function() invalidEmail,
    required TResult Function() operationNotAllowed,
    required TResult Function() weakPassword,
    required TResult Function() tooManyRequests,
    required TResult Function() userTokenExpired,
    required TResult Function() networkRequestFailed,
  }) {
    return userTokenExpired();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? base,
    TResult? Function()? emailAlreadyInUse,
    TResult? Function()? invalidEmail,
    TResult? Function()? operationNotAllowed,
    TResult? Function()? weakPassword,
    TResult? Function()? tooManyRequests,
    TResult? Function()? userTokenExpired,
    TResult? Function()? networkRequestFailed,
  }) {
    return userTokenExpired?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? base,
    TResult Function()? emailAlreadyInUse,
    TResult Function()? invalidEmail,
    TResult Function()? operationNotAllowed,
    TResult Function()? weakPassword,
    TResult Function()? tooManyRequests,
    TResult Function()? userTokenExpired,
    TResult Function()? networkRequestFailed,
    required TResult orElse(),
  }) {
    if (userTokenExpired != null) {
      return userTokenExpired();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FirebaseBaseErrorCategory value) base,
    required TResult Function(_FirebaseEmailAlreadyInUseErrorCategory value)
        emailAlreadyInUse,
    required TResult Function(_FirebaseInvalidEmailErrorCategory value)
        invalidEmail,
    required TResult Function(_FirebaseOperationNotAllowedErrorCategory value)
        operationNotAllowed,
    required TResult Function(_FirebaseWeakPasswordErrorCategory value)
        weakPassword,
    required TResult Function(_FirebaseTooManyRequestsErrorCategory value)
        tooManyRequests,
    required TResult Function(_FirebaseUserTokenExpiredErrorCategory value)
        userTokenExpired,
    required TResult Function(_FirebaseNetworkRequestsFailedErrorCategory value)
        networkRequestFailed,
  }) {
    return userTokenExpired(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FirebaseBaseErrorCategory value)? base,
    TResult? Function(_FirebaseEmailAlreadyInUseErrorCategory value)?
        emailAlreadyInUse,
    TResult? Function(_FirebaseInvalidEmailErrorCategory value)? invalidEmail,
    TResult? Function(_FirebaseOperationNotAllowedErrorCategory value)?
        operationNotAllowed,
    TResult? Function(_FirebaseWeakPasswordErrorCategory value)? weakPassword,
    TResult? Function(_FirebaseTooManyRequestsErrorCategory value)?
        tooManyRequests,
    TResult? Function(_FirebaseUserTokenExpiredErrorCategory value)?
        userTokenExpired,
    TResult? Function(_FirebaseNetworkRequestsFailedErrorCategory value)?
        networkRequestFailed,
  }) {
    return userTokenExpired?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FirebaseBaseErrorCategory value)? base,
    TResult Function(_FirebaseEmailAlreadyInUseErrorCategory value)?
        emailAlreadyInUse,
    TResult Function(_FirebaseInvalidEmailErrorCategory value)? invalidEmail,
    TResult Function(_FirebaseOperationNotAllowedErrorCategory value)?
        operationNotAllowed,
    TResult Function(_FirebaseWeakPasswordErrorCategory value)? weakPassword,
    TResult Function(_FirebaseTooManyRequestsErrorCategory value)?
        tooManyRequests,
    TResult Function(_FirebaseUserTokenExpiredErrorCategory value)?
        userTokenExpired,
    TResult Function(_FirebaseNetworkRequestsFailedErrorCategory value)?
        networkRequestFailed,
    required TResult orElse(),
  }) {
    if (userTokenExpired != null) {
      return userTokenExpired(this);
    }
    return orElse();
  }
}

abstract class _FirebaseUserTokenExpiredErrorCategory
    implements FirebaseErrorCategory {
  const factory _FirebaseUserTokenExpiredErrorCategory() =
      _$FirebaseUserTokenExpiredErrorCategoryImpl;
}

/// @nodoc
abstract class _$$FirebaseNetworkRequestsFailedErrorCategoryImplCopyWith<$Res> {
  factory _$$FirebaseNetworkRequestsFailedErrorCategoryImplCopyWith(
          _$FirebaseNetworkRequestsFailedErrorCategoryImpl value,
          $Res Function(_$FirebaseNetworkRequestsFailedErrorCategoryImpl)
              then) =
      __$$FirebaseNetworkRequestsFailedErrorCategoryImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FirebaseNetworkRequestsFailedErrorCategoryImplCopyWithImpl<$Res>
    extends _$FirebaseErrorCategoryCopyWithImpl<$Res,
        _$FirebaseNetworkRequestsFailedErrorCategoryImpl>
    implements _$$FirebaseNetworkRequestsFailedErrorCategoryImplCopyWith<$Res> {
  __$$FirebaseNetworkRequestsFailedErrorCategoryImplCopyWithImpl(
      _$FirebaseNetworkRequestsFailedErrorCategoryImpl _value,
      $Res Function(_$FirebaseNetworkRequestsFailedErrorCategoryImpl) _then)
      : super(_value, _then);

  /// Create a copy of FirebaseErrorCategory
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FirebaseNetworkRequestsFailedErrorCategoryImpl
    implements _FirebaseNetworkRequestsFailedErrorCategory {
  const _$FirebaseNetworkRequestsFailedErrorCategoryImpl();

  @override
  String toString() {
    return 'FirebaseErrorCategory.networkRequestFailed()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FirebaseNetworkRequestsFailedErrorCategoryImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() base,
    required TResult Function() emailAlreadyInUse,
    required TResult Function() invalidEmail,
    required TResult Function() operationNotAllowed,
    required TResult Function() weakPassword,
    required TResult Function() tooManyRequests,
    required TResult Function() userTokenExpired,
    required TResult Function() networkRequestFailed,
  }) {
    return networkRequestFailed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? base,
    TResult? Function()? emailAlreadyInUse,
    TResult? Function()? invalidEmail,
    TResult? Function()? operationNotAllowed,
    TResult? Function()? weakPassword,
    TResult? Function()? tooManyRequests,
    TResult? Function()? userTokenExpired,
    TResult? Function()? networkRequestFailed,
  }) {
    return networkRequestFailed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? base,
    TResult Function()? emailAlreadyInUse,
    TResult Function()? invalidEmail,
    TResult Function()? operationNotAllowed,
    TResult Function()? weakPassword,
    TResult Function()? tooManyRequests,
    TResult Function()? userTokenExpired,
    TResult Function()? networkRequestFailed,
    required TResult orElse(),
  }) {
    if (networkRequestFailed != null) {
      return networkRequestFailed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FirebaseBaseErrorCategory value) base,
    required TResult Function(_FirebaseEmailAlreadyInUseErrorCategory value)
        emailAlreadyInUse,
    required TResult Function(_FirebaseInvalidEmailErrorCategory value)
        invalidEmail,
    required TResult Function(_FirebaseOperationNotAllowedErrorCategory value)
        operationNotAllowed,
    required TResult Function(_FirebaseWeakPasswordErrorCategory value)
        weakPassword,
    required TResult Function(_FirebaseTooManyRequestsErrorCategory value)
        tooManyRequests,
    required TResult Function(_FirebaseUserTokenExpiredErrorCategory value)
        userTokenExpired,
    required TResult Function(_FirebaseNetworkRequestsFailedErrorCategory value)
        networkRequestFailed,
  }) {
    return networkRequestFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FirebaseBaseErrorCategory value)? base,
    TResult? Function(_FirebaseEmailAlreadyInUseErrorCategory value)?
        emailAlreadyInUse,
    TResult? Function(_FirebaseInvalidEmailErrorCategory value)? invalidEmail,
    TResult? Function(_FirebaseOperationNotAllowedErrorCategory value)?
        operationNotAllowed,
    TResult? Function(_FirebaseWeakPasswordErrorCategory value)? weakPassword,
    TResult? Function(_FirebaseTooManyRequestsErrorCategory value)?
        tooManyRequests,
    TResult? Function(_FirebaseUserTokenExpiredErrorCategory value)?
        userTokenExpired,
    TResult? Function(_FirebaseNetworkRequestsFailedErrorCategory value)?
        networkRequestFailed,
  }) {
    return networkRequestFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FirebaseBaseErrorCategory value)? base,
    TResult Function(_FirebaseEmailAlreadyInUseErrorCategory value)?
        emailAlreadyInUse,
    TResult Function(_FirebaseInvalidEmailErrorCategory value)? invalidEmail,
    TResult Function(_FirebaseOperationNotAllowedErrorCategory value)?
        operationNotAllowed,
    TResult Function(_FirebaseWeakPasswordErrorCategory value)? weakPassword,
    TResult Function(_FirebaseTooManyRequestsErrorCategory value)?
        tooManyRequests,
    TResult Function(_FirebaseUserTokenExpiredErrorCategory value)?
        userTokenExpired,
    TResult Function(_FirebaseNetworkRequestsFailedErrorCategory value)?
        networkRequestFailed,
    required TResult orElse(),
  }) {
    if (networkRequestFailed != null) {
      return networkRequestFailed(this);
    }
    return orElse();
  }
}

abstract class _FirebaseNetworkRequestsFailedErrorCategory
    implements FirebaseErrorCategory {
  const factory _FirebaseNetworkRequestsFailedErrorCategory() =
      _$FirebaseNetworkRequestsFailedErrorCategoryImpl;
}

/// @nodoc
mixin _$NetworkErrorCategory {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() connectTimeout,
    required TResult Function() sendTimeout,
    required TResult Function() receiveTimeout,
    required TResult Function() requestCancelled,
    required TResult Function() notInternetConnection,
    required TResult Function() badCertificate,
    required TResult Function() badResponse,
    required TResult Function() base,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? connectTimeout,
    TResult? Function()? sendTimeout,
    TResult? Function()? receiveTimeout,
    TResult? Function()? requestCancelled,
    TResult? Function()? notInternetConnection,
    TResult? Function()? badCertificate,
    TResult? Function()? badResponse,
    TResult? Function()? base,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? connectTimeout,
    TResult Function()? sendTimeout,
    TResult Function()? receiveTimeout,
    TResult Function()? requestCancelled,
    TResult Function()? notInternetConnection,
    TResult Function()? badCertificate,
    TResult Function()? badResponse,
    TResult Function()? base,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NetworkConnectTimeoutErrorCategory value)
        connectTimeout,
    required TResult Function(_NetworkSendTimeoutErrorCategory value)
        sendTimeout,
    required TResult Function(_NetworkReceiveTimeoutErrorCategory value)
        receiveTimeout,
    required TResult Function(_NetworkRequestCancelledErrorCategory value)
        requestCancelled,
    required TResult Function(_NetworkNotInternetConnectionErrorCategory value)
        notInternetConnection,
    required TResult Function(_NetworkBadCertificateErrorCategory value)
        badCertificate,
    required TResult Function(_NetworkBadResponseErrorCategory value)
        badResponse,
    required TResult Function(_NetworkBaseErrorCategory value) base,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NetworkConnectTimeoutErrorCategory value)?
        connectTimeout,
    TResult? Function(_NetworkSendTimeoutErrorCategory value)? sendTimeout,
    TResult? Function(_NetworkReceiveTimeoutErrorCategory value)?
        receiveTimeout,
    TResult? Function(_NetworkRequestCancelledErrorCategory value)?
        requestCancelled,
    TResult? Function(_NetworkNotInternetConnectionErrorCategory value)?
        notInternetConnection,
    TResult? Function(_NetworkBadCertificateErrorCategory value)?
        badCertificate,
    TResult? Function(_NetworkBadResponseErrorCategory value)? badResponse,
    TResult? Function(_NetworkBaseErrorCategory value)? base,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NetworkConnectTimeoutErrorCategory value)? connectTimeout,
    TResult Function(_NetworkSendTimeoutErrorCategory value)? sendTimeout,
    TResult Function(_NetworkReceiveTimeoutErrorCategory value)? receiveTimeout,
    TResult Function(_NetworkRequestCancelledErrorCategory value)?
        requestCancelled,
    TResult Function(_NetworkNotInternetConnectionErrorCategory value)?
        notInternetConnection,
    TResult Function(_NetworkBadCertificateErrorCategory value)? badCertificate,
    TResult Function(_NetworkBadResponseErrorCategory value)? badResponse,
    TResult Function(_NetworkBaseErrorCategory value)? base,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NetworkErrorCategoryCopyWith<$Res> {
  factory $NetworkErrorCategoryCopyWith(NetworkErrorCategory value,
          $Res Function(NetworkErrorCategory) then) =
      _$NetworkErrorCategoryCopyWithImpl<$Res, NetworkErrorCategory>;
}

/// @nodoc
class _$NetworkErrorCategoryCopyWithImpl<$Res,
        $Val extends NetworkErrorCategory>
    implements $NetworkErrorCategoryCopyWith<$Res> {
  _$NetworkErrorCategoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NetworkErrorCategory
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$NetworkConnectTimeoutErrorCategoryImplCopyWith<$Res> {
  factory _$$NetworkConnectTimeoutErrorCategoryImplCopyWith(
          _$NetworkConnectTimeoutErrorCategoryImpl value,
          $Res Function(_$NetworkConnectTimeoutErrorCategoryImpl) then) =
      __$$NetworkConnectTimeoutErrorCategoryImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NetworkConnectTimeoutErrorCategoryImplCopyWithImpl<$Res>
    extends _$NetworkErrorCategoryCopyWithImpl<$Res,
        _$NetworkConnectTimeoutErrorCategoryImpl>
    implements _$$NetworkConnectTimeoutErrorCategoryImplCopyWith<$Res> {
  __$$NetworkConnectTimeoutErrorCategoryImplCopyWithImpl(
      _$NetworkConnectTimeoutErrorCategoryImpl _value,
      $Res Function(_$NetworkConnectTimeoutErrorCategoryImpl) _then)
      : super(_value, _then);

  /// Create a copy of NetworkErrorCategory
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$NetworkConnectTimeoutErrorCategoryImpl
    implements _NetworkConnectTimeoutErrorCategory {
  const _$NetworkConnectTimeoutErrorCategoryImpl();

  @override
  String toString() {
    return 'NetworkErrorCategory.connectTimeout()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NetworkConnectTimeoutErrorCategoryImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() connectTimeout,
    required TResult Function() sendTimeout,
    required TResult Function() receiveTimeout,
    required TResult Function() requestCancelled,
    required TResult Function() notInternetConnection,
    required TResult Function() badCertificate,
    required TResult Function() badResponse,
    required TResult Function() base,
  }) {
    return connectTimeout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? connectTimeout,
    TResult? Function()? sendTimeout,
    TResult? Function()? receiveTimeout,
    TResult? Function()? requestCancelled,
    TResult? Function()? notInternetConnection,
    TResult? Function()? badCertificate,
    TResult? Function()? badResponse,
    TResult? Function()? base,
  }) {
    return connectTimeout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? connectTimeout,
    TResult Function()? sendTimeout,
    TResult Function()? receiveTimeout,
    TResult Function()? requestCancelled,
    TResult Function()? notInternetConnection,
    TResult Function()? badCertificate,
    TResult Function()? badResponse,
    TResult Function()? base,
    required TResult orElse(),
  }) {
    if (connectTimeout != null) {
      return connectTimeout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NetworkConnectTimeoutErrorCategory value)
        connectTimeout,
    required TResult Function(_NetworkSendTimeoutErrorCategory value)
        sendTimeout,
    required TResult Function(_NetworkReceiveTimeoutErrorCategory value)
        receiveTimeout,
    required TResult Function(_NetworkRequestCancelledErrorCategory value)
        requestCancelled,
    required TResult Function(_NetworkNotInternetConnectionErrorCategory value)
        notInternetConnection,
    required TResult Function(_NetworkBadCertificateErrorCategory value)
        badCertificate,
    required TResult Function(_NetworkBadResponseErrorCategory value)
        badResponse,
    required TResult Function(_NetworkBaseErrorCategory value) base,
  }) {
    return connectTimeout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NetworkConnectTimeoutErrorCategory value)?
        connectTimeout,
    TResult? Function(_NetworkSendTimeoutErrorCategory value)? sendTimeout,
    TResult? Function(_NetworkReceiveTimeoutErrorCategory value)?
        receiveTimeout,
    TResult? Function(_NetworkRequestCancelledErrorCategory value)?
        requestCancelled,
    TResult? Function(_NetworkNotInternetConnectionErrorCategory value)?
        notInternetConnection,
    TResult? Function(_NetworkBadCertificateErrorCategory value)?
        badCertificate,
    TResult? Function(_NetworkBadResponseErrorCategory value)? badResponse,
    TResult? Function(_NetworkBaseErrorCategory value)? base,
  }) {
    return connectTimeout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NetworkConnectTimeoutErrorCategory value)? connectTimeout,
    TResult Function(_NetworkSendTimeoutErrorCategory value)? sendTimeout,
    TResult Function(_NetworkReceiveTimeoutErrorCategory value)? receiveTimeout,
    TResult Function(_NetworkRequestCancelledErrorCategory value)?
        requestCancelled,
    TResult Function(_NetworkNotInternetConnectionErrorCategory value)?
        notInternetConnection,
    TResult Function(_NetworkBadCertificateErrorCategory value)? badCertificate,
    TResult Function(_NetworkBadResponseErrorCategory value)? badResponse,
    TResult Function(_NetworkBaseErrorCategory value)? base,
    required TResult orElse(),
  }) {
    if (connectTimeout != null) {
      return connectTimeout(this);
    }
    return orElse();
  }
}

abstract class _NetworkConnectTimeoutErrorCategory
    implements NetworkErrorCategory {
  const factory _NetworkConnectTimeoutErrorCategory() =
      _$NetworkConnectTimeoutErrorCategoryImpl;
}

/// @nodoc
abstract class _$$NetworkSendTimeoutErrorCategoryImplCopyWith<$Res> {
  factory _$$NetworkSendTimeoutErrorCategoryImplCopyWith(
          _$NetworkSendTimeoutErrorCategoryImpl value,
          $Res Function(_$NetworkSendTimeoutErrorCategoryImpl) then) =
      __$$NetworkSendTimeoutErrorCategoryImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NetworkSendTimeoutErrorCategoryImplCopyWithImpl<$Res>
    extends _$NetworkErrorCategoryCopyWithImpl<$Res,
        _$NetworkSendTimeoutErrorCategoryImpl>
    implements _$$NetworkSendTimeoutErrorCategoryImplCopyWith<$Res> {
  __$$NetworkSendTimeoutErrorCategoryImplCopyWithImpl(
      _$NetworkSendTimeoutErrorCategoryImpl _value,
      $Res Function(_$NetworkSendTimeoutErrorCategoryImpl) _then)
      : super(_value, _then);

  /// Create a copy of NetworkErrorCategory
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$NetworkSendTimeoutErrorCategoryImpl
    implements _NetworkSendTimeoutErrorCategory {
  const _$NetworkSendTimeoutErrorCategoryImpl();

  @override
  String toString() {
    return 'NetworkErrorCategory.sendTimeout()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NetworkSendTimeoutErrorCategoryImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() connectTimeout,
    required TResult Function() sendTimeout,
    required TResult Function() receiveTimeout,
    required TResult Function() requestCancelled,
    required TResult Function() notInternetConnection,
    required TResult Function() badCertificate,
    required TResult Function() badResponse,
    required TResult Function() base,
  }) {
    return sendTimeout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? connectTimeout,
    TResult? Function()? sendTimeout,
    TResult? Function()? receiveTimeout,
    TResult? Function()? requestCancelled,
    TResult? Function()? notInternetConnection,
    TResult? Function()? badCertificate,
    TResult? Function()? badResponse,
    TResult? Function()? base,
  }) {
    return sendTimeout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? connectTimeout,
    TResult Function()? sendTimeout,
    TResult Function()? receiveTimeout,
    TResult Function()? requestCancelled,
    TResult Function()? notInternetConnection,
    TResult Function()? badCertificate,
    TResult Function()? badResponse,
    TResult Function()? base,
    required TResult orElse(),
  }) {
    if (sendTimeout != null) {
      return sendTimeout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NetworkConnectTimeoutErrorCategory value)
        connectTimeout,
    required TResult Function(_NetworkSendTimeoutErrorCategory value)
        sendTimeout,
    required TResult Function(_NetworkReceiveTimeoutErrorCategory value)
        receiveTimeout,
    required TResult Function(_NetworkRequestCancelledErrorCategory value)
        requestCancelled,
    required TResult Function(_NetworkNotInternetConnectionErrorCategory value)
        notInternetConnection,
    required TResult Function(_NetworkBadCertificateErrorCategory value)
        badCertificate,
    required TResult Function(_NetworkBadResponseErrorCategory value)
        badResponse,
    required TResult Function(_NetworkBaseErrorCategory value) base,
  }) {
    return sendTimeout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NetworkConnectTimeoutErrorCategory value)?
        connectTimeout,
    TResult? Function(_NetworkSendTimeoutErrorCategory value)? sendTimeout,
    TResult? Function(_NetworkReceiveTimeoutErrorCategory value)?
        receiveTimeout,
    TResult? Function(_NetworkRequestCancelledErrorCategory value)?
        requestCancelled,
    TResult? Function(_NetworkNotInternetConnectionErrorCategory value)?
        notInternetConnection,
    TResult? Function(_NetworkBadCertificateErrorCategory value)?
        badCertificate,
    TResult? Function(_NetworkBadResponseErrorCategory value)? badResponse,
    TResult? Function(_NetworkBaseErrorCategory value)? base,
  }) {
    return sendTimeout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NetworkConnectTimeoutErrorCategory value)? connectTimeout,
    TResult Function(_NetworkSendTimeoutErrorCategory value)? sendTimeout,
    TResult Function(_NetworkReceiveTimeoutErrorCategory value)? receiveTimeout,
    TResult Function(_NetworkRequestCancelledErrorCategory value)?
        requestCancelled,
    TResult Function(_NetworkNotInternetConnectionErrorCategory value)?
        notInternetConnection,
    TResult Function(_NetworkBadCertificateErrorCategory value)? badCertificate,
    TResult Function(_NetworkBadResponseErrorCategory value)? badResponse,
    TResult Function(_NetworkBaseErrorCategory value)? base,
    required TResult orElse(),
  }) {
    if (sendTimeout != null) {
      return sendTimeout(this);
    }
    return orElse();
  }
}

abstract class _NetworkSendTimeoutErrorCategory
    implements NetworkErrorCategory {
  const factory _NetworkSendTimeoutErrorCategory() =
      _$NetworkSendTimeoutErrorCategoryImpl;
}

/// @nodoc
abstract class _$$NetworkReceiveTimeoutErrorCategoryImplCopyWith<$Res> {
  factory _$$NetworkReceiveTimeoutErrorCategoryImplCopyWith(
          _$NetworkReceiveTimeoutErrorCategoryImpl value,
          $Res Function(_$NetworkReceiveTimeoutErrorCategoryImpl) then) =
      __$$NetworkReceiveTimeoutErrorCategoryImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NetworkReceiveTimeoutErrorCategoryImplCopyWithImpl<$Res>
    extends _$NetworkErrorCategoryCopyWithImpl<$Res,
        _$NetworkReceiveTimeoutErrorCategoryImpl>
    implements _$$NetworkReceiveTimeoutErrorCategoryImplCopyWith<$Res> {
  __$$NetworkReceiveTimeoutErrorCategoryImplCopyWithImpl(
      _$NetworkReceiveTimeoutErrorCategoryImpl _value,
      $Res Function(_$NetworkReceiveTimeoutErrorCategoryImpl) _then)
      : super(_value, _then);

  /// Create a copy of NetworkErrorCategory
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$NetworkReceiveTimeoutErrorCategoryImpl
    implements _NetworkReceiveTimeoutErrorCategory {
  const _$NetworkReceiveTimeoutErrorCategoryImpl();

  @override
  String toString() {
    return 'NetworkErrorCategory.receiveTimeout()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NetworkReceiveTimeoutErrorCategoryImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() connectTimeout,
    required TResult Function() sendTimeout,
    required TResult Function() receiveTimeout,
    required TResult Function() requestCancelled,
    required TResult Function() notInternetConnection,
    required TResult Function() badCertificate,
    required TResult Function() badResponse,
    required TResult Function() base,
  }) {
    return receiveTimeout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? connectTimeout,
    TResult? Function()? sendTimeout,
    TResult? Function()? receiveTimeout,
    TResult? Function()? requestCancelled,
    TResult? Function()? notInternetConnection,
    TResult? Function()? badCertificate,
    TResult? Function()? badResponse,
    TResult? Function()? base,
  }) {
    return receiveTimeout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? connectTimeout,
    TResult Function()? sendTimeout,
    TResult Function()? receiveTimeout,
    TResult Function()? requestCancelled,
    TResult Function()? notInternetConnection,
    TResult Function()? badCertificate,
    TResult Function()? badResponse,
    TResult Function()? base,
    required TResult orElse(),
  }) {
    if (receiveTimeout != null) {
      return receiveTimeout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NetworkConnectTimeoutErrorCategory value)
        connectTimeout,
    required TResult Function(_NetworkSendTimeoutErrorCategory value)
        sendTimeout,
    required TResult Function(_NetworkReceiveTimeoutErrorCategory value)
        receiveTimeout,
    required TResult Function(_NetworkRequestCancelledErrorCategory value)
        requestCancelled,
    required TResult Function(_NetworkNotInternetConnectionErrorCategory value)
        notInternetConnection,
    required TResult Function(_NetworkBadCertificateErrorCategory value)
        badCertificate,
    required TResult Function(_NetworkBadResponseErrorCategory value)
        badResponse,
    required TResult Function(_NetworkBaseErrorCategory value) base,
  }) {
    return receiveTimeout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NetworkConnectTimeoutErrorCategory value)?
        connectTimeout,
    TResult? Function(_NetworkSendTimeoutErrorCategory value)? sendTimeout,
    TResult? Function(_NetworkReceiveTimeoutErrorCategory value)?
        receiveTimeout,
    TResult? Function(_NetworkRequestCancelledErrorCategory value)?
        requestCancelled,
    TResult? Function(_NetworkNotInternetConnectionErrorCategory value)?
        notInternetConnection,
    TResult? Function(_NetworkBadCertificateErrorCategory value)?
        badCertificate,
    TResult? Function(_NetworkBadResponseErrorCategory value)? badResponse,
    TResult? Function(_NetworkBaseErrorCategory value)? base,
  }) {
    return receiveTimeout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NetworkConnectTimeoutErrorCategory value)? connectTimeout,
    TResult Function(_NetworkSendTimeoutErrorCategory value)? sendTimeout,
    TResult Function(_NetworkReceiveTimeoutErrorCategory value)? receiveTimeout,
    TResult Function(_NetworkRequestCancelledErrorCategory value)?
        requestCancelled,
    TResult Function(_NetworkNotInternetConnectionErrorCategory value)?
        notInternetConnection,
    TResult Function(_NetworkBadCertificateErrorCategory value)? badCertificate,
    TResult Function(_NetworkBadResponseErrorCategory value)? badResponse,
    TResult Function(_NetworkBaseErrorCategory value)? base,
    required TResult orElse(),
  }) {
    if (receiveTimeout != null) {
      return receiveTimeout(this);
    }
    return orElse();
  }
}

abstract class _NetworkReceiveTimeoutErrorCategory
    implements NetworkErrorCategory {
  const factory _NetworkReceiveTimeoutErrorCategory() =
      _$NetworkReceiveTimeoutErrorCategoryImpl;
}

/// @nodoc
abstract class _$$NetworkRequestCancelledErrorCategoryImplCopyWith<$Res> {
  factory _$$NetworkRequestCancelledErrorCategoryImplCopyWith(
          _$NetworkRequestCancelledErrorCategoryImpl value,
          $Res Function(_$NetworkRequestCancelledErrorCategoryImpl) then) =
      __$$NetworkRequestCancelledErrorCategoryImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NetworkRequestCancelledErrorCategoryImplCopyWithImpl<$Res>
    extends _$NetworkErrorCategoryCopyWithImpl<$Res,
        _$NetworkRequestCancelledErrorCategoryImpl>
    implements _$$NetworkRequestCancelledErrorCategoryImplCopyWith<$Res> {
  __$$NetworkRequestCancelledErrorCategoryImplCopyWithImpl(
      _$NetworkRequestCancelledErrorCategoryImpl _value,
      $Res Function(_$NetworkRequestCancelledErrorCategoryImpl) _then)
      : super(_value, _then);

  /// Create a copy of NetworkErrorCategory
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$NetworkRequestCancelledErrorCategoryImpl
    implements _NetworkRequestCancelledErrorCategory {
  const _$NetworkRequestCancelledErrorCategoryImpl();

  @override
  String toString() {
    return 'NetworkErrorCategory.requestCancelled()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NetworkRequestCancelledErrorCategoryImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() connectTimeout,
    required TResult Function() sendTimeout,
    required TResult Function() receiveTimeout,
    required TResult Function() requestCancelled,
    required TResult Function() notInternetConnection,
    required TResult Function() badCertificate,
    required TResult Function() badResponse,
    required TResult Function() base,
  }) {
    return requestCancelled();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? connectTimeout,
    TResult? Function()? sendTimeout,
    TResult? Function()? receiveTimeout,
    TResult? Function()? requestCancelled,
    TResult? Function()? notInternetConnection,
    TResult? Function()? badCertificate,
    TResult? Function()? badResponse,
    TResult? Function()? base,
  }) {
    return requestCancelled?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? connectTimeout,
    TResult Function()? sendTimeout,
    TResult Function()? receiveTimeout,
    TResult Function()? requestCancelled,
    TResult Function()? notInternetConnection,
    TResult Function()? badCertificate,
    TResult Function()? badResponse,
    TResult Function()? base,
    required TResult orElse(),
  }) {
    if (requestCancelled != null) {
      return requestCancelled();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NetworkConnectTimeoutErrorCategory value)
        connectTimeout,
    required TResult Function(_NetworkSendTimeoutErrorCategory value)
        sendTimeout,
    required TResult Function(_NetworkReceiveTimeoutErrorCategory value)
        receiveTimeout,
    required TResult Function(_NetworkRequestCancelledErrorCategory value)
        requestCancelled,
    required TResult Function(_NetworkNotInternetConnectionErrorCategory value)
        notInternetConnection,
    required TResult Function(_NetworkBadCertificateErrorCategory value)
        badCertificate,
    required TResult Function(_NetworkBadResponseErrorCategory value)
        badResponse,
    required TResult Function(_NetworkBaseErrorCategory value) base,
  }) {
    return requestCancelled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NetworkConnectTimeoutErrorCategory value)?
        connectTimeout,
    TResult? Function(_NetworkSendTimeoutErrorCategory value)? sendTimeout,
    TResult? Function(_NetworkReceiveTimeoutErrorCategory value)?
        receiveTimeout,
    TResult? Function(_NetworkRequestCancelledErrorCategory value)?
        requestCancelled,
    TResult? Function(_NetworkNotInternetConnectionErrorCategory value)?
        notInternetConnection,
    TResult? Function(_NetworkBadCertificateErrorCategory value)?
        badCertificate,
    TResult? Function(_NetworkBadResponseErrorCategory value)? badResponse,
    TResult? Function(_NetworkBaseErrorCategory value)? base,
  }) {
    return requestCancelled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NetworkConnectTimeoutErrorCategory value)? connectTimeout,
    TResult Function(_NetworkSendTimeoutErrorCategory value)? sendTimeout,
    TResult Function(_NetworkReceiveTimeoutErrorCategory value)? receiveTimeout,
    TResult Function(_NetworkRequestCancelledErrorCategory value)?
        requestCancelled,
    TResult Function(_NetworkNotInternetConnectionErrorCategory value)?
        notInternetConnection,
    TResult Function(_NetworkBadCertificateErrorCategory value)? badCertificate,
    TResult Function(_NetworkBadResponseErrorCategory value)? badResponse,
    TResult Function(_NetworkBaseErrorCategory value)? base,
    required TResult orElse(),
  }) {
    if (requestCancelled != null) {
      return requestCancelled(this);
    }
    return orElse();
  }
}

abstract class _NetworkRequestCancelledErrorCategory
    implements NetworkErrorCategory {
  const factory _NetworkRequestCancelledErrorCategory() =
      _$NetworkRequestCancelledErrorCategoryImpl;
}

/// @nodoc
abstract class _$$NetworkNotInternetConnectionErrorCategoryImplCopyWith<$Res> {
  factory _$$NetworkNotInternetConnectionErrorCategoryImplCopyWith(
          _$NetworkNotInternetConnectionErrorCategoryImpl value,
          $Res Function(_$NetworkNotInternetConnectionErrorCategoryImpl) then) =
      __$$NetworkNotInternetConnectionErrorCategoryImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NetworkNotInternetConnectionErrorCategoryImplCopyWithImpl<$Res>
    extends _$NetworkErrorCategoryCopyWithImpl<$Res,
        _$NetworkNotInternetConnectionErrorCategoryImpl>
    implements _$$NetworkNotInternetConnectionErrorCategoryImplCopyWith<$Res> {
  __$$NetworkNotInternetConnectionErrorCategoryImplCopyWithImpl(
      _$NetworkNotInternetConnectionErrorCategoryImpl _value,
      $Res Function(_$NetworkNotInternetConnectionErrorCategoryImpl) _then)
      : super(_value, _then);

  /// Create a copy of NetworkErrorCategory
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$NetworkNotInternetConnectionErrorCategoryImpl
    implements _NetworkNotInternetConnectionErrorCategory {
  const _$NetworkNotInternetConnectionErrorCategoryImpl();

  @override
  String toString() {
    return 'NetworkErrorCategory.notInternetConnection()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NetworkNotInternetConnectionErrorCategoryImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() connectTimeout,
    required TResult Function() sendTimeout,
    required TResult Function() receiveTimeout,
    required TResult Function() requestCancelled,
    required TResult Function() notInternetConnection,
    required TResult Function() badCertificate,
    required TResult Function() badResponse,
    required TResult Function() base,
  }) {
    return notInternetConnection();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? connectTimeout,
    TResult? Function()? sendTimeout,
    TResult? Function()? receiveTimeout,
    TResult? Function()? requestCancelled,
    TResult? Function()? notInternetConnection,
    TResult? Function()? badCertificate,
    TResult? Function()? badResponse,
    TResult? Function()? base,
  }) {
    return notInternetConnection?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? connectTimeout,
    TResult Function()? sendTimeout,
    TResult Function()? receiveTimeout,
    TResult Function()? requestCancelled,
    TResult Function()? notInternetConnection,
    TResult Function()? badCertificate,
    TResult Function()? badResponse,
    TResult Function()? base,
    required TResult orElse(),
  }) {
    if (notInternetConnection != null) {
      return notInternetConnection();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NetworkConnectTimeoutErrorCategory value)
        connectTimeout,
    required TResult Function(_NetworkSendTimeoutErrorCategory value)
        sendTimeout,
    required TResult Function(_NetworkReceiveTimeoutErrorCategory value)
        receiveTimeout,
    required TResult Function(_NetworkRequestCancelledErrorCategory value)
        requestCancelled,
    required TResult Function(_NetworkNotInternetConnectionErrorCategory value)
        notInternetConnection,
    required TResult Function(_NetworkBadCertificateErrorCategory value)
        badCertificate,
    required TResult Function(_NetworkBadResponseErrorCategory value)
        badResponse,
    required TResult Function(_NetworkBaseErrorCategory value) base,
  }) {
    return notInternetConnection(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NetworkConnectTimeoutErrorCategory value)?
        connectTimeout,
    TResult? Function(_NetworkSendTimeoutErrorCategory value)? sendTimeout,
    TResult? Function(_NetworkReceiveTimeoutErrorCategory value)?
        receiveTimeout,
    TResult? Function(_NetworkRequestCancelledErrorCategory value)?
        requestCancelled,
    TResult? Function(_NetworkNotInternetConnectionErrorCategory value)?
        notInternetConnection,
    TResult? Function(_NetworkBadCertificateErrorCategory value)?
        badCertificate,
    TResult? Function(_NetworkBadResponseErrorCategory value)? badResponse,
    TResult? Function(_NetworkBaseErrorCategory value)? base,
  }) {
    return notInternetConnection?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NetworkConnectTimeoutErrorCategory value)? connectTimeout,
    TResult Function(_NetworkSendTimeoutErrorCategory value)? sendTimeout,
    TResult Function(_NetworkReceiveTimeoutErrorCategory value)? receiveTimeout,
    TResult Function(_NetworkRequestCancelledErrorCategory value)?
        requestCancelled,
    TResult Function(_NetworkNotInternetConnectionErrorCategory value)?
        notInternetConnection,
    TResult Function(_NetworkBadCertificateErrorCategory value)? badCertificate,
    TResult Function(_NetworkBadResponseErrorCategory value)? badResponse,
    TResult Function(_NetworkBaseErrorCategory value)? base,
    required TResult orElse(),
  }) {
    if (notInternetConnection != null) {
      return notInternetConnection(this);
    }
    return orElse();
  }
}

abstract class _NetworkNotInternetConnectionErrorCategory
    implements NetworkErrorCategory {
  const factory _NetworkNotInternetConnectionErrorCategory() =
      _$NetworkNotInternetConnectionErrorCategoryImpl;
}

/// @nodoc
abstract class _$$NetworkBadCertificateErrorCategoryImplCopyWith<$Res> {
  factory _$$NetworkBadCertificateErrorCategoryImplCopyWith(
          _$NetworkBadCertificateErrorCategoryImpl value,
          $Res Function(_$NetworkBadCertificateErrorCategoryImpl) then) =
      __$$NetworkBadCertificateErrorCategoryImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NetworkBadCertificateErrorCategoryImplCopyWithImpl<$Res>
    extends _$NetworkErrorCategoryCopyWithImpl<$Res,
        _$NetworkBadCertificateErrorCategoryImpl>
    implements _$$NetworkBadCertificateErrorCategoryImplCopyWith<$Res> {
  __$$NetworkBadCertificateErrorCategoryImplCopyWithImpl(
      _$NetworkBadCertificateErrorCategoryImpl _value,
      $Res Function(_$NetworkBadCertificateErrorCategoryImpl) _then)
      : super(_value, _then);

  /// Create a copy of NetworkErrorCategory
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$NetworkBadCertificateErrorCategoryImpl
    implements _NetworkBadCertificateErrorCategory {
  const _$NetworkBadCertificateErrorCategoryImpl();

  @override
  String toString() {
    return 'NetworkErrorCategory.badCertificate()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NetworkBadCertificateErrorCategoryImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() connectTimeout,
    required TResult Function() sendTimeout,
    required TResult Function() receiveTimeout,
    required TResult Function() requestCancelled,
    required TResult Function() notInternetConnection,
    required TResult Function() badCertificate,
    required TResult Function() badResponse,
    required TResult Function() base,
  }) {
    return badCertificate();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? connectTimeout,
    TResult? Function()? sendTimeout,
    TResult? Function()? receiveTimeout,
    TResult? Function()? requestCancelled,
    TResult? Function()? notInternetConnection,
    TResult? Function()? badCertificate,
    TResult? Function()? badResponse,
    TResult? Function()? base,
  }) {
    return badCertificate?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? connectTimeout,
    TResult Function()? sendTimeout,
    TResult Function()? receiveTimeout,
    TResult Function()? requestCancelled,
    TResult Function()? notInternetConnection,
    TResult Function()? badCertificate,
    TResult Function()? badResponse,
    TResult Function()? base,
    required TResult orElse(),
  }) {
    if (badCertificate != null) {
      return badCertificate();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NetworkConnectTimeoutErrorCategory value)
        connectTimeout,
    required TResult Function(_NetworkSendTimeoutErrorCategory value)
        sendTimeout,
    required TResult Function(_NetworkReceiveTimeoutErrorCategory value)
        receiveTimeout,
    required TResult Function(_NetworkRequestCancelledErrorCategory value)
        requestCancelled,
    required TResult Function(_NetworkNotInternetConnectionErrorCategory value)
        notInternetConnection,
    required TResult Function(_NetworkBadCertificateErrorCategory value)
        badCertificate,
    required TResult Function(_NetworkBadResponseErrorCategory value)
        badResponse,
    required TResult Function(_NetworkBaseErrorCategory value) base,
  }) {
    return badCertificate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NetworkConnectTimeoutErrorCategory value)?
        connectTimeout,
    TResult? Function(_NetworkSendTimeoutErrorCategory value)? sendTimeout,
    TResult? Function(_NetworkReceiveTimeoutErrorCategory value)?
        receiveTimeout,
    TResult? Function(_NetworkRequestCancelledErrorCategory value)?
        requestCancelled,
    TResult? Function(_NetworkNotInternetConnectionErrorCategory value)?
        notInternetConnection,
    TResult? Function(_NetworkBadCertificateErrorCategory value)?
        badCertificate,
    TResult? Function(_NetworkBadResponseErrorCategory value)? badResponse,
    TResult? Function(_NetworkBaseErrorCategory value)? base,
  }) {
    return badCertificate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NetworkConnectTimeoutErrorCategory value)? connectTimeout,
    TResult Function(_NetworkSendTimeoutErrorCategory value)? sendTimeout,
    TResult Function(_NetworkReceiveTimeoutErrorCategory value)? receiveTimeout,
    TResult Function(_NetworkRequestCancelledErrorCategory value)?
        requestCancelled,
    TResult Function(_NetworkNotInternetConnectionErrorCategory value)?
        notInternetConnection,
    TResult Function(_NetworkBadCertificateErrorCategory value)? badCertificate,
    TResult Function(_NetworkBadResponseErrorCategory value)? badResponse,
    TResult Function(_NetworkBaseErrorCategory value)? base,
    required TResult orElse(),
  }) {
    if (badCertificate != null) {
      return badCertificate(this);
    }
    return orElse();
  }
}

abstract class _NetworkBadCertificateErrorCategory
    implements NetworkErrorCategory {
  const factory _NetworkBadCertificateErrorCategory() =
      _$NetworkBadCertificateErrorCategoryImpl;
}

/// @nodoc
abstract class _$$NetworkBadResponseErrorCategoryImplCopyWith<$Res> {
  factory _$$NetworkBadResponseErrorCategoryImplCopyWith(
          _$NetworkBadResponseErrorCategoryImpl value,
          $Res Function(_$NetworkBadResponseErrorCategoryImpl) then) =
      __$$NetworkBadResponseErrorCategoryImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NetworkBadResponseErrorCategoryImplCopyWithImpl<$Res>
    extends _$NetworkErrorCategoryCopyWithImpl<$Res,
        _$NetworkBadResponseErrorCategoryImpl>
    implements _$$NetworkBadResponseErrorCategoryImplCopyWith<$Res> {
  __$$NetworkBadResponseErrorCategoryImplCopyWithImpl(
      _$NetworkBadResponseErrorCategoryImpl _value,
      $Res Function(_$NetworkBadResponseErrorCategoryImpl) _then)
      : super(_value, _then);

  /// Create a copy of NetworkErrorCategory
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$NetworkBadResponseErrorCategoryImpl
    implements _NetworkBadResponseErrorCategory {
  const _$NetworkBadResponseErrorCategoryImpl();

  @override
  String toString() {
    return 'NetworkErrorCategory.badResponse()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NetworkBadResponseErrorCategoryImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() connectTimeout,
    required TResult Function() sendTimeout,
    required TResult Function() receiveTimeout,
    required TResult Function() requestCancelled,
    required TResult Function() notInternetConnection,
    required TResult Function() badCertificate,
    required TResult Function() badResponse,
    required TResult Function() base,
  }) {
    return badResponse();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? connectTimeout,
    TResult? Function()? sendTimeout,
    TResult? Function()? receiveTimeout,
    TResult? Function()? requestCancelled,
    TResult? Function()? notInternetConnection,
    TResult? Function()? badCertificate,
    TResult? Function()? badResponse,
    TResult? Function()? base,
  }) {
    return badResponse?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? connectTimeout,
    TResult Function()? sendTimeout,
    TResult Function()? receiveTimeout,
    TResult Function()? requestCancelled,
    TResult Function()? notInternetConnection,
    TResult Function()? badCertificate,
    TResult Function()? badResponse,
    TResult Function()? base,
    required TResult orElse(),
  }) {
    if (badResponse != null) {
      return badResponse();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NetworkConnectTimeoutErrorCategory value)
        connectTimeout,
    required TResult Function(_NetworkSendTimeoutErrorCategory value)
        sendTimeout,
    required TResult Function(_NetworkReceiveTimeoutErrorCategory value)
        receiveTimeout,
    required TResult Function(_NetworkRequestCancelledErrorCategory value)
        requestCancelled,
    required TResult Function(_NetworkNotInternetConnectionErrorCategory value)
        notInternetConnection,
    required TResult Function(_NetworkBadCertificateErrorCategory value)
        badCertificate,
    required TResult Function(_NetworkBadResponseErrorCategory value)
        badResponse,
    required TResult Function(_NetworkBaseErrorCategory value) base,
  }) {
    return badResponse(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NetworkConnectTimeoutErrorCategory value)?
        connectTimeout,
    TResult? Function(_NetworkSendTimeoutErrorCategory value)? sendTimeout,
    TResult? Function(_NetworkReceiveTimeoutErrorCategory value)?
        receiveTimeout,
    TResult? Function(_NetworkRequestCancelledErrorCategory value)?
        requestCancelled,
    TResult? Function(_NetworkNotInternetConnectionErrorCategory value)?
        notInternetConnection,
    TResult? Function(_NetworkBadCertificateErrorCategory value)?
        badCertificate,
    TResult? Function(_NetworkBadResponseErrorCategory value)? badResponse,
    TResult? Function(_NetworkBaseErrorCategory value)? base,
  }) {
    return badResponse?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NetworkConnectTimeoutErrorCategory value)? connectTimeout,
    TResult Function(_NetworkSendTimeoutErrorCategory value)? sendTimeout,
    TResult Function(_NetworkReceiveTimeoutErrorCategory value)? receiveTimeout,
    TResult Function(_NetworkRequestCancelledErrorCategory value)?
        requestCancelled,
    TResult Function(_NetworkNotInternetConnectionErrorCategory value)?
        notInternetConnection,
    TResult Function(_NetworkBadCertificateErrorCategory value)? badCertificate,
    TResult Function(_NetworkBadResponseErrorCategory value)? badResponse,
    TResult Function(_NetworkBaseErrorCategory value)? base,
    required TResult orElse(),
  }) {
    if (badResponse != null) {
      return badResponse(this);
    }
    return orElse();
  }
}

abstract class _NetworkBadResponseErrorCategory
    implements NetworkErrorCategory {
  const factory _NetworkBadResponseErrorCategory() =
      _$NetworkBadResponseErrorCategoryImpl;
}

/// @nodoc
abstract class _$$NetworkBaseErrorCategoryImplCopyWith<$Res> {
  factory _$$NetworkBaseErrorCategoryImplCopyWith(
          _$NetworkBaseErrorCategoryImpl value,
          $Res Function(_$NetworkBaseErrorCategoryImpl) then) =
      __$$NetworkBaseErrorCategoryImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NetworkBaseErrorCategoryImplCopyWithImpl<$Res>
    extends _$NetworkErrorCategoryCopyWithImpl<$Res,
        _$NetworkBaseErrorCategoryImpl>
    implements _$$NetworkBaseErrorCategoryImplCopyWith<$Res> {
  __$$NetworkBaseErrorCategoryImplCopyWithImpl(
      _$NetworkBaseErrorCategoryImpl _value,
      $Res Function(_$NetworkBaseErrorCategoryImpl) _then)
      : super(_value, _then);

  /// Create a copy of NetworkErrorCategory
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$NetworkBaseErrorCategoryImpl implements _NetworkBaseErrorCategory {
  const _$NetworkBaseErrorCategoryImpl();

  @override
  String toString() {
    return 'NetworkErrorCategory.base()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NetworkBaseErrorCategoryImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() connectTimeout,
    required TResult Function() sendTimeout,
    required TResult Function() receiveTimeout,
    required TResult Function() requestCancelled,
    required TResult Function() notInternetConnection,
    required TResult Function() badCertificate,
    required TResult Function() badResponse,
    required TResult Function() base,
  }) {
    return base();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? connectTimeout,
    TResult? Function()? sendTimeout,
    TResult? Function()? receiveTimeout,
    TResult? Function()? requestCancelled,
    TResult? Function()? notInternetConnection,
    TResult? Function()? badCertificate,
    TResult? Function()? badResponse,
    TResult? Function()? base,
  }) {
    return base?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? connectTimeout,
    TResult Function()? sendTimeout,
    TResult Function()? receiveTimeout,
    TResult Function()? requestCancelled,
    TResult Function()? notInternetConnection,
    TResult Function()? badCertificate,
    TResult Function()? badResponse,
    TResult Function()? base,
    required TResult orElse(),
  }) {
    if (base != null) {
      return base();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NetworkConnectTimeoutErrorCategory value)
        connectTimeout,
    required TResult Function(_NetworkSendTimeoutErrorCategory value)
        sendTimeout,
    required TResult Function(_NetworkReceiveTimeoutErrorCategory value)
        receiveTimeout,
    required TResult Function(_NetworkRequestCancelledErrorCategory value)
        requestCancelled,
    required TResult Function(_NetworkNotInternetConnectionErrorCategory value)
        notInternetConnection,
    required TResult Function(_NetworkBadCertificateErrorCategory value)
        badCertificate,
    required TResult Function(_NetworkBadResponseErrorCategory value)
        badResponse,
    required TResult Function(_NetworkBaseErrorCategory value) base,
  }) {
    return base(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NetworkConnectTimeoutErrorCategory value)?
        connectTimeout,
    TResult? Function(_NetworkSendTimeoutErrorCategory value)? sendTimeout,
    TResult? Function(_NetworkReceiveTimeoutErrorCategory value)?
        receiveTimeout,
    TResult? Function(_NetworkRequestCancelledErrorCategory value)?
        requestCancelled,
    TResult? Function(_NetworkNotInternetConnectionErrorCategory value)?
        notInternetConnection,
    TResult? Function(_NetworkBadCertificateErrorCategory value)?
        badCertificate,
    TResult? Function(_NetworkBadResponseErrorCategory value)? badResponse,
    TResult? Function(_NetworkBaseErrorCategory value)? base,
  }) {
    return base?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NetworkConnectTimeoutErrorCategory value)? connectTimeout,
    TResult Function(_NetworkSendTimeoutErrorCategory value)? sendTimeout,
    TResult Function(_NetworkReceiveTimeoutErrorCategory value)? receiveTimeout,
    TResult Function(_NetworkRequestCancelledErrorCategory value)?
        requestCancelled,
    TResult Function(_NetworkNotInternetConnectionErrorCategory value)?
        notInternetConnection,
    TResult Function(_NetworkBadCertificateErrorCategory value)? badCertificate,
    TResult Function(_NetworkBadResponseErrorCategory value)? badResponse,
    TResult Function(_NetworkBaseErrorCategory value)? base,
    required TResult orElse(),
  }) {
    if (base != null) {
      return base(this);
    }
    return orElse();
  }
}

abstract class _NetworkBaseErrorCategory implements NetworkErrorCategory {
  const factory _NetworkBaseErrorCategory() = _$NetworkBaseErrorCategoryImpl;
}
