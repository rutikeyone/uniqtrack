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
    required TResult Function(PermissionErrorCategory category) permission,
    required TResult Function(NetworkErrorCategory category) network,
    required TResult Function(AuthenticationErrorCategory category)
        authentication,
    required TResult Function(AccessErrorCategory category) access,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? base,
    TResult? Function(FirebaseErrorCategory category)? firebase,
    TResult? Function(PermissionErrorCategory category)? permission,
    TResult? Function(NetworkErrorCategory category)? network,
    TResult? Function(AuthenticationErrorCategory category)? authentication,
    TResult? Function(AccessErrorCategory category)? access,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? base,
    TResult Function(FirebaseErrorCategory category)? firebase,
    TResult Function(PermissionErrorCategory category)? permission,
    TResult Function(NetworkErrorCategory category)? network,
    TResult Function(AuthenticationErrorCategory category)? authentication,
    TResult Function(AccessErrorCategory category)? access,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppBaseError value) base,
    required TResult Function(AppFirebaseError value) firebase,
    required TResult Function(AppPermissionError value) permission,
    required TResult Function(AppNetworkError value) network,
    required TResult Function(AppAuthenticationError value) authentication,
    required TResult Function(AppAccessError value) access,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppBaseError value)? base,
    TResult? Function(AppFirebaseError value)? firebase,
    TResult? Function(AppPermissionError value)? permission,
    TResult? Function(AppNetworkError value)? network,
    TResult? Function(AppAuthenticationError value)? authentication,
    TResult? Function(AppAccessError value)? access,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppBaseError value)? base,
    TResult Function(AppFirebaseError value)? firebase,
    TResult Function(AppPermissionError value)? permission,
    TResult Function(AppNetworkError value)? network,
    TResult Function(AppAuthenticationError value)? authentication,
    TResult Function(AppAccessError value)? access,
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

class _$AppBaseErrorImpl extends AppBaseError with DiagnosticableTreeMixin {
  const _$AppBaseErrorImpl() : super._();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AppError.base()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'AppError.base'));
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
    required TResult Function(PermissionErrorCategory category) permission,
    required TResult Function(NetworkErrorCategory category) network,
    required TResult Function(AuthenticationErrorCategory category)
        authentication,
    required TResult Function(AccessErrorCategory category) access,
  }) {
    return base();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? base,
    TResult? Function(FirebaseErrorCategory category)? firebase,
    TResult? Function(PermissionErrorCategory category)? permission,
    TResult? Function(NetworkErrorCategory category)? network,
    TResult? Function(AuthenticationErrorCategory category)? authentication,
    TResult? Function(AccessErrorCategory category)? access,
  }) {
    return base?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? base,
    TResult Function(FirebaseErrorCategory category)? firebase,
    TResult Function(PermissionErrorCategory category)? permission,
    TResult Function(NetworkErrorCategory category)? network,
    TResult Function(AuthenticationErrorCategory category)? authentication,
    TResult Function(AccessErrorCategory category)? access,
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
    required TResult Function(AppBaseError value) base,
    required TResult Function(AppFirebaseError value) firebase,
    required TResult Function(AppPermissionError value) permission,
    required TResult Function(AppNetworkError value) network,
    required TResult Function(AppAuthenticationError value) authentication,
    required TResult Function(AppAccessError value) access,
  }) {
    return base(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppBaseError value)? base,
    TResult? Function(AppFirebaseError value)? firebase,
    TResult? Function(AppPermissionError value)? permission,
    TResult? Function(AppNetworkError value)? network,
    TResult? Function(AppAuthenticationError value)? authentication,
    TResult? Function(AppAccessError value)? access,
  }) {
    return base?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppBaseError value)? base,
    TResult Function(AppFirebaseError value)? firebase,
    TResult Function(AppPermissionError value)? permission,
    TResult Function(AppNetworkError value)? network,
    TResult Function(AppAuthenticationError value)? authentication,
    TResult Function(AppAccessError value)? access,
    required TResult orElse(),
  }) {
    if (base != null) {
      return base(this);
    }
    return orElse();
  }
}

abstract class AppBaseError extends AppError {
  const factory AppBaseError() = _$AppBaseErrorImpl;
  const AppBaseError._() : super._();
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

class _$AppFirebaseErrorImpl extends AppFirebaseError
    with DiagnosticableTreeMixin {
  const _$AppFirebaseErrorImpl({required this.category}) : super._();

  @override
  final FirebaseErrorCategory category;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AppError.firebase(category: $category)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AppError.firebase'))
      ..add(DiagnosticsProperty('category', category));
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
    required TResult Function(PermissionErrorCategory category) permission,
    required TResult Function(NetworkErrorCategory category) network,
    required TResult Function(AuthenticationErrorCategory category)
        authentication,
    required TResult Function(AccessErrorCategory category) access,
  }) {
    return firebase(category);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? base,
    TResult? Function(FirebaseErrorCategory category)? firebase,
    TResult? Function(PermissionErrorCategory category)? permission,
    TResult? Function(NetworkErrorCategory category)? network,
    TResult? Function(AuthenticationErrorCategory category)? authentication,
    TResult? Function(AccessErrorCategory category)? access,
  }) {
    return firebase?.call(category);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? base,
    TResult Function(FirebaseErrorCategory category)? firebase,
    TResult Function(PermissionErrorCategory category)? permission,
    TResult Function(NetworkErrorCategory category)? network,
    TResult Function(AuthenticationErrorCategory category)? authentication,
    TResult Function(AccessErrorCategory category)? access,
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
    required TResult Function(AppBaseError value) base,
    required TResult Function(AppFirebaseError value) firebase,
    required TResult Function(AppPermissionError value) permission,
    required TResult Function(AppNetworkError value) network,
    required TResult Function(AppAuthenticationError value) authentication,
    required TResult Function(AppAccessError value) access,
  }) {
    return firebase(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppBaseError value)? base,
    TResult? Function(AppFirebaseError value)? firebase,
    TResult? Function(AppPermissionError value)? permission,
    TResult? Function(AppNetworkError value)? network,
    TResult? Function(AppAuthenticationError value)? authentication,
    TResult? Function(AppAccessError value)? access,
  }) {
    return firebase?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppBaseError value)? base,
    TResult Function(AppFirebaseError value)? firebase,
    TResult Function(AppPermissionError value)? permission,
    TResult Function(AppNetworkError value)? network,
    TResult Function(AppAuthenticationError value)? authentication,
    TResult Function(AppAccessError value)? access,
    required TResult orElse(),
  }) {
    if (firebase != null) {
      return firebase(this);
    }
    return orElse();
  }
}

abstract class AppFirebaseError extends AppError {
  const factory AppFirebaseError(
      {required final FirebaseErrorCategory category}) = _$AppFirebaseErrorImpl;
  const AppFirebaseError._() : super._();

  FirebaseErrorCategory get category;

  /// Create a copy of AppError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppFirebaseErrorImplCopyWith<_$AppFirebaseErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AppPermissionErrorImplCopyWith<$Res> {
  factory _$$AppPermissionErrorImplCopyWith(_$AppPermissionErrorImpl value,
          $Res Function(_$AppPermissionErrorImpl) then) =
      __$$AppPermissionErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({PermissionErrorCategory category});

  $PermissionErrorCategoryCopyWith<$Res> get category;
}

/// @nodoc
class __$$AppPermissionErrorImplCopyWithImpl<$Res>
    extends _$AppErrorCopyWithImpl<$Res, _$AppPermissionErrorImpl>
    implements _$$AppPermissionErrorImplCopyWith<$Res> {
  __$$AppPermissionErrorImplCopyWithImpl(_$AppPermissionErrorImpl _value,
      $Res Function(_$AppPermissionErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppError
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
  }) {
    return _then(_$AppPermissionErrorImpl(
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as PermissionErrorCategory,
    ));
  }

  /// Create a copy of AppError
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PermissionErrorCategoryCopyWith<$Res> get category {
    return $PermissionErrorCategoryCopyWith<$Res>(_value.category, (value) {
      return _then(_value.copyWith(category: value));
    });
  }
}

/// @nodoc

class _$AppPermissionErrorImpl extends AppPermissionError
    with DiagnosticableTreeMixin {
  const _$AppPermissionErrorImpl({required this.category}) : super._();

  @override
  final PermissionErrorCategory category;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AppError.permission(category: $category)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AppError.permission'))
      ..add(DiagnosticsProperty('category', category));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppPermissionErrorImpl &&
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
  _$$AppPermissionErrorImplCopyWith<_$AppPermissionErrorImpl> get copyWith =>
      __$$AppPermissionErrorImplCopyWithImpl<_$AppPermissionErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() base,
    required TResult Function(FirebaseErrorCategory category) firebase,
    required TResult Function(PermissionErrorCategory category) permission,
    required TResult Function(NetworkErrorCategory category) network,
    required TResult Function(AuthenticationErrorCategory category)
        authentication,
    required TResult Function(AccessErrorCategory category) access,
  }) {
    return permission(category);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? base,
    TResult? Function(FirebaseErrorCategory category)? firebase,
    TResult? Function(PermissionErrorCategory category)? permission,
    TResult? Function(NetworkErrorCategory category)? network,
    TResult? Function(AuthenticationErrorCategory category)? authentication,
    TResult? Function(AccessErrorCategory category)? access,
  }) {
    return permission?.call(category);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? base,
    TResult Function(FirebaseErrorCategory category)? firebase,
    TResult Function(PermissionErrorCategory category)? permission,
    TResult Function(NetworkErrorCategory category)? network,
    TResult Function(AuthenticationErrorCategory category)? authentication,
    TResult Function(AccessErrorCategory category)? access,
    required TResult orElse(),
  }) {
    if (permission != null) {
      return permission(category);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppBaseError value) base,
    required TResult Function(AppFirebaseError value) firebase,
    required TResult Function(AppPermissionError value) permission,
    required TResult Function(AppNetworkError value) network,
    required TResult Function(AppAuthenticationError value) authentication,
    required TResult Function(AppAccessError value) access,
  }) {
    return permission(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppBaseError value)? base,
    TResult? Function(AppFirebaseError value)? firebase,
    TResult? Function(AppPermissionError value)? permission,
    TResult? Function(AppNetworkError value)? network,
    TResult? Function(AppAuthenticationError value)? authentication,
    TResult? Function(AppAccessError value)? access,
  }) {
    return permission?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppBaseError value)? base,
    TResult Function(AppFirebaseError value)? firebase,
    TResult Function(AppPermissionError value)? permission,
    TResult Function(AppNetworkError value)? network,
    TResult Function(AppAuthenticationError value)? authentication,
    TResult Function(AppAccessError value)? access,
    required TResult orElse(),
  }) {
    if (permission != null) {
      return permission(this);
    }
    return orElse();
  }
}

abstract class AppPermissionError extends AppError {
  const factory AppPermissionError(
          {required final PermissionErrorCategory category}) =
      _$AppPermissionErrorImpl;
  const AppPermissionError._() : super._();

  PermissionErrorCategory get category;

  /// Create a copy of AppError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppPermissionErrorImplCopyWith<_$AppPermissionErrorImpl> get copyWith =>
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

class _$AppNetworkErrorImpl extends AppNetworkError
    with DiagnosticableTreeMixin {
  const _$AppNetworkErrorImpl({required this.category}) : super._();

  @override
  final NetworkErrorCategory category;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AppError.network(category: $category)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AppError.network'))
      ..add(DiagnosticsProperty('category', category));
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
    required TResult Function(PermissionErrorCategory category) permission,
    required TResult Function(NetworkErrorCategory category) network,
    required TResult Function(AuthenticationErrorCategory category)
        authentication,
    required TResult Function(AccessErrorCategory category) access,
  }) {
    return network(category);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? base,
    TResult? Function(FirebaseErrorCategory category)? firebase,
    TResult? Function(PermissionErrorCategory category)? permission,
    TResult? Function(NetworkErrorCategory category)? network,
    TResult? Function(AuthenticationErrorCategory category)? authentication,
    TResult? Function(AccessErrorCategory category)? access,
  }) {
    return network?.call(category);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? base,
    TResult Function(FirebaseErrorCategory category)? firebase,
    TResult Function(PermissionErrorCategory category)? permission,
    TResult Function(NetworkErrorCategory category)? network,
    TResult Function(AuthenticationErrorCategory category)? authentication,
    TResult Function(AccessErrorCategory category)? access,
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
    required TResult Function(AppBaseError value) base,
    required TResult Function(AppFirebaseError value) firebase,
    required TResult Function(AppPermissionError value) permission,
    required TResult Function(AppNetworkError value) network,
    required TResult Function(AppAuthenticationError value) authentication,
    required TResult Function(AppAccessError value) access,
  }) {
    return network(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppBaseError value)? base,
    TResult? Function(AppFirebaseError value)? firebase,
    TResult? Function(AppPermissionError value)? permission,
    TResult? Function(AppNetworkError value)? network,
    TResult? Function(AppAuthenticationError value)? authentication,
    TResult? Function(AppAccessError value)? access,
  }) {
    return network?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppBaseError value)? base,
    TResult Function(AppFirebaseError value)? firebase,
    TResult Function(AppPermissionError value)? permission,
    TResult Function(AppNetworkError value)? network,
    TResult Function(AppAuthenticationError value)? authentication,
    TResult Function(AppAccessError value)? access,
    required TResult orElse(),
  }) {
    if (network != null) {
      return network(this);
    }
    return orElse();
  }
}

abstract class AppNetworkError extends AppError {
  const factory AppNetworkError(
      {required final NetworkErrorCategory category}) = _$AppNetworkErrorImpl;
  const AppNetworkError._() : super._();

  NetworkErrorCategory get category;

  /// Create a copy of AppError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppNetworkErrorImplCopyWith<_$AppNetworkErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AppAuthenticationErrorImplCopyWith<$Res> {
  factory _$$AppAuthenticationErrorImplCopyWith(
          _$AppAuthenticationErrorImpl value,
          $Res Function(_$AppAuthenticationErrorImpl) then) =
      __$$AppAuthenticationErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AuthenticationErrorCategory category});

  $AuthenticationErrorCategoryCopyWith<$Res> get category;
}

/// @nodoc
class __$$AppAuthenticationErrorImplCopyWithImpl<$Res>
    extends _$AppErrorCopyWithImpl<$Res, _$AppAuthenticationErrorImpl>
    implements _$$AppAuthenticationErrorImplCopyWith<$Res> {
  __$$AppAuthenticationErrorImplCopyWithImpl(
      _$AppAuthenticationErrorImpl _value,
      $Res Function(_$AppAuthenticationErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppError
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
  }) {
    return _then(_$AppAuthenticationErrorImpl(
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as AuthenticationErrorCategory,
    ));
  }

  /// Create a copy of AppError
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AuthenticationErrorCategoryCopyWith<$Res> get category {
    return $AuthenticationErrorCategoryCopyWith<$Res>(_value.category, (value) {
      return _then(_value.copyWith(category: value));
    });
  }
}

/// @nodoc

class _$AppAuthenticationErrorImpl extends AppAuthenticationError
    with DiagnosticableTreeMixin {
  const _$AppAuthenticationErrorImpl({required this.category}) : super._();

  @override
  final AuthenticationErrorCategory category;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AppError.authentication(category: $category)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AppError.authentication'))
      ..add(DiagnosticsProperty('category', category));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppAuthenticationErrorImpl &&
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
  _$$AppAuthenticationErrorImplCopyWith<_$AppAuthenticationErrorImpl>
      get copyWith => __$$AppAuthenticationErrorImplCopyWithImpl<
          _$AppAuthenticationErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() base,
    required TResult Function(FirebaseErrorCategory category) firebase,
    required TResult Function(PermissionErrorCategory category) permission,
    required TResult Function(NetworkErrorCategory category) network,
    required TResult Function(AuthenticationErrorCategory category)
        authentication,
    required TResult Function(AccessErrorCategory category) access,
  }) {
    return authentication(category);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? base,
    TResult? Function(FirebaseErrorCategory category)? firebase,
    TResult? Function(PermissionErrorCategory category)? permission,
    TResult? Function(NetworkErrorCategory category)? network,
    TResult? Function(AuthenticationErrorCategory category)? authentication,
    TResult? Function(AccessErrorCategory category)? access,
  }) {
    return authentication?.call(category);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? base,
    TResult Function(FirebaseErrorCategory category)? firebase,
    TResult Function(PermissionErrorCategory category)? permission,
    TResult Function(NetworkErrorCategory category)? network,
    TResult Function(AuthenticationErrorCategory category)? authentication,
    TResult Function(AccessErrorCategory category)? access,
    required TResult orElse(),
  }) {
    if (authentication != null) {
      return authentication(category);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppBaseError value) base,
    required TResult Function(AppFirebaseError value) firebase,
    required TResult Function(AppPermissionError value) permission,
    required TResult Function(AppNetworkError value) network,
    required TResult Function(AppAuthenticationError value) authentication,
    required TResult Function(AppAccessError value) access,
  }) {
    return authentication(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppBaseError value)? base,
    TResult? Function(AppFirebaseError value)? firebase,
    TResult? Function(AppPermissionError value)? permission,
    TResult? Function(AppNetworkError value)? network,
    TResult? Function(AppAuthenticationError value)? authentication,
    TResult? Function(AppAccessError value)? access,
  }) {
    return authentication?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppBaseError value)? base,
    TResult Function(AppFirebaseError value)? firebase,
    TResult Function(AppPermissionError value)? permission,
    TResult Function(AppNetworkError value)? network,
    TResult Function(AppAuthenticationError value)? authentication,
    TResult Function(AppAccessError value)? access,
    required TResult orElse(),
  }) {
    if (authentication != null) {
      return authentication(this);
    }
    return orElse();
  }
}

abstract class AppAuthenticationError extends AppError {
  const factory AppAuthenticationError(
          {required final AuthenticationErrorCategory category}) =
      _$AppAuthenticationErrorImpl;
  const AppAuthenticationError._() : super._();

  AuthenticationErrorCategory get category;

  /// Create a copy of AppError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppAuthenticationErrorImplCopyWith<_$AppAuthenticationErrorImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AppAccessErrorImplCopyWith<$Res> {
  factory _$$AppAccessErrorImplCopyWith(_$AppAccessErrorImpl value,
          $Res Function(_$AppAccessErrorImpl) then) =
      __$$AppAccessErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AccessErrorCategory category});

  $AccessErrorCategoryCopyWith<$Res> get category;
}

/// @nodoc
class __$$AppAccessErrorImplCopyWithImpl<$Res>
    extends _$AppErrorCopyWithImpl<$Res, _$AppAccessErrorImpl>
    implements _$$AppAccessErrorImplCopyWith<$Res> {
  __$$AppAccessErrorImplCopyWithImpl(
      _$AppAccessErrorImpl _value, $Res Function(_$AppAccessErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppError
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
  }) {
    return _then(_$AppAccessErrorImpl(
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as AccessErrorCategory,
    ));
  }

  /// Create a copy of AppError
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AccessErrorCategoryCopyWith<$Res> get category {
    return $AccessErrorCategoryCopyWith<$Res>(_value.category, (value) {
      return _then(_value.copyWith(category: value));
    });
  }
}

/// @nodoc

class _$AppAccessErrorImpl extends AppAccessError with DiagnosticableTreeMixin {
  const _$AppAccessErrorImpl({required this.category}) : super._();

  @override
  final AccessErrorCategory category;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AppError.access(category: $category)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AppError.access'))
      ..add(DiagnosticsProperty('category', category));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppAccessErrorImpl &&
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
  _$$AppAccessErrorImplCopyWith<_$AppAccessErrorImpl> get copyWith =>
      __$$AppAccessErrorImplCopyWithImpl<_$AppAccessErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() base,
    required TResult Function(FirebaseErrorCategory category) firebase,
    required TResult Function(PermissionErrorCategory category) permission,
    required TResult Function(NetworkErrorCategory category) network,
    required TResult Function(AuthenticationErrorCategory category)
        authentication,
    required TResult Function(AccessErrorCategory category) access,
  }) {
    return access(category);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? base,
    TResult? Function(FirebaseErrorCategory category)? firebase,
    TResult? Function(PermissionErrorCategory category)? permission,
    TResult? Function(NetworkErrorCategory category)? network,
    TResult? Function(AuthenticationErrorCategory category)? authentication,
    TResult? Function(AccessErrorCategory category)? access,
  }) {
    return access?.call(category);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? base,
    TResult Function(FirebaseErrorCategory category)? firebase,
    TResult Function(PermissionErrorCategory category)? permission,
    TResult Function(NetworkErrorCategory category)? network,
    TResult Function(AuthenticationErrorCategory category)? authentication,
    TResult Function(AccessErrorCategory category)? access,
    required TResult orElse(),
  }) {
    if (access != null) {
      return access(category);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppBaseError value) base,
    required TResult Function(AppFirebaseError value) firebase,
    required TResult Function(AppPermissionError value) permission,
    required TResult Function(AppNetworkError value) network,
    required TResult Function(AppAuthenticationError value) authentication,
    required TResult Function(AppAccessError value) access,
  }) {
    return access(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppBaseError value)? base,
    TResult? Function(AppFirebaseError value)? firebase,
    TResult? Function(AppPermissionError value)? permission,
    TResult? Function(AppNetworkError value)? network,
    TResult? Function(AppAuthenticationError value)? authentication,
    TResult? Function(AppAccessError value)? access,
  }) {
    return access?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppBaseError value)? base,
    TResult Function(AppFirebaseError value)? firebase,
    TResult Function(AppPermissionError value)? permission,
    TResult Function(AppNetworkError value)? network,
    TResult Function(AppAuthenticationError value)? authentication,
    TResult Function(AppAccessError value)? access,
    required TResult orElse(),
  }) {
    if (access != null) {
      return access(this);
    }
    return orElse();
  }
}

abstract class AppAccessError extends AppError {
  const factory AppAccessError({required final AccessErrorCategory category}) =
      _$AppAccessErrorImpl;
  const AppAccessError._() : super._();

  AccessErrorCategory get category;

  /// Create a copy of AppError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppAccessErrorImplCopyWith<_$AppAccessErrorImpl> get copyWith =>
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
    required TResult Function() userDisabled,
    required TResult Function() userNotFound,
    required TResult Function() wrongPassword,
    required TResult Function() invalidCredential,
    required TResult Function() unauthorizedContinueUri,
    required TResult Function() invalidContinueUri,
    required TResult Function() missingIOSBundleId,
    required TResult Function() missingContinueUri,
    required TResult Function() missingAndroidPkgName,
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
    TResult? Function()? userDisabled,
    TResult? Function()? userNotFound,
    TResult? Function()? wrongPassword,
    TResult? Function()? invalidCredential,
    TResult? Function()? unauthorizedContinueUri,
    TResult? Function()? invalidContinueUri,
    TResult? Function()? missingIOSBundleId,
    TResult? Function()? missingContinueUri,
    TResult? Function()? missingAndroidPkgName,
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
    TResult Function()? userDisabled,
    TResult Function()? userNotFound,
    TResult Function()? wrongPassword,
    TResult Function()? invalidCredential,
    TResult Function()? unauthorizedContinueUri,
    TResult Function()? invalidContinueUri,
    TResult Function()? missingIOSBundleId,
    TResult Function()? missingContinueUri,
    TResult Function()? missingAndroidPkgName,
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
    required TResult Function(_FirebaseUserDisabledErrorCategory value)
        userDisabled,
    required TResult Function(_FirebaseUserNotFoundErrorCategory value)
        userNotFound,
    required TResult Function(_FirebaseWrongPasswordErrorCategory value)
        wrongPassword,
    required TResult Function(_FirebaseInvalidCredentionErrorCategory value)
        invalidCredential,
    required TResult Function(
            _FirebaseUnauthorizedContinueUriErrorCategory value)
        unauthorizedContinueUri,
    required TResult Function(_FirebaseInvalidContinueUriErrorCategory value)
        invalidContinueUri,
    required TResult Function(_FirebaseMissingIOSByndleIdErrorCategory value)
        missingIOSBundleId,
    required TResult Function(_FirebaseMissionContinueUriErrorCategory value)
        missingContinueUri,
    required TResult Function(_FirebaseMissionAndroidPkgNameErrorCategory value)
        missingAndroidPkgName,
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
    TResult? Function(_FirebaseUserDisabledErrorCategory value)? userDisabled,
    TResult? Function(_FirebaseUserNotFoundErrorCategory value)? userNotFound,
    TResult? Function(_FirebaseWrongPasswordErrorCategory value)? wrongPassword,
    TResult? Function(_FirebaseInvalidCredentionErrorCategory value)?
        invalidCredential,
    TResult? Function(_FirebaseUnauthorizedContinueUriErrorCategory value)?
        unauthorizedContinueUri,
    TResult? Function(_FirebaseInvalidContinueUriErrorCategory value)?
        invalidContinueUri,
    TResult? Function(_FirebaseMissingIOSByndleIdErrorCategory value)?
        missingIOSBundleId,
    TResult? Function(_FirebaseMissionContinueUriErrorCategory value)?
        missingContinueUri,
    TResult? Function(_FirebaseMissionAndroidPkgNameErrorCategory value)?
        missingAndroidPkgName,
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
    TResult Function(_FirebaseUserDisabledErrorCategory value)? userDisabled,
    TResult Function(_FirebaseUserNotFoundErrorCategory value)? userNotFound,
    TResult Function(_FirebaseWrongPasswordErrorCategory value)? wrongPassword,
    TResult Function(_FirebaseInvalidCredentionErrorCategory value)?
        invalidCredential,
    TResult Function(_FirebaseUnauthorizedContinueUriErrorCategory value)?
        unauthorizedContinueUri,
    TResult Function(_FirebaseInvalidContinueUriErrorCategory value)?
        invalidContinueUri,
    TResult Function(_FirebaseMissingIOSByndleIdErrorCategory value)?
        missingIOSBundleId,
    TResult Function(_FirebaseMissionContinueUriErrorCategory value)?
        missingContinueUri,
    TResult Function(_FirebaseMissionAndroidPkgNameErrorCategory value)?
        missingAndroidPkgName,
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

class _$FirebaseBaseErrorCategoryImpl
    with DiagnosticableTreeMixin
    implements _FirebaseBaseErrorCategory {
  const _$FirebaseBaseErrorCategoryImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FirebaseErrorCategory.base()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'FirebaseErrorCategory.base'));
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
    required TResult Function() userDisabled,
    required TResult Function() userNotFound,
    required TResult Function() wrongPassword,
    required TResult Function() invalidCredential,
    required TResult Function() unauthorizedContinueUri,
    required TResult Function() invalidContinueUri,
    required TResult Function() missingIOSBundleId,
    required TResult Function() missingContinueUri,
    required TResult Function() missingAndroidPkgName,
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
    TResult? Function()? userDisabled,
    TResult? Function()? userNotFound,
    TResult? Function()? wrongPassword,
    TResult? Function()? invalidCredential,
    TResult? Function()? unauthorizedContinueUri,
    TResult? Function()? invalidContinueUri,
    TResult? Function()? missingIOSBundleId,
    TResult? Function()? missingContinueUri,
    TResult? Function()? missingAndroidPkgName,
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
    TResult Function()? userDisabled,
    TResult Function()? userNotFound,
    TResult Function()? wrongPassword,
    TResult Function()? invalidCredential,
    TResult Function()? unauthorizedContinueUri,
    TResult Function()? invalidContinueUri,
    TResult Function()? missingIOSBundleId,
    TResult Function()? missingContinueUri,
    TResult Function()? missingAndroidPkgName,
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
    required TResult Function(_FirebaseUserDisabledErrorCategory value)
        userDisabled,
    required TResult Function(_FirebaseUserNotFoundErrorCategory value)
        userNotFound,
    required TResult Function(_FirebaseWrongPasswordErrorCategory value)
        wrongPassword,
    required TResult Function(_FirebaseInvalidCredentionErrorCategory value)
        invalidCredential,
    required TResult Function(
            _FirebaseUnauthorizedContinueUriErrorCategory value)
        unauthorizedContinueUri,
    required TResult Function(_FirebaseInvalidContinueUriErrorCategory value)
        invalidContinueUri,
    required TResult Function(_FirebaseMissingIOSByndleIdErrorCategory value)
        missingIOSBundleId,
    required TResult Function(_FirebaseMissionContinueUriErrorCategory value)
        missingContinueUri,
    required TResult Function(_FirebaseMissionAndroidPkgNameErrorCategory value)
        missingAndroidPkgName,
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
    TResult? Function(_FirebaseUserDisabledErrorCategory value)? userDisabled,
    TResult? Function(_FirebaseUserNotFoundErrorCategory value)? userNotFound,
    TResult? Function(_FirebaseWrongPasswordErrorCategory value)? wrongPassword,
    TResult? Function(_FirebaseInvalidCredentionErrorCategory value)?
        invalidCredential,
    TResult? Function(_FirebaseUnauthorizedContinueUriErrorCategory value)?
        unauthorizedContinueUri,
    TResult? Function(_FirebaseInvalidContinueUriErrorCategory value)?
        invalidContinueUri,
    TResult? Function(_FirebaseMissingIOSByndleIdErrorCategory value)?
        missingIOSBundleId,
    TResult? Function(_FirebaseMissionContinueUriErrorCategory value)?
        missingContinueUri,
    TResult? Function(_FirebaseMissionAndroidPkgNameErrorCategory value)?
        missingAndroidPkgName,
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
    TResult Function(_FirebaseUserDisabledErrorCategory value)? userDisabled,
    TResult Function(_FirebaseUserNotFoundErrorCategory value)? userNotFound,
    TResult Function(_FirebaseWrongPasswordErrorCategory value)? wrongPassword,
    TResult Function(_FirebaseInvalidCredentionErrorCategory value)?
        invalidCredential,
    TResult Function(_FirebaseUnauthorizedContinueUriErrorCategory value)?
        unauthorizedContinueUri,
    TResult Function(_FirebaseInvalidContinueUriErrorCategory value)?
        invalidContinueUri,
    TResult Function(_FirebaseMissingIOSByndleIdErrorCategory value)?
        missingIOSBundleId,
    TResult Function(_FirebaseMissionContinueUriErrorCategory value)?
        missingContinueUri,
    TResult Function(_FirebaseMissionAndroidPkgNameErrorCategory value)?
        missingAndroidPkgName,
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
    with DiagnosticableTreeMixin
    implements _FirebaseEmailAlreadyInUseErrorCategory {
  const _$FirebaseEmailAlreadyInUseErrorCategoryImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FirebaseErrorCategory.emailAlreadyInUse()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(
        DiagnosticsProperty('type', 'FirebaseErrorCategory.emailAlreadyInUse'));
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
    required TResult Function() userDisabled,
    required TResult Function() userNotFound,
    required TResult Function() wrongPassword,
    required TResult Function() invalidCredential,
    required TResult Function() unauthorizedContinueUri,
    required TResult Function() invalidContinueUri,
    required TResult Function() missingIOSBundleId,
    required TResult Function() missingContinueUri,
    required TResult Function() missingAndroidPkgName,
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
    TResult? Function()? userDisabled,
    TResult? Function()? userNotFound,
    TResult? Function()? wrongPassword,
    TResult? Function()? invalidCredential,
    TResult? Function()? unauthorizedContinueUri,
    TResult? Function()? invalidContinueUri,
    TResult? Function()? missingIOSBundleId,
    TResult? Function()? missingContinueUri,
    TResult? Function()? missingAndroidPkgName,
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
    TResult Function()? userDisabled,
    TResult Function()? userNotFound,
    TResult Function()? wrongPassword,
    TResult Function()? invalidCredential,
    TResult Function()? unauthorizedContinueUri,
    TResult Function()? invalidContinueUri,
    TResult Function()? missingIOSBundleId,
    TResult Function()? missingContinueUri,
    TResult Function()? missingAndroidPkgName,
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
    required TResult Function(_FirebaseUserDisabledErrorCategory value)
        userDisabled,
    required TResult Function(_FirebaseUserNotFoundErrorCategory value)
        userNotFound,
    required TResult Function(_FirebaseWrongPasswordErrorCategory value)
        wrongPassword,
    required TResult Function(_FirebaseInvalidCredentionErrorCategory value)
        invalidCredential,
    required TResult Function(
            _FirebaseUnauthorizedContinueUriErrorCategory value)
        unauthorizedContinueUri,
    required TResult Function(_FirebaseInvalidContinueUriErrorCategory value)
        invalidContinueUri,
    required TResult Function(_FirebaseMissingIOSByndleIdErrorCategory value)
        missingIOSBundleId,
    required TResult Function(_FirebaseMissionContinueUriErrorCategory value)
        missingContinueUri,
    required TResult Function(_FirebaseMissionAndroidPkgNameErrorCategory value)
        missingAndroidPkgName,
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
    TResult? Function(_FirebaseUserDisabledErrorCategory value)? userDisabled,
    TResult? Function(_FirebaseUserNotFoundErrorCategory value)? userNotFound,
    TResult? Function(_FirebaseWrongPasswordErrorCategory value)? wrongPassword,
    TResult? Function(_FirebaseInvalidCredentionErrorCategory value)?
        invalidCredential,
    TResult? Function(_FirebaseUnauthorizedContinueUriErrorCategory value)?
        unauthorizedContinueUri,
    TResult? Function(_FirebaseInvalidContinueUriErrorCategory value)?
        invalidContinueUri,
    TResult? Function(_FirebaseMissingIOSByndleIdErrorCategory value)?
        missingIOSBundleId,
    TResult? Function(_FirebaseMissionContinueUriErrorCategory value)?
        missingContinueUri,
    TResult? Function(_FirebaseMissionAndroidPkgNameErrorCategory value)?
        missingAndroidPkgName,
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
    TResult Function(_FirebaseUserDisabledErrorCategory value)? userDisabled,
    TResult Function(_FirebaseUserNotFoundErrorCategory value)? userNotFound,
    TResult Function(_FirebaseWrongPasswordErrorCategory value)? wrongPassword,
    TResult Function(_FirebaseInvalidCredentionErrorCategory value)?
        invalidCredential,
    TResult Function(_FirebaseUnauthorizedContinueUriErrorCategory value)?
        unauthorizedContinueUri,
    TResult Function(_FirebaseInvalidContinueUriErrorCategory value)?
        invalidContinueUri,
    TResult Function(_FirebaseMissingIOSByndleIdErrorCategory value)?
        missingIOSBundleId,
    TResult Function(_FirebaseMissionContinueUriErrorCategory value)?
        missingContinueUri,
    TResult Function(_FirebaseMissionAndroidPkgNameErrorCategory value)?
        missingAndroidPkgName,
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
    with DiagnosticableTreeMixin
    implements _FirebaseInvalidEmailErrorCategory {
  const _$FirebaseInvalidEmailErrorCategoryImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FirebaseErrorCategory.invalidEmail()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'FirebaseErrorCategory.invalidEmail'));
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
    required TResult Function() userDisabled,
    required TResult Function() userNotFound,
    required TResult Function() wrongPassword,
    required TResult Function() invalidCredential,
    required TResult Function() unauthorizedContinueUri,
    required TResult Function() invalidContinueUri,
    required TResult Function() missingIOSBundleId,
    required TResult Function() missingContinueUri,
    required TResult Function() missingAndroidPkgName,
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
    TResult? Function()? userDisabled,
    TResult? Function()? userNotFound,
    TResult? Function()? wrongPassword,
    TResult? Function()? invalidCredential,
    TResult? Function()? unauthorizedContinueUri,
    TResult? Function()? invalidContinueUri,
    TResult? Function()? missingIOSBundleId,
    TResult? Function()? missingContinueUri,
    TResult? Function()? missingAndroidPkgName,
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
    TResult Function()? userDisabled,
    TResult Function()? userNotFound,
    TResult Function()? wrongPassword,
    TResult Function()? invalidCredential,
    TResult Function()? unauthorizedContinueUri,
    TResult Function()? invalidContinueUri,
    TResult Function()? missingIOSBundleId,
    TResult Function()? missingContinueUri,
    TResult Function()? missingAndroidPkgName,
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
    required TResult Function(_FirebaseUserDisabledErrorCategory value)
        userDisabled,
    required TResult Function(_FirebaseUserNotFoundErrorCategory value)
        userNotFound,
    required TResult Function(_FirebaseWrongPasswordErrorCategory value)
        wrongPassword,
    required TResult Function(_FirebaseInvalidCredentionErrorCategory value)
        invalidCredential,
    required TResult Function(
            _FirebaseUnauthorizedContinueUriErrorCategory value)
        unauthorizedContinueUri,
    required TResult Function(_FirebaseInvalidContinueUriErrorCategory value)
        invalidContinueUri,
    required TResult Function(_FirebaseMissingIOSByndleIdErrorCategory value)
        missingIOSBundleId,
    required TResult Function(_FirebaseMissionContinueUriErrorCategory value)
        missingContinueUri,
    required TResult Function(_FirebaseMissionAndroidPkgNameErrorCategory value)
        missingAndroidPkgName,
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
    TResult? Function(_FirebaseUserDisabledErrorCategory value)? userDisabled,
    TResult? Function(_FirebaseUserNotFoundErrorCategory value)? userNotFound,
    TResult? Function(_FirebaseWrongPasswordErrorCategory value)? wrongPassword,
    TResult? Function(_FirebaseInvalidCredentionErrorCategory value)?
        invalidCredential,
    TResult? Function(_FirebaseUnauthorizedContinueUriErrorCategory value)?
        unauthorizedContinueUri,
    TResult? Function(_FirebaseInvalidContinueUriErrorCategory value)?
        invalidContinueUri,
    TResult? Function(_FirebaseMissingIOSByndleIdErrorCategory value)?
        missingIOSBundleId,
    TResult? Function(_FirebaseMissionContinueUriErrorCategory value)?
        missingContinueUri,
    TResult? Function(_FirebaseMissionAndroidPkgNameErrorCategory value)?
        missingAndroidPkgName,
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
    TResult Function(_FirebaseUserDisabledErrorCategory value)? userDisabled,
    TResult Function(_FirebaseUserNotFoundErrorCategory value)? userNotFound,
    TResult Function(_FirebaseWrongPasswordErrorCategory value)? wrongPassword,
    TResult Function(_FirebaseInvalidCredentionErrorCategory value)?
        invalidCredential,
    TResult Function(_FirebaseUnauthorizedContinueUriErrorCategory value)?
        unauthorizedContinueUri,
    TResult Function(_FirebaseInvalidContinueUriErrorCategory value)?
        invalidContinueUri,
    TResult Function(_FirebaseMissingIOSByndleIdErrorCategory value)?
        missingIOSBundleId,
    TResult Function(_FirebaseMissionContinueUriErrorCategory value)?
        missingContinueUri,
    TResult Function(_FirebaseMissionAndroidPkgNameErrorCategory value)?
        missingAndroidPkgName,
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
    with DiagnosticableTreeMixin
    implements _FirebaseOperationNotAllowedErrorCategory {
  const _$FirebaseOperationNotAllowedErrorCategoryImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FirebaseErrorCategory.operationNotAllowed()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty(
        'type', 'FirebaseErrorCategory.operationNotAllowed'));
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
    required TResult Function() userDisabled,
    required TResult Function() userNotFound,
    required TResult Function() wrongPassword,
    required TResult Function() invalidCredential,
    required TResult Function() unauthorizedContinueUri,
    required TResult Function() invalidContinueUri,
    required TResult Function() missingIOSBundleId,
    required TResult Function() missingContinueUri,
    required TResult Function() missingAndroidPkgName,
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
    TResult? Function()? userDisabled,
    TResult? Function()? userNotFound,
    TResult? Function()? wrongPassword,
    TResult? Function()? invalidCredential,
    TResult? Function()? unauthorizedContinueUri,
    TResult? Function()? invalidContinueUri,
    TResult? Function()? missingIOSBundleId,
    TResult? Function()? missingContinueUri,
    TResult? Function()? missingAndroidPkgName,
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
    TResult Function()? userDisabled,
    TResult Function()? userNotFound,
    TResult Function()? wrongPassword,
    TResult Function()? invalidCredential,
    TResult Function()? unauthorizedContinueUri,
    TResult Function()? invalidContinueUri,
    TResult Function()? missingIOSBundleId,
    TResult Function()? missingContinueUri,
    TResult Function()? missingAndroidPkgName,
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
    required TResult Function(_FirebaseUserDisabledErrorCategory value)
        userDisabled,
    required TResult Function(_FirebaseUserNotFoundErrorCategory value)
        userNotFound,
    required TResult Function(_FirebaseWrongPasswordErrorCategory value)
        wrongPassword,
    required TResult Function(_FirebaseInvalidCredentionErrorCategory value)
        invalidCredential,
    required TResult Function(
            _FirebaseUnauthorizedContinueUriErrorCategory value)
        unauthorizedContinueUri,
    required TResult Function(_FirebaseInvalidContinueUriErrorCategory value)
        invalidContinueUri,
    required TResult Function(_FirebaseMissingIOSByndleIdErrorCategory value)
        missingIOSBundleId,
    required TResult Function(_FirebaseMissionContinueUriErrorCategory value)
        missingContinueUri,
    required TResult Function(_FirebaseMissionAndroidPkgNameErrorCategory value)
        missingAndroidPkgName,
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
    TResult? Function(_FirebaseUserDisabledErrorCategory value)? userDisabled,
    TResult? Function(_FirebaseUserNotFoundErrorCategory value)? userNotFound,
    TResult? Function(_FirebaseWrongPasswordErrorCategory value)? wrongPassword,
    TResult? Function(_FirebaseInvalidCredentionErrorCategory value)?
        invalidCredential,
    TResult? Function(_FirebaseUnauthorizedContinueUriErrorCategory value)?
        unauthorizedContinueUri,
    TResult? Function(_FirebaseInvalidContinueUriErrorCategory value)?
        invalidContinueUri,
    TResult? Function(_FirebaseMissingIOSByndleIdErrorCategory value)?
        missingIOSBundleId,
    TResult? Function(_FirebaseMissionContinueUriErrorCategory value)?
        missingContinueUri,
    TResult? Function(_FirebaseMissionAndroidPkgNameErrorCategory value)?
        missingAndroidPkgName,
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
    TResult Function(_FirebaseUserDisabledErrorCategory value)? userDisabled,
    TResult Function(_FirebaseUserNotFoundErrorCategory value)? userNotFound,
    TResult Function(_FirebaseWrongPasswordErrorCategory value)? wrongPassword,
    TResult Function(_FirebaseInvalidCredentionErrorCategory value)?
        invalidCredential,
    TResult Function(_FirebaseUnauthorizedContinueUriErrorCategory value)?
        unauthorizedContinueUri,
    TResult Function(_FirebaseInvalidContinueUriErrorCategory value)?
        invalidContinueUri,
    TResult Function(_FirebaseMissingIOSByndleIdErrorCategory value)?
        missingIOSBundleId,
    TResult Function(_FirebaseMissionContinueUriErrorCategory value)?
        missingContinueUri,
    TResult Function(_FirebaseMissionAndroidPkgNameErrorCategory value)?
        missingAndroidPkgName,
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
    with DiagnosticableTreeMixin
    implements _FirebaseWeakPasswordErrorCategory {
  const _$FirebaseWeakPasswordErrorCategoryImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FirebaseErrorCategory.weakPassword()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'FirebaseErrorCategory.weakPassword'));
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
    required TResult Function() userDisabled,
    required TResult Function() userNotFound,
    required TResult Function() wrongPassword,
    required TResult Function() invalidCredential,
    required TResult Function() unauthorizedContinueUri,
    required TResult Function() invalidContinueUri,
    required TResult Function() missingIOSBundleId,
    required TResult Function() missingContinueUri,
    required TResult Function() missingAndroidPkgName,
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
    TResult? Function()? userDisabled,
    TResult? Function()? userNotFound,
    TResult? Function()? wrongPassword,
    TResult? Function()? invalidCredential,
    TResult? Function()? unauthorizedContinueUri,
    TResult? Function()? invalidContinueUri,
    TResult? Function()? missingIOSBundleId,
    TResult? Function()? missingContinueUri,
    TResult? Function()? missingAndroidPkgName,
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
    TResult Function()? userDisabled,
    TResult Function()? userNotFound,
    TResult Function()? wrongPassword,
    TResult Function()? invalidCredential,
    TResult Function()? unauthorizedContinueUri,
    TResult Function()? invalidContinueUri,
    TResult Function()? missingIOSBundleId,
    TResult Function()? missingContinueUri,
    TResult Function()? missingAndroidPkgName,
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
    required TResult Function(_FirebaseUserDisabledErrorCategory value)
        userDisabled,
    required TResult Function(_FirebaseUserNotFoundErrorCategory value)
        userNotFound,
    required TResult Function(_FirebaseWrongPasswordErrorCategory value)
        wrongPassword,
    required TResult Function(_FirebaseInvalidCredentionErrorCategory value)
        invalidCredential,
    required TResult Function(
            _FirebaseUnauthorizedContinueUriErrorCategory value)
        unauthorizedContinueUri,
    required TResult Function(_FirebaseInvalidContinueUriErrorCategory value)
        invalidContinueUri,
    required TResult Function(_FirebaseMissingIOSByndleIdErrorCategory value)
        missingIOSBundleId,
    required TResult Function(_FirebaseMissionContinueUriErrorCategory value)
        missingContinueUri,
    required TResult Function(_FirebaseMissionAndroidPkgNameErrorCategory value)
        missingAndroidPkgName,
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
    TResult? Function(_FirebaseUserDisabledErrorCategory value)? userDisabled,
    TResult? Function(_FirebaseUserNotFoundErrorCategory value)? userNotFound,
    TResult? Function(_FirebaseWrongPasswordErrorCategory value)? wrongPassword,
    TResult? Function(_FirebaseInvalidCredentionErrorCategory value)?
        invalidCredential,
    TResult? Function(_FirebaseUnauthorizedContinueUriErrorCategory value)?
        unauthorizedContinueUri,
    TResult? Function(_FirebaseInvalidContinueUriErrorCategory value)?
        invalidContinueUri,
    TResult? Function(_FirebaseMissingIOSByndleIdErrorCategory value)?
        missingIOSBundleId,
    TResult? Function(_FirebaseMissionContinueUriErrorCategory value)?
        missingContinueUri,
    TResult? Function(_FirebaseMissionAndroidPkgNameErrorCategory value)?
        missingAndroidPkgName,
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
    TResult Function(_FirebaseUserDisabledErrorCategory value)? userDisabled,
    TResult Function(_FirebaseUserNotFoundErrorCategory value)? userNotFound,
    TResult Function(_FirebaseWrongPasswordErrorCategory value)? wrongPassword,
    TResult Function(_FirebaseInvalidCredentionErrorCategory value)?
        invalidCredential,
    TResult Function(_FirebaseUnauthorizedContinueUriErrorCategory value)?
        unauthorizedContinueUri,
    TResult Function(_FirebaseInvalidContinueUriErrorCategory value)?
        invalidContinueUri,
    TResult Function(_FirebaseMissingIOSByndleIdErrorCategory value)?
        missingIOSBundleId,
    TResult Function(_FirebaseMissionContinueUriErrorCategory value)?
        missingContinueUri,
    TResult Function(_FirebaseMissionAndroidPkgNameErrorCategory value)?
        missingAndroidPkgName,
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
    with DiagnosticableTreeMixin
    implements _FirebaseTooManyRequestsErrorCategory {
  const _$FirebaseTooManyRequestsErrorCategoryImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FirebaseErrorCategory.tooManyRequests()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(
        DiagnosticsProperty('type', 'FirebaseErrorCategory.tooManyRequests'));
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
    required TResult Function() userDisabled,
    required TResult Function() userNotFound,
    required TResult Function() wrongPassword,
    required TResult Function() invalidCredential,
    required TResult Function() unauthorizedContinueUri,
    required TResult Function() invalidContinueUri,
    required TResult Function() missingIOSBundleId,
    required TResult Function() missingContinueUri,
    required TResult Function() missingAndroidPkgName,
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
    TResult? Function()? userDisabled,
    TResult? Function()? userNotFound,
    TResult? Function()? wrongPassword,
    TResult? Function()? invalidCredential,
    TResult? Function()? unauthorizedContinueUri,
    TResult? Function()? invalidContinueUri,
    TResult? Function()? missingIOSBundleId,
    TResult? Function()? missingContinueUri,
    TResult? Function()? missingAndroidPkgName,
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
    TResult Function()? userDisabled,
    TResult Function()? userNotFound,
    TResult Function()? wrongPassword,
    TResult Function()? invalidCredential,
    TResult Function()? unauthorizedContinueUri,
    TResult Function()? invalidContinueUri,
    TResult Function()? missingIOSBundleId,
    TResult Function()? missingContinueUri,
    TResult Function()? missingAndroidPkgName,
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
    required TResult Function(_FirebaseUserDisabledErrorCategory value)
        userDisabled,
    required TResult Function(_FirebaseUserNotFoundErrorCategory value)
        userNotFound,
    required TResult Function(_FirebaseWrongPasswordErrorCategory value)
        wrongPassword,
    required TResult Function(_FirebaseInvalidCredentionErrorCategory value)
        invalidCredential,
    required TResult Function(
            _FirebaseUnauthorizedContinueUriErrorCategory value)
        unauthorizedContinueUri,
    required TResult Function(_FirebaseInvalidContinueUriErrorCategory value)
        invalidContinueUri,
    required TResult Function(_FirebaseMissingIOSByndleIdErrorCategory value)
        missingIOSBundleId,
    required TResult Function(_FirebaseMissionContinueUriErrorCategory value)
        missingContinueUri,
    required TResult Function(_FirebaseMissionAndroidPkgNameErrorCategory value)
        missingAndroidPkgName,
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
    TResult? Function(_FirebaseUserDisabledErrorCategory value)? userDisabled,
    TResult? Function(_FirebaseUserNotFoundErrorCategory value)? userNotFound,
    TResult? Function(_FirebaseWrongPasswordErrorCategory value)? wrongPassword,
    TResult? Function(_FirebaseInvalidCredentionErrorCategory value)?
        invalidCredential,
    TResult? Function(_FirebaseUnauthorizedContinueUriErrorCategory value)?
        unauthorizedContinueUri,
    TResult? Function(_FirebaseInvalidContinueUriErrorCategory value)?
        invalidContinueUri,
    TResult? Function(_FirebaseMissingIOSByndleIdErrorCategory value)?
        missingIOSBundleId,
    TResult? Function(_FirebaseMissionContinueUriErrorCategory value)?
        missingContinueUri,
    TResult? Function(_FirebaseMissionAndroidPkgNameErrorCategory value)?
        missingAndroidPkgName,
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
    TResult Function(_FirebaseUserDisabledErrorCategory value)? userDisabled,
    TResult Function(_FirebaseUserNotFoundErrorCategory value)? userNotFound,
    TResult Function(_FirebaseWrongPasswordErrorCategory value)? wrongPassword,
    TResult Function(_FirebaseInvalidCredentionErrorCategory value)?
        invalidCredential,
    TResult Function(_FirebaseUnauthorizedContinueUriErrorCategory value)?
        unauthorizedContinueUri,
    TResult Function(_FirebaseInvalidContinueUriErrorCategory value)?
        invalidContinueUri,
    TResult Function(_FirebaseMissingIOSByndleIdErrorCategory value)?
        missingIOSBundleId,
    TResult Function(_FirebaseMissionContinueUriErrorCategory value)?
        missingContinueUri,
    TResult Function(_FirebaseMissionAndroidPkgNameErrorCategory value)?
        missingAndroidPkgName,
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
    with DiagnosticableTreeMixin
    implements _FirebaseUserTokenExpiredErrorCategory {
  const _$FirebaseUserTokenExpiredErrorCategoryImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FirebaseErrorCategory.userTokenExpired()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(
        DiagnosticsProperty('type', 'FirebaseErrorCategory.userTokenExpired'));
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
    required TResult Function() userDisabled,
    required TResult Function() userNotFound,
    required TResult Function() wrongPassword,
    required TResult Function() invalidCredential,
    required TResult Function() unauthorizedContinueUri,
    required TResult Function() invalidContinueUri,
    required TResult Function() missingIOSBundleId,
    required TResult Function() missingContinueUri,
    required TResult Function() missingAndroidPkgName,
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
    TResult? Function()? userDisabled,
    TResult? Function()? userNotFound,
    TResult? Function()? wrongPassword,
    TResult? Function()? invalidCredential,
    TResult? Function()? unauthorizedContinueUri,
    TResult? Function()? invalidContinueUri,
    TResult? Function()? missingIOSBundleId,
    TResult? Function()? missingContinueUri,
    TResult? Function()? missingAndroidPkgName,
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
    TResult Function()? userDisabled,
    TResult Function()? userNotFound,
    TResult Function()? wrongPassword,
    TResult Function()? invalidCredential,
    TResult Function()? unauthorizedContinueUri,
    TResult Function()? invalidContinueUri,
    TResult Function()? missingIOSBundleId,
    TResult Function()? missingContinueUri,
    TResult Function()? missingAndroidPkgName,
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
    required TResult Function(_FirebaseUserDisabledErrorCategory value)
        userDisabled,
    required TResult Function(_FirebaseUserNotFoundErrorCategory value)
        userNotFound,
    required TResult Function(_FirebaseWrongPasswordErrorCategory value)
        wrongPassword,
    required TResult Function(_FirebaseInvalidCredentionErrorCategory value)
        invalidCredential,
    required TResult Function(
            _FirebaseUnauthorizedContinueUriErrorCategory value)
        unauthorizedContinueUri,
    required TResult Function(_FirebaseInvalidContinueUriErrorCategory value)
        invalidContinueUri,
    required TResult Function(_FirebaseMissingIOSByndleIdErrorCategory value)
        missingIOSBundleId,
    required TResult Function(_FirebaseMissionContinueUriErrorCategory value)
        missingContinueUri,
    required TResult Function(_FirebaseMissionAndroidPkgNameErrorCategory value)
        missingAndroidPkgName,
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
    TResult? Function(_FirebaseUserDisabledErrorCategory value)? userDisabled,
    TResult? Function(_FirebaseUserNotFoundErrorCategory value)? userNotFound,
    TResult? Function(_FirebaseWrongPasswordErrorCategory value)? wrongPassword,
    TResult? Function(_FirebaseInvalidCredentionErrorCategory value)?
        invalidCredential,
    TResult? Function(_FirebaseUnauthorizedContinueUriErrorCategory value)?
        unauthorizedContinueUri,
    TResult? Function(_FirebaseInvalidContinueUriErrorCategory value)?
        invalidContinueUri,
    TResult? Function(_FirebaseMissingIOSByndleIdErrorCategory value)?
        missingIOSBundleId,
    TResult? Function(_FirebaseMissionContinueUriErrorCategory value)?
        missingContinueUri,
    TResult? Function(_FirebaseMissionAndroidPkgNameErrorCategory value)?
        missingAndroidPkgName,
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
    TResult Function(_FirebaseUserDisabledErrorCategory value)? userDisabled,
    TResult Function(_FirebaseUserNotFoundErrorCategory value)? userNotFound,
    TResult Function(_FirebaseWrongPasswordErrorCategory value)? wrongPassword,
    TResult Function(_FirebaseInvalidCredentionErrorCategory value)?
        invalidCredential,
    TResult Function(_FirebaseUnauthorizedContinueUriErrorCategory value)?
        unauthorizedContinueUri,
    TResult Function(_FirebaseInvalidContinueUriErrorCategory value)?
        invalidContinueUri,
    TResult Function(_FirebaseMissingIOSByndleIdErrorCategory value)?
        missingIOSBundleId,
    TResult Function(_FirebaseMissionContinueUriErrorCategory value)?
        missingContinueUri,
    TResult Function(_FirebaseMissionAndroidPkgNameErrorCategory value)?
        missingAndroidPkgName,
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
    with DiagnosticableTreeMixin
    implements _FirebaseNetworkRequestsFailedErrorCategory {
  const _$FirebaseNetworkRequestsFailedErrorCategoryImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FirebaseErrorCategory.networkRequestFailed()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty(
        'type', 'FirebaseErrorCategory.networkRequestFailed'));
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
    required TResult Function() userDisabled,
    required TResult Function() userNotFound,
    required TResult Function() wrongPassword,
    required TResult Function() invalidCredential,
    required TResult Function() unauthorizedContinueUri,
    required TResult Function() invalidContinueUri,
    required TResult Function() missingIOSBundleId,
    required TResult Function() missingContinueUri,
    required TResult Function() missingAndroidPkgName,
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
    TResult? Function()? userDisabled,
    TResult? Function()? userNotFound,
    TResult? Function()? wrongPassword,
    TResult? Function()? invalidCredential,
    TResult? Function()? unauthorizedContinueUri,
    TResult? Function()? invalidContinueUri,
    TResult? Function()? missingIOSBundleId,
    TResult? Function()? missingContinueUri,
    TResult? Function()? missingAndroidPkgName,
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
    TResult Function()? userDisabled,
    TResult Function()? userNotFound,
    TResult Function()? wrongPassword,
    TResult Function()? invalidCredential,
    TResult Function()? unauthorizedContinueUri,
    TResult Function()? invalidContinueUri,
    TResult Function()? missingIOSBundleId,
    TResult Function()? missingContinueUri,
    TResult Function()? missingAndroidPkgName,
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
    required TResult Function(_FirebaseUserDisabledErrorCategory value)
        userDisabled,
    required TResult Function(_FirebaseUserNotFoundErrorCategory value)
        userNotFound,
    required TResult Function(_FirebaseWrongPasswordErrorCategory value)
        wrongPassword,
    required TResult Function(_FirebaseInvalidCredentionErrorCategory value)
        invalidCredential,
    required TResult Function(
            _FirebaseUnauthorizedContinueUriErrorCategory value)
        unauthorizedContinueUri,
    required TResult Function(_FirebaseInvalidContinueUriErrorCategory value)
        invalidContinueUri,
    required TResult Function(_FirebaseMissingIOSByndleIdErrorCategory value)
        missingIOSBundleId,
    required TResult Function(_FirebaseMissionContinueUriErrorCategory value)
        missingContinueUri,
    required TResult Function(_FirebaseMissionAndroidPkgNameErrorCategory value)
        missingAndroidPkgName,
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
    TResult? Function(_FirebaseUserDisabledErrorCategory value)? userDisabled,
    TResult? Function(_FirebaseUserNotFoundErrorCategory value)? userNotFound,
    TResult? Function(_FirebaseWrongPasswordErrorCategory value)? wrongPassword,
    TResult? Function(_FirebaseInvalidCredentionErrorCategory value)?
        invalidCredential,
    TResult? Function(_FirebaseUnauthorizedContinueUriErrorCategory value)?
        unauthorizedContinueUri,
    TResult? Function(_FirebaseInvalidContinueUriErrorCategory value)?
        invalidContinueUri,
    TResult? Function(_FirebaseMissingIOSByndleIdErrorCategory value)?
        missingIOSBundleId,
    TResult? Function(_FirebaseMissionContinueUriErrorCategory value)?
        missingContinueUri,
    TResult? Function(_FirebaseMissionAndroidPkgNameErrorCategory value)?
        missingAndroidPkgName,
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
    TResult Function(_FirebaseUserDisabledErrorCategory value)? userDisabled,
    TResult Function(_FirebaseUserNotFoundErrorCategory value)? userNotFound,
    TResult Function(_FirebaseWrongPasswordErrorCategory value)? wrongPassword,
    TResult Function(_FirebaseInvalidCredentionErrorCategory value)?
        invalidCredential,
    TResult Function(_FirebaseUnauthorizedContinueUriErrorCategory value)?
        unauthorizedContinueUri,
    TResult Function(_FirebaseInvalidContinueUriErrorCategory value)?
        invalidContinueUri,
    TResult Function(_FirebaseMissingIOSByndleIdErrorCategory value)?
        missingIOSBundleId,
    TResult Function(_FirebaseMissionContinueUriErrorCategory value)?
        missingContinueUri,
    TResult Function(_FirebaseMissionAndroidPkgNameErrorCategory value)?
        missingAndroidPkgName,
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
abstract class _$$FirebaseUserDisabledErrorCategoryImplCopyWith<$Res> {
  factory _$$FirebaseUserDisabledErrorCategoryImplCopyWith(
          _$FirebaseUserDisabledErrorCategoryImpl value,
          $Res Function(_$FirebaseUserDisabledErrorCategoryImpl) then) =
      __$$FirebaseUserDisabledErrorCategoryImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FirebaseUserDisabledErrorCategoryImplCopyWithImpl<$Res>
    extends _$FirebaseErrorCategoryCopyWithImpl<$Res,
        _$FirebaseUserDisabledErrorCategoryImpl>
    implements _$$FirebaseUserDisabledErrorCategoryImplCopyWith<$Res> {
  __$$FirebaseUserDisabledErrorCategoryImplCopyWithImpl(
      _$FirebaseUserDisabledErrorCategoryImpl _value,
      $Res Function(_$FirebaseUserDisabledErrorCategoryImpl) _then)
      : super(_value, _then);

  /// Create a copy of FirebaseErrorCategory
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FirebaseUserDisabledErrorCategoryImpl
    with DiagnosticableTreeMixin
    implements _FirebaseUserDisabledErrorCategory {
  const _$FirebaseUserDisabledErrorCategoryImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FirebaseErrorCategory.userDisabled()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'FirebaseErrorCategory.userDisabled'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FirebaseUserDisabledErrorCategoryImpl);
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
    required TResult Function() userDisabled,
    required TResult Function() userNotFound,
    required TResult Function() wrongPassword,
    required TResult Function() invalidCredential,
    required TResult Function() unauthorizedContinueUri,
    required TResult Function() invalidContinueUri,
    required TResult Function() missingIOSBundleId,
    required TResult Function() missingContinueUri,
    required TResult Function() missingAndroidPkgName,
  }) {
    return userDisabled();
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
    TResult? Function()? userDisabled,
    TResult? Function()? userNotFound,
    TResult? Function()? wrongPassword,
    TResult? Function()? invalidCredential,
    TResult? Function()? unauthorizedContinueUri,
    TResult? Function()? invalidContinueUri,
    TResult? Function()? missingIOSBundleId,
    TResult? Function()? missingContinueUri,
    TResult? Function()? missingAndroidPkgName,
  }) {
    return userDisabled?.call();
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
    TResult Function()? userDisabled,
    TResult Function()? userNotFound,
    TResult Function()? wrongPassword,
    TResult Function()? invalidCredential,
    TResult Function()? unauthorizedContinueUri,
    TResult Function()? invalidContinueUri,
    TResult Function()? missingIOSBundleId,
    TResult Function()? missingContinueUri,
    TResult Function()? missingAndroidPkgName,
    required TResult orElse(),
  }) {
    if (userDisabled != null) {
      return userDisabled();
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
    required TResult Function(_FirebaseUserDisabledErrorCategory value)
        userDisabled,
    required TResult Function(_FirebaseUserNotFoundErrorCategory value)
        userNotFound,
    required TResult Function(_FirebaseWrongPasswordErrorCategory value)
        wrongPassword,
    required TResult Function(_FirebaseInvalidCredentionErrorCategory value)
        invalidCredential,
    required TResult Function(
            _FirebaseUnauthorizedContinueUriErrorCategory value)
        unauthorizedContinueUri,
    required TResult Function(_FirebaseInvalidContinueUriErrorCategory value)
        invalidContinueUri,
    required TResult Function(_FirebaseMissingIOSByndleIdErrorCategory value)
        missingIOSBundleId,
    required TResult Function(_FirebaseMissionContinueUriErrorCategory value)
        missingContinueUri,
    required TResult Function(_FirebaseMissionAndroidPkgNameErrorCategory value)
        missingAndroidPkgName,
  }) {
    return userDisabled(this);
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
    TResult? Function(_FirebaseUserDisabledErrorCategory value)? userDisabled,
    TResult? Function(_FirebaseUserNotFoundErrorCategory value)? userNotFound,
    TResult? Function(_FirebaseWrongPasswordErrorCategory value)? wrongPassword,
    TResult? Function(_FirebaseInvalidCredentionErrorCategory value)?
        invalidCredential,
    TResult? Function(_FirebaseUnauthorizedContinueUriErrorCategory value)?
        unauthorizedContinueUri,
    TResult? Function(_FirebaseInvalidContinueUriErrorCategory value)?
        invalidContinueUri,
    TResult? Function(_FirebaseMissingIOSByndleIdErrorCategory value)?
        missingIOSBundleId,
    TResult? Function(_FirebaseMissionContinueUriErrorCategory value)?
        missingContinueUri,
    TResult? Function(_FirebaseMissionAndroidPkgNameErrorCategory value)?
        missingAndroidPkgName,
  }) {
    return userDisabled?.call(this);
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
    TResult Function(_FirebaseUserDisabledErrorCategory value)? userDisabled,
    TResult Function(_FirebaseUserNotFoundErrorCategory value)? userNotFound,
    TResult Function(_FirebaseWrongPasswordErrorCategory value)? wrongPassword,
    TResult Function(_FirebaseInvalidCredentionErrorCategory value)?
        invalidCredential,
    TResult Function(_FirebaseUnauthorizedContinueUriErrorCategory value)?
        unauthorizedContinueUri,
    TResult Function(_FirebaseInvalidContinueUriErrorCategory value)?
        invalidContinueUri,
    TResult Function(_FirebaseMissingIOSByndleIdErrorCategory value)?
        missingIOSBundleId,
    TResult Function(_FirebaseMissionContinueUriErrorCategory value)?
        missingContinueUri,
    TResult Function(_FirebaseMissionAndroidPkgNameErrorCategory value)?
        missingAndroidPkgName,
    required TResult orElse(),
  }) {
    if (userDisabled != null) {
      return userDisabled(this);
    }
    return orElse();
  }
}

abstract class _FirebaseUserDisabledErrorCategory
    implements FirebaseErrorCategory {
  const factory _FirebaseUserDisabledErrorCategory() =
      _$FirebaseUserDisabledErrorCategoryImpl;
}

/// @nodoc
abstract class _$$FirebaseUserNotFoundErrorCategoryImplCopyWith<$Res> {
  factory _$$FirebaseUserNotFoundErrorCategoryImplCopyWith(
          _$FirebaseUserNotFoundErrorCategoryImpl value,
          $Res Function(_$FirebaseUserNotFoundErrorCategoryImpl) then) =
      __$$FirebaseUserNotFoundErrorCategoryImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FirebaseUserNotFoundErrorCategoryImplCopyWithImpl<$Res>
    extends _$FirebaseErrorCategoryCopyWithImpl<$Res,
        _$FirebaseUserNotFoundErrorCategoryImpl>
    implements _$$FirebaseUserNotFoundErrorCategoryImplCopyWith<$Res> {
  __$$FirebaseUserNotFoundErrorCategoryImplCopyWithImpl(
      _$FirebaseUserNotFoundErrorCategoryImpl _value,
      $Res Function(_$FirebaseUserNotFoundErrorCategoryImpl) _then)
      : super(_value, _then);

  /// Create a copy of FirebaseErrorCategory
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FirebaseUserNotFoundErrorCategoryImpl
    with DiagnosticableTreeMixin
    implements _FirebaseUserNotFoundErrorCategory {
  const _$FirebaseUserNotFoundErrorCategoryImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FirebaseErrorCategory.userNotFound()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'FirebaseErrorCategory.userNotFound'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FirebaseUserNotFoundErrorCategoryImpl);
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
    required TResult Function() userDisabled,
    required TResult Function() userNotFound,
    required TResult Function() wrongPassword,
    required TResult Function() invalidCredential,
    required TResult Function() unauthorizedContinueUri,
    required TResult Function() invalidContinueUri,
    required TResult Function() missingIOSBundleId,
    required TResult Function() missingContinueUri,
    required TResult Function() missingAndroidPkgName,
  }) {
    return userNotFound();
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
    TResult? Function()? userDisabled,
    TResult? Function()? userNotFound,
    TResult? Function()? wrongPassword,
    TResult? Function()? invalidCredential,
    TResult? Function()? unauthorizedContinueUri,
    TResult? Function()? invalidContinueUri,
    TResult? Function()? missingIOSBundleId,
    TResult? Function()? missingContinueUri,
    TResult? Function()? missingAndroidPkgName,
  }) {
    return userNotFound?.call();
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
    TResult Function()? userDisabled,
    TResult Function()? userNotFound,
    TResult Function()? wrongPassword,
    TResult Function()? invalidCredential,
    TResult Function()? unauthorizedContinueUri,
    TResult Function()? invalidContinueUri,
    TResult Function()? missingIOSBundleId,
    TResult Function()? missingContinueUri,
    TResult Function()? missingAndroidPkgName,
    required TResult orElse(),
  }) {
    if (userNotFound != null) {
      return userNotFound();
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
    required TResult Function(_FirebaseUserDisabledErrorCategory value)
        userDisabled,
    required TResult Function(_FirebaseUserNotFoundErrorCategory value)
        userNotFound,
    required TResult Function(_FirebaseWrongPasswordErrorCategory value)
        wrongPassword,
    required TResult Function(_FirebaseInvalidCredentionErrorCategory value)
        invalidCredential,
    required TResult Function(
            _FirebaseUnauthorizedContinueUriErrorCategory value)
        unauthorizedContinueUri,
    required TResult Function(_FirebaseInvalidContinueUriErrorCategory value)
        invalidContinueUri,
    required TResult Function(_FirebaseMissingIOSByndleIdErrorCategory value)
        missingIOSBundleId,
    required TResult Function(_FirebaseMissionContinueUriErrorCategory value)
        missingContinueUri,
    required TResult Function(_FirebaseMissionAndroidPkgNameErrorCategory value)
        missingAndroidPkgName,
  }) {
    return userNotFound(this);
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
    TResult? Function(_FirebaseUserDisabledErrorCategory value)? userDisabled,
    TResult? Function(_FirebaseUserNotFoundErrorCategory value)? userNotFound,
    TResult? Function(_FirebaseWrongPasswordErrorCategory value)? wrongPassword,
    TResult? Function(_FirebaseInvalidCredentionErrorCategory value)?
        invalidCredential,
    TResult? Function(_FirebaseUnauthorizedContinueUriErrorCategory value)?
        unauthorizedContinueUri,
    TResult? Function(_FirebaseInvalidContinueUriErrorCategory value)?
        invalidContinueUri,
    TResult? Function(_FirebaseMissingIOSByndleIdErrorCategory value)?
        missingIOSBundleId,
    TResult? Function(_FirebaseMissionContinueUriErrorCategory value)?
        missingContinueUri,
    TResult? Function(_FirebaseMissionAndroidPkgNameErrorCategory value)?
        missingAndroidPkgName,
  }) {
    return userNotFound?.call(this);
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
    TResult Function(_FirebaseUserDisabledErrorCategory value)? userDisabled,
    TResult Function(_FirebaseUserNotFoundErrorCategory value)? userNotFound,
    TResult Function(_FirebaseWrongPasswordErrorCategory value)? wrongPassword,
    TResult Function(_FirebaseInvalidCredentionErrorCategory value)?
        invalidCredential,
    TResult Function(_FirebaseUnauthorizedContinueUriErrorCategory value)?
        unauthorizedContinueUri,
    TResult Function(_FirebaseInvalidContinueUriErrorCategory value)?
        invalidContinueUri,
    TResult Function(_FirebaseMissingIOSByndleIdErrorCategory value)?
        missingIOSBundleId,
    TResult Function(_FirebaseMissionContinueUriErrorCategory value)?
        missingContinueUri,
    TResult Function(_FirebaseMissionAndroidPkgNameErrorCategory value)?
        missingAndroidPkgName,
    required TResult orElse(),
  }) {
    if (userNotFound != null) {
      return userNotFound(this);
    }
    return orElse();
  }
}

abstract class _FirebaseUserNotFoundErrorCategory
    implements FirebaseErrorCategory {
  const factory _FirebaseUserNotFoundErrorCategory() =
      _$FirebaseUserNotFoundErrorCategoryImpl;
}

/// @nodoc
abstract class _$$FirebaseWrongPasswordErrorCategoryImplCopyWith<$Res> {
  factory _$$FirebaseWrongPasswordErrorCategoryImplCopyWith(
          _$FirebaseWrongPasswordErrorCategoryImpl value,
          $Res Function(_$FirebaseWrongPasswordErrorCategoryImpl) then) =
      __$$FirebaseWrongPasswordErrorCategoryImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FirebaseWrongPasswordErrorCategoryImplCopyWithImpl<$Res>
    extends _$FirebaseErrorCategoryCopyWithImpl<$Res,
        _$FirebaseWrongPasswordErrorCategoryImpl>
    implements _$$FirebaseWrongPasswordErrorCategoryImplCopyWith<$Res> {
  __$$FirebaseWrongPasswordErrorCategoryImplCopyWithImpl(
      _$FirebaseWrongPasswordErrorCategoryImpl _value,
      $Res Function(_$FirebaseWrongPasswordErrorCategoryImpl) _then)
      : super(_value, _then);

  /// Create a copy of FirebaseErrorCategory
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FirebaseWrongPasswordErrorCategoryImpl
    with DiagnosticableTreeMixin
    implements _FirebaseWrongPasswordErrorCategory {
  const _$FirebaseWrongPasswordErrorCategoryImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FirebaseErrorCategory.wrongPassword()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(
        DiagnosticsProperty('type', 'FirebaseErrorCategory.wrongPassword'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FirebaseWrongPasswordErrorCategoryImpl);
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
    required TResult Function() userDisabled,
    required TResult Function() userNotFound,
    required TResult Function() wrongPassword,
    required TResult Function() invalidCredential,
    required TResult Function() unauthorizedContinueUri,
    required TResult Function() invalidContinueUri,
    required TResult Function() missingIOSBundleId,
    required TResult Function() missingContinueUri,
    required TResult Function() missingAndroidPkgName,
  }) {
    return wrongPassword();
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
    TResult? Function()? userDisabled,
    TResult? Function()? userNotFound,
    TResult? Function()? wrongPassword,
    TResult? Function()? invalidCredential,
    TResult? Function()? unauthorizedContinueUri,
    TResult? Function()? invalidContinueUri,
    TResult? Function()? missingIOSBundleId,
    TResult? Function()? missingContinueUri,
    TResult? Function()? missingAndroidPkgName,
  }) {
    return wrongPassword?.call();
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
    TResult Function()? userDisabled,
    TResult Function()? userNotFound,
    TResult Function()? wrongPassword,
    TResult Function()? invalidCredential,
    TResult Function()? unauthorizedContinueUri,
    TResult Function()? invalidContinueUri,
    TResult Function()? missingIOSBundleId,
    TResult Function()? missingContinueUri,
    TResult Function()? missingAndroidPkgName,
    required TResult orElse(),
  }) {
    if (wrongPassword != null) {
      return wrongPassword();
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
    required TResult Function(_FirebaseUserDisabledErrorCategory value)
        userDisabled,
    required TResult Function(_FirebaseUserNotFoundErrorCategory value)
        userNotFound,
    required TResult Function(_FirebaseWrongPasswordErrorCategory value)
        wrongPassword,
    required TResult Function(_FirebaseInvalidCredentionErrorCategory value)
        invalidCredential,
    required TResult Function(
            _FirebaseUnauthorizedContinueUriErrorCategory value)
        unauthorizedContinueUri,
    required TResult Function(_FirebaseInvalidContinueUriErrorCategory value)
        invalidContinueUri,
    required TResult Function(_FirebaseMissingIOSByndleIdErrorCategory value)
        missingIOSBundleId,
    required TResult Function(_FirebaseMissionContinueUriErrorCategory value)
        missingContinueUri,
    required TResult Function(_FirebaseMissionAndroidPkgNameErrorCategory value)
        missingAndroidPkgName,
  }) {
    return wrongPassword(this);
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
    TResult? Function(_FirebaseUserDisabledErrorCategory value)? userDisabled,
    TResult? Function(_FirebaseUserNotFoundErrorCategory value)? userNotFound,
    TResult? Function(_FirebaseWrongPasswordErrorCategory value)? wrongPassword,
    TResult? Function(_FirebaseInvalidCredentionErrorCategory value)?
        invalidCredential,
    TResult? Function(_FirebaseUnauthorizedContinueUriErrorCategory value)?
        unauthorizedContinueUri,
    TResult? Function(_FirebaseInvalidContinueUriErrorCategory value)?
        invalidContinueUri,
    TResult? Function(_FirebaseMissingIOSByndleIdErrorCategory value)?
        missingIOSBundleId,
    TResult? Function(_FirebaseMissionContinueUriErrorCategory value)?
        missingContinueUri,
    TResult? Function(_FirebaseMissionAndroidPkgNameErrorCategory value)?
        missingAndroidPkgName,
  }) {
    return wrongPassword?.call(this);
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
    TResult Function(_FirebaseUserDisabledErrorCategory value)? userDisabled,
    TResult Function(_FirebaseUserNotFoundErrorCategory value)? userNotFound,
    TResult Function(_FirebaseWrongPasswordErrorCategory value)? wrongPassword,
    TResult Function(_FirebaseInvalidCredentionErrorCategory value)?
        invalidCredential,
    TResult Function(_FirebaseUnauthorizedContinueUriErrorCategory value)?
        unauthorizedContinueUri,
    TResult Function(_FirebaseInvalidContinueUriErrorCategory value)?
        invalidContinueUri,
    TResult Function(_FirebaseMissingIOSByndleIdErrorCategory value)?
        missingIOSBundleId,
    TResult Function(_FirebaseMissionContinueUriErrorCategory value)?
        missingContinueUri,
    TResult Function(_FirebaseMissionAndroidPkgNameErrorCategory value)?
        missingAndroidPkgName,
    required TResult orElse(),
  }) {
    if (wrongPassword != null) {
      return wrongPassword(this);
    }
    return orElse();
  }
}

abstract class _FirebaseWrongPasswordErrorCategory
    implements FirebaseErrorCategory {
  const factory _FirebaseWrongPasswordErrorCategory() =
      _$FirebaseWrongPasswordErrorCategoryImpl;
}

/// @nodoc
abstract class _$$FirebaseInvalidCredentionErrorCategoryImplCopyWith<$Res> {
  factory _$$FirebaseInvalidCredentionErrorCategoryImplCopyWith(
          _$FirebaseInvalidCredentionErrorCategoryImpl value,
          $Res Function(_$FirebaseInvalidCredentionErrorCategoryImpl) then) =
      __$$FirebaseInvalidCredentionErrorCategoryImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FirebaseInvalidCredentionErrorCategoryImplCopyWithImpl<$Res>
    extends _$FirebaseErrorCategoryCopyWithImpl<$Res,
        _$FirebaseInvalidCredentionErrorCategoryImpl>
    implements _$$FirebaseInvalidCredentionErrorCategoryImplCopyWith<$Res> {
  __$$FirebaseInvalidCredentionErrorCategoryImplCopyWithImpl(
      _$FirebaseInvalidCredentionErrorCategoryImpl _value,
      $Res Function(_$FirebaseInvalidCredentionErrorCategoryImpl) _then)
      : super(_value, _then);

  /// Create a copy of FirebaseErrorCategory
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FirebaseInvalidCredentionErrorCategoryImpl
    with DiagnosticableTreeMixin
    implements _FirebaseInvalidCredentionErrorCategory {
  const _$FirebaseInvalidCredentionErrorCategoryImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FirebaseErrorCategory.invalidCredential()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(
        DiagnosticsProperty('type', 'FirebaseErrorCategory.invalidCredential'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FirebaseInvalidCredentionErrorCategoryImpl);
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
    required TResult Function() userDisabled,
    required TResult Function() userNotFound,
    required TResult Function() wrongPassword,
    required TResult Function() invalidCredential,
    required TResult Function() unauthorizedContinueUri,
    required TResult Function() invalidContinueUri,
    required TResult Function() missingIOSBundleId,
    required TResult Function() missingContinueUri,
    required TResult Function() missingAndroidPkgName,
  }) {
    return invalidCredential();
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
    TResult? Function()? userDisabled,
    TResult? Function()? userNotFound,
    TResult? Function()? wrongPassword,
    TResult? Function()? invalidCredential,
    TResult? Function()? unauthorizedContinueUri,
    TResult? Function()? invalidContinueUri,
    TResult? Function()? missingIOSBundleId,
    TResult? Function()? missingContinueUri,
    TResult? Function()? missingAndroidPkgName,
  }) {
    return invalidCredential?.call();
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
    TResult Function()? userDisabled,
    TResult Function()? userNotFound,
    TResult Function()? wrongPassword,
    TResult Function()? invalidCredential,
    TResult Function()? unauthorizedContinueUri,
    TResult Function()? invalidContinueUri,
    TResult Function()? missingIOSBundleId,
    TResult Function()? missingContinueUri,
    TResult Function()? missingAndroidPkgName,
    required TResult orElse(),
  }) {
    if (invalidCredential != null) {
      return invalidCredential();
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
    required TResult Function(_FirebaseUserDisabledErrorCategory value)
        userDisabled,
    required TResult Function(_FirebaseUserNotFoundErrorCategory value)
        userNotFound,
    required TResult Function(_FirebaseWrongPasswordErrorCategory value)
        wrongPassword,
    required TResult Function(_FirebaseInvalidCredentionErrorCategory value)
        invalidCredential,
    required TResult Function(
            _FirebaseUnauthorizedContinueUriErrorCategory value)
        unauthorizedContinueUri,
    required TResult Function(_FirebaseInvalidContinueUriErrorCategory value)
        invalidContinueUri,
    required TResult Function(_FirebaseMissingIOSByndleIdErrorCategory value)
        missingIOSBundleId,
    required TResult Function(_FirebaseMissionContinueUriErrorCategory value)
        missingContinueUri,
    required TResult Function(_FirebaseMissionAndroidPkgNameErrorCategory value)
        missingAndroidPkgName,
  }) {
    return invalidCredential(this);
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
    TResult? Function(_FirebaseUserDisabledErrorCategory value)? userDisabled,
    TResult? Function(_FirebaseUserNotFoundErrorCategory value)? userNotFound,
    TResult? Function(_FirebaseWrongPasswordErrorCategory value)? wrongPassword,
    TResult? Function(_FirebaseInvalidCredentionErrorCategory value)?
        invalidCredential,
    TResult? Function(_FirebaseUnauthorizedContinueUriErrorCategory value)?
        unauthorizedContinueUri,
    TResult? Function(_FirebaseInvalidContinueUriErrorCategory value)?
        invalidContinueUri,
    TResult? Function(_FirebaseMissingIOSByndleIdErrorCategory value)?
        missingIOSBundleId,
    TResult? Function(_FirebaseMissionContinueUriErrorCategory value)?
        missingContinueUri,
    TResult? Function(_FirebaseMissionAndroidPkgNameErrorCategory value)?
        missingAndroidPkgName,
  }) {
    return invalidCredential?.call(this);
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
    TResult Function(_FirebaseUserDisabledErrorCategory value)? userDisabled,
    TResult Function(_FirebaseUserNotFoundErrorCategory value)? userNotFound,
    TResult Function(_FirebaseWrongPasswordErrorCategory value)? wrongPassword,
    TResult Function(_FirebaseInvalidCredentionErrorCategory value)?
        invalidCredential,
    TResult Function(_FirebaseUnauthorizedContinueUriErrorCategory value)?
        unauthorizedContinueUri,
    TResult Function(_FirebaseInvalidContinueUriErrorCategory value)?
        invalidContinueUri,
    TResult Function(_FirebaseMissingIOSByndleIdErrorCategory value)?
        missingIOSBundleId,
    TResult Function(_FirebaseMissionContinueUriErrorCategory value)?
        missingContinueUri,
    TResult Function(_FirebaseMissionAndroidPkgNameErrorCategory value)?
        missingAndroidPkgName,
    required TResult orElse(),
  }) {
    if (invalidCredential != null) {
      return invalidCredential(this);
    }
    return orElse();
  }
}

abstract class _FirebaseInvalidCredentionErrorCategory
    implements FirebaseErrorCategory {
  const factory _FirebaseInvalidCredentionErrorCategory() =
      _$FirebaseInvalidCredentionErrorCategoryImpl;
}

/// @nodoc
abstract class _$$FirebaseUnauthorizedContinueUriErrorCategoryImplCopyWith<
    $Res> {
  factory _$$FirebaseUnauthorizedContinueUriErrorCategoryImplCopyWith(
          _$FirebaseUnauthorizedContinueUriErrorCategoryImpl value,
          $Res Function(_$FirebaseUnauthorizedContinueUriErrorCategoryImpl)
              then) =
      __$$FirebaseUnauthorizedContinueUriErrorCategoryImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FirebaseUnauthorizedContinueUriErrorCategoryImplCopyWithImpl<$Res>
    extends _$FirebaseErrorCategoryCopyWithImpl<$Res,
        _$FirebaseUnauthorizedContinueUriErrorCategoryImpl>
    implements
        _$$FirebaseUnauthorizedContinueUriErrorCategoryImplCopyWith<$Res> {
  __$$FirebaseUnauthorizedContinueUriErrorCategoryImplCopyWithImpl(
      _$FirebaseUnauthorizedContinueUriErrorCategoryImpl _value,
      $Res Function(_$FirebaseUnauthorizedContinueUriErrorCategoryImpl) _then)
      : super(_value, _then);

  /// Create a copy of FirebaseErrorCategory
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FirebaseUnauthorizedContinueUriErrorCategoryImpl
    with DiagnosticableTreeMixin
    implements _FirebaseUnauthorizedContinueUriErrorCategory {
  const _$FirebaseUnauthorizedContinueUriErrorCategoryImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FirebaseErrorCategory.unauthorizedContinueUri()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty(
        'type', 'FirebaseErrorCategory.unauthorizedContinueUri'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FirebaseUnauthorizedContinueUriErrorCategoryImpl);
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
    required TResult Function() userDisabled,
    required TResult Function() userNotFound,
    required TResult Function() wrongPassword,
    required TResult Function() invalidCredential,
    required TResult Function() unauthorizedContinueUri,
    required TResult Function() invalidContinueUri,
    required TResult Function() missingIOSBundleId,
    required TResult Function() missingContinueUri,
    required TResult Function() missingAndroidPkgName,
  }) {
    return unauthorizedContinueUri();
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
    TResult? Function()? userDisabled,
    TResult? Function()? userNotFound,
    TResult? Function()? wrongPassword,
    TResult? Function()? invalidCredential,
    TResult? Function()? unauthorizedContinueUri,
    TResult? Function()? invalidContinueUri,
    TResult? Function()? missingIOSBundleId,
    TResult? Function()? missingContinueUri,
    TResult? Function()? missingAndroidPkgName,
  }) {
    return unauthorizedContinueUri?.call();
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
    TResult Function()? userDisabled,
    TResult Function()? userNotFound,
    TResult Function()? wrongPassword,
    TResult Function()? invalidCredential,
    TResult Function()? unauthorizedContinueUri,
    TResult Function()? invalidContinueUri,
    TResult Function()? missingIOSBundleId,
    TResult Function()? missingContinueUri,
    TResult Function()? missingAndroidPkgName,
    required TResult orElse(),
  }) {
    if (unauthorizedContinueUri != null) {
      return unauthorizedContinueUri();
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
    required TResult Function(_FirebaseUserDisabledErrorCategory value)
        userDisabled,
    required TResult Function(_FirebaseUserNotFoundErrorCategory value)
        userNotFound,
    required TResult Function(_FirebaseWrongPasswordErrorCategory value)
        wrongPassword,
    required TResult Function(_FirebaseInvalidCredentionErrorCategory value)
        invalidCredential,
    required TResult Function(
            _FirebaseUnauthorizedContinueUriErrorCategory value)
        unauthorizedContinueUri,
    required TResult Function(_FirebaseInvalidContinueUriErrorCategory value)
        invalidContinueUri,
    required TResult Function(_FirebaseMissingIOSByndleIdErrorCategory value)
        missingIOSBundleId,
    required TResult Function(_FirebaseMissionContinueUriErrorCategory value)
        missingContinueUri,
    required TResult Function(_FirebaseMissionAndroidPkgNameErrorCategory value)
        missingAndroidPkgName,
  }) {
    return unauthorizedContinueUri(this);
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
    TResult? Function(_FirebaseUserDisabledErrorCategory value)? userDisabled,
    TResult? Function(_FirebaseUserNotFoundErrorCategory value)? userNotFound,
    TResult? Function(_FirebaseWrongPasswordErrorCategory value)? wrongPassword,
    TResult? Function(_FirebaseInvalidCredentionErrorCategory value)?
        invalidCredential,
    TResult? Function(_FirebaseUnauthorizedContinueUriErrorCategory value)?
        unauthorizedContinueUri,
    TResult? Function(_FirebaseInvalidContinueUriErrorCategory value)?
        invalidContinueUri,
    TResult? Function(_FirebaseMissingIOSByndleIdErrorCategory value)?
        missingIOSBundleId,
    TResult? Function(_FirebaseMissionContinueUriErrorCategory value)?
        missingContinueUri,
    TResult? Function(_FirebaseMissionAndroidPkgNameErrorCategory value)?
        missingAndroidPkgName,
  }) {
    return unauthorizedContinueUri?.call(this);
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
    TResult Function(_FirebaseUserDisabledErrorCategory value)? userDisabled,
    TResult Function(_FirebaseUserNotFoundErrorCategory value)? userNotFound,
    TResult Function(_FirebaseWrongPasswordErrorCategory value)? wrongPassword,
    TResult Function(_FirebaseInvalidCredentionErrorCategory value)?
        invalidCredential,
    TResult Function(_FirebaseUnauthorizedContinueUriErrorCategory value)?
        unauthorizedContinueUri,
    TResult Function(_FirebaseInvalidContinueUriErrorCategory value)?
        invalidContinueUri,
    TResult Function(_FirebaseMissingIOSByndleIdErrorCategory value)?
        missingIOSBundleId,
    TResult Function(_FirebaseMissionContinueUriErrorCategory value)?
        missingContinueUri,
    TResult Function(_FirebaseMissionAndroidPkgNameErrorCategory value)?
        missingAndroidPkgName,
    required TResult orElse(),
  }) {
    if (unauthorizedContinueUri != null) {
      return unauthorizedContinueUri(this);
    }
    return orElse();
  }
}

abstract class _FirebaseUnauthorizedContinueUriErrorCategory
    implements FirebaseErrorCategory {
  const factory _FirebaseUnauthorizedContinueUriErrorCategory() =
      _$FirebaseUnauthorizedContinueUriErrorCategoryImpl;
}

/// @nodoc
abstract class _$$FirebaseInvalidContinueUriErrorCategoryImplCopyWith<$Res> {
  factory _$$FirebaseInvalidContinueUriErrorCategoryImplCopyWith(
          _$FirebaseInvalidContinueUriErrorCategoryImpl value,
          $Res Function(_$FirebaseInvalidContinueUriErrorCategoryImpl) then) =
      __$$FirebaseInvalidContinueUriErrorCategoryImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FirebaseInvalidContinueUriErrorCategoryImplCopyWithImpl<$Res>
    extends _$FirebaseErrorCategoryCopyWithImpl<$Res,
        _$FirebaseInvalidContinueUriErrorCategoryImpl>
    implements _$$FirebaseInvalidContinueUriErrorCategoryImplCopyWith<$Res> {
  __$$FirebaseInvalidContinueUriErrorCategoryImplCopyWithImpl(
      _$FirebaseInvalidContinueUriErrorCategoryImpl _value,
      $Res Function(_$FirebaseInvalidContinueUriErrorCategoryImpl) _then)
      : super(_value, _then);

  /// Create a copy of FirebaseErrorCategory
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FirebaseInvalidContinueUriErrorCategoryImpl
    with DiagnosticableTreeMixin
    implements _FirebaseInvalidContinueUriErrorCategory {
  const _$FirebaseInvalidContinueUriErrorCategoryImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FirebaseErrorCategory.invalidContinueUri()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty(
        'type', 'FirebaseErrorCategory.invalidContinueUri'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FirebaseInvalidContinueUriErrorCategoryImpl);
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
    required TResult Function() userDisabled,
    required TResult Function() userNotFound,
    required TResult Function() wrongPassword,
    required TResult Function() invalidCredential,
    required TResult Function() unauthorizedContinueUri,
    required TResult Function() invalidContinueUri,
    required TResult Function() missingIOSBundleId,
    required TResult Function() missingContinueUri,
    required TResult Function() missingAndroidPkgName,
  }) {
    return invalidContinueUri();
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
    TResult? Function()? userDisabled,
    TResult? Function()? userNotFound,
    TResult? Function()? wrongPassword,
    TResult? Function()? invalidCredential,
    TResult? Function()? unauthorizedContinueUri,
    TResult? Function()? invalidContinueUri,
    TResult? Function()? missingIOSBundleId,
    TResult? Function()? missingContinueUri,
    TResult? Function()? missingAndroidPkgName,
  }) {
    return invalidContinueUri?.call();
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
    TResult Function()? userDisabled,
    TResult Function()? userNotFound,
    TResult Function()? wrongPassword,
    TResult Function()? invalidCredential,
    TResult Function()? unauthorizedContinueUri,
    TResult Function()? invalidContinueUri,
    TResult Function()? missingIOSBundleId,
    TResult Function()? missingContinueUri,
    TResult Function()? missingAndroidPkgName,
    required TResult orElse(),
  }) {
    if (invalidContinueUri != null) {
      return invalidContinueUri();
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
    required TResult Function(_FirebaseUserDisabledErrorCategory value)
        userDisabled,
    required TResult Function(_FirebaseUserNotFoundErrorCategory value)
        userNotFound,
    required TResult Function(_FirebaseWrongPasswordErrorCategory value)
        wrongPassword,
    required TResult Function(_FirebaseInvalidCredentionErrorCategory value)
        invalidCredential,
    required TResult Function(
            _FirebaseUnauthorizedContinueUriErrorCategory value)
        unauthorizedContinueUri,
    required TResult Function(_FirebaseInvalidContinueUriErrorCategory value)
        invalidContinueUri,
    required TResult Function(_FirebaseMissingIOSByndleIdErrorCategory value)
        missingIOSBundleId,
    required TResult Function(_FirebaseMissionContinueUriErrorCategory value)
        missingContinueUri,
    required TResult Function(_FirebaseMissionAndroidPkgNameErrorCategory value)
        missingAndroidPkgName,
  }) {
    return invalidContinueUri(this);
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
    TResult? Function(_FirebaseUserDisabledErrorCategory value)? userDisabled,
    TResult? Function(_FirebaseUserNotFoundErrorCategory value)? userNotFound,
    TResult? Function(_FirebaseWrongPasswordErrorCategory value)? wrongPassword,
    TResult? Function(_FirebaseInvalidCredentionErrorCategory value)?
        invalidCredential,
    TResult? Function(_FirebaseUnauthorizedContinueUriErrorCategory value)?
        unauthorizedContinueUri,
    TResult? Function(_FirebaseInvalidContinueUriErrorCategory value)?
        invalidContinueUri,
    TResult? Function(_FirebaseMissingIOSByndleIdErrorCategory value)?
        missingIOSBundleId,
    TResult? Function(_FirebaseMissionContinueUriErrorCategory value)?
        missingContinueUri,
    TResult? Function(_FirebaseMissionAndroidPkgNameErrorCategory value)?
        missingAndroidPkgName,
  }) {
    return invalidContinueUri?.call(this);
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
    TResult Function(_FirebaseUserDisabledErrorCategory value)? userDisabled,
    TResult Function(_FirebaseUserNotFoundErrorCategory value)? userNotFound,
    TResult Function(_FirebaseWrongPasswordErrorCategory value)? wrongPassword,
    TResult Function(_FirebaseInvalidCredentionErrorCategory value)?
        invalidCredential,
    TResult Function(_FirebaseUnauthorizedContinueUriErrorCategory value)?
        unauthorizedContinueUri,
    TResult Function(_FirebaseInvalidContinueUriErrorCategory value)?
        invalidContinueUri,
    TResult Function(_FirebaseMissingIOSByndleIdErrorCategory value)?
        missingIOSBundleId,
    TResult Function(_FirebaseMissionContinueUriErrorCategory value)?
        missingContinueUri,
    TResult Function(_FirebaseMissionAndroidPkgNameErrorCategory value)?
        missingAndroidPkgName,
    required TResult orElse(),
  }) {
    if (invalidContinueUri != null) {
      return invalidContinueUri(this);
    }
    return orElse();
  }
}

abstract class _FirebaseInvalidContinueUriErrorCategory
    implements FirebaseErrorCategory {
  const factory _FirebaseInvalidContinueUriErrorCategory() =
      _$FirebaseInvalidContinueUriErrorCategoryImpl;
}

/// @nodoc
abstract class _$$FirebaseMissingIOSByndleIdErrorCategoryImplCopyWith<$Res> {
  factory _$$FirebaseMissingIOSByndleIdErrorCategoryImplCopyWith(
          _$FirebaseMissingIOSByndleIdErrorCategoryImpl value,
          $Res Function(_$FirebaseMissingIOSByndleIdErrorCategoryImpl) then) =
      __$$FirebaseMissingIOSByndleIdErrorCategoryImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FirebaseMissingIOSByndleIdErrorCategoryImplCopyWithImpl<$Res>
    extends _$FirebaseErrorCategoryCopyWithImpl<$Res,
        _$FirebaseMissingIOSByndleIdErrorCategoryImpl>
    implements _$$FirebaseMissingIOSByndleIdErrorCategoryImplCopyWith<$Res> {
  __$$FirebaseMissingIOSByndleIdErrorCategoryImplCopyWithImpl(
      _$FirebaseMissingIOSByndleIdErrorCategoryImpl _value,
      $Res Function(_$FirebaseMissingIOSByndleIdErrorCategoryImpl) _then)
      : super(_value, _then);

  /// Create a copy of FirebaseErrorCategory
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FirebaseMissingIOSByndleIdErrorCategoryImpl
    with DiagnosticableTreeMixin
    implements _FirebaseMissingIOSByndleIdErrorCategory {
  const _$FirebaseMissingIOSByndleIdErrorCategoryImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FirebaseErrorCategory.missingIOSBundleId()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty(
        'type', 'FirebaseErrorCategory.missingIOSBundleId'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FirebaseMissingIOSByndleIdErrorCategoryImpl);
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
    required TResult Function() userDisabled,
    required TResult Function() userNotFound,
    required TResult Function() wrongPassword,
    required TResult Function() invalidCredential,
    required TResult Function() unauthorizedContinueUri,
    required TResult Function() invalidContinueUri,
    required TResult Function() missingIOSBundleId,
    required TResult Function() missingContinueUri,
    required TResult Function() missingAndroidPkgName,
  }) {
    return missingIOSBundleId();
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
    TResult? Function()? userDisabled,
    TResult? Function()? userNotFound,
    TResult? Function()? wrongPassword,
    TResult? Function()? invalidCredential,
    TResult? Function()? unauthorizedContinueUri,
    TResult? Function()? invalidContinueUri,
    TResult? Function()? missingIOSBundleId,
    TResult? Function()? missingContinueUri,
    TResult? Function()? missingAndroidPkgName,
  }) {
    return missingIOSBundleId?.call();
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
    TResult Function()? userDisabled,
    TResult Function()? userNotFound,
    TResult Function()? wrongPassword,
    TResult Function()? invalidCredential,
    TResult Function()? unauthorizedContinueUri,
    TResult Function()? invalidContinueUri,
    TResult Function()? missingIOSBundleId,
    TResult Function()? missingContinueUri,
    TResult Function()? missingAndroidPkgName,
    required TResult orElse(),
  }) {
    if (missingIOSBundleId != null) {
      return missingIOSBundleId();
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
    required TResult Function(_FirebaseUserDisabledErrorCategory value)
        userDisabled,
    required TResult Function(_FirebaseUserNotFoundErrorCategory value)
        userNotFound,
    required TResult Function(_FirebaseWrongPasswordErrorCategory value)
        wrongPassword,
    required TResult Function(_FirebaseInvalidCredentionErrorCategory value)
        invalidCredential,
    required TResult Function(
            _FirebaseUnauthorizedContinueUriErrorCategory value)
        unauthorizedContinueUri,
    required TResult Function(_FirebaseInvalidContinueUriErrorCategory value)
        invalidContinueUri,
    required TResult Function(_FirebaseMissingIOSByndleIdErrorCategory value)
        missingIOSBundleId,
    required TResult Function(_FirebaseMissionContinueUriErrorCategory value)
        missingContinueUri,
    required TResult Function(_FirebaseMissionAndroidPkgNameErrorCategory value)
        missingAndroidPkgName,
  }) {
    return missingIOSBundleId(this);
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
    TResult? Function(_FirebaseUserDisabledErrorCategory value)? userDisabled,
    TResult? Function(_FirebaseUserNotFoundErrorCategory value)? userNotFound,
    TResult? Function(_FirebaseWrongPasswordErrorCategory value)? wrongPassword,
    TResult? Function(_FirebaseInvalidCredentionErrorCategory value)?
        invalidCredential,
    TResult? Function(_FirebaseUnauthorizedContinueUriErrorCategory value)?
        unauthorizedContinueUri,
    TResult? Function(_FirebaseInvalidContinueUriErrorCategory value)?
        invalidContinueUri,
    TResult? Function(_FirebaseMissingIOSByndleIdErrorCategory value)?
        missingIOSBundleId,
    TResult? Function(_FirebaseMissionContinueUriErrorCategory value)?
        missingContinueUri,
    TResult? Function(_FirebaseMissionAndroidPkgNameErrorCategory value)?
        missingAndroidPkgName,
  }) {
    return missingIOSBundleId?.call(this);
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
    TResult Function(_FirebaseUserDisabledErrorCategory value)? userDisabled,
    TResult Function(_FirebaseUserNotFoundErrorCategory value)? userNotFound,
    TResult Function(_FirebaseWrongPasswordErrorCategory value)? wrongPassword,
    TResult Function(_FirebaseInvalidCredentionErrorCategory value)?
        invalidCredential,
    TResult Function(_FirebaseUnauthorizedContinueUriErrorCategory value)?
        unauthorizedContinueUri,
    TResult Function(_FirebaseInvalidContinueUriErrorCategory value)?
        invalidContinueUri,
    TResult Function(_FirebaseMissingIOSByndleIdErrorCategory value)?
        missingIOSBundleId,
    TResult Function(_FirebaseMissionContinueUriErrorCategory value)?
        missingContinueUri,
    TResult Function(_FirebaseMissionAndroidPkgNameErrorCategory value)?
        missingAndroidPkgName,
    required TResult orElse(),
  }) {
    if (missingIOSBundleId != null) {
      return missingIOSBundleId(this);
    }
    return orElse();
  }
}

abstract class _FirebaseMissingIOSByndleIdErrorCategory
    implements FirebaseErrorCategory {
  const factory _FirebaseMissingIOSByndleIdErrorCategory() =
      _$FirebaseMissingIOSByndleIdErrorCategoryImpl;
}

/// @nodoc
abstract class _$$FirebaseMissionContinueUriErrorCategoryImplCopyWith<$Res> {
  factory _$$FirebaseMissionContinueUriErrorCategoryImplCopyWith(
          _$FirebaseMissionContinueUriErrorCategoryImpl value,
          $Res Function(_$FirebaseMissionContinueUriErrorCategoryImpl) then) =
      __$$FirebaseMissionContinueUriErrorCategoryImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FirebaseMissionContinueUriErrorCategoryImplCopyWithImpl<$Res>
    extends _$FirebaseErrorCategoryCopyWithImpl<$Res,
        _$FirebaseMissionContinueUriErrorCategoryImpl>
    implements _$$FirebaseMissionContinueUriErrorCategoryImplCopyWith<$Res> {
  __$$FirebaseMissionContinueUriErrorCategoryImplCopyWithImpl(
      _$FirebaseMissionContinueUriErrorCategoryImpl _value,
      $Res Function(_$FirebaseMissionContinueUriErrorCategoryImpl) _then)
      : super(_value, _then);

  /// Create a copy of FirebaseErrorCategory
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FirebaseMissionContinueUriErrorCategoryImpl
    with DiagnosticableTreeMixin
    implements _FirebaseMissionContinueUriErrorCategory {
  const _$FirebaseMissionContinueUriErrorCategoryImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FirebaseErrorCategory.missingContinueUri()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty(
        'type', 'FirebaseErrorCategory.missingContinueUri'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FirebaseMissionContinueUriErrorCategoryImpl);
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
    required TResult Function() userDisabled,
    required TResult Function() userNotFound,
    required TResult Function() wrongPassword,
    required TResult Function() invalidCredential,
    required TResult Function() unauthorizedContinueUri,
    required TResult Function() invalidContinueUri,
    required TResult Function() missingIOSBundleId,
    required TResult Function() missingContinueUri,
    required TResult Function() missingAndroidPkgName,
  }) {
    return missingContinueUri();
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
    TResult? Function()? userDisabled,
    TResult? Function()? userNotFound,
    TResult? Function()? wrongPassword,
    TResult? Function()? invalidCredential,
    TResult? Function()? unauthorizedContinueUri,
    TResult? Function()? invalidContinueUri,
    TResult? Function()? missingIOSBundleId,
    TResult? Function()? missingContinueUri,
    TResult? Function()? missingAndroidPkgName,
  }) {
    return missingContinueUri?.call();
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
    TResult Function()? userDisabled,
    TResult Function()? userNotFound,
    TResult Function()? wrongPassword,
    TResult Function()? invalidCredential,
    TResult Function()? unauthorizedContinueUri,
    TResult Function()? invalidContinueUri,
    TResult Function()? missingIOSBundleId,
    TResult Function()? missingContinueUri,
    TResult Function()? missingAndroidPkgName,
    required TResult orElse(),
  }) {
    if (missingContinueUri != null) {
      return missingContinueUri();
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
    required TResult Function(_FirebaseUserDisabledErrorCategory value)
        userDisabled,
    required TResult Function(_FirebaseUserNotFoundErrorCategory value)
        userNotFound,
    required TResult Function(_FirebaseWrongPasswordErrorCategory value)
        wrongPassword,
    required TResult Function(_FirebaseInvalidCredentionErrorCategory value)
        invalidCredential,
    required TResult Function(
            _FirebaseUnauthorizedContinueUriErrorCategory value)
        unauthorizedContinueUri,
    required TResult Function(_FirebaseInvalidContinueUriErrorCategory value)
        invalidContinueUri,
    required TResult Function(_FirebaseMissingIOSByndleIdErrorCategory value)
        missingIOSBundleId,
    required TResult Function(_FirebaseMissionContinueUriErrorCategory value)
        missingContinueUri,
    required TResult Function(_FirebaseMissionAndroidPkgNameErrorCategory value)
        missingAndroidPkgName,
  }) {
    return missingContinueUri(this);
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
    TResult? Function(_FirebaseUserDisabledErrorCategory value)? userDisabled,
    TResult? Function(_FirebaseUserNotFoundErrorCategory value)? userNotFound,
    TResult? Function(_FirebaseWrongPasswordErrorCategory value)? wrongPassword,
    TResult? Function(_FirebaseInvalidCredentionErrorCategory value)?
        invalidCredential,
    TResult? Function(_FirebaseUnauthorizedContinueUriErrorCategory value)?
        unauthorizedContinueUri,
    TResult? Function(_FirebaseInvalidContinueUriErrorCategory value)?
        invalidContinueUri,
    TResult? Function(_FirebaseMissingIOSByndleIdErrorCategory value)?
        missingIOSBundleId,
    TResult? Function(_FirebaseMissionContinueUriErrorCategory value)?
        missingContinueUri,
    TResult? Function(_FirebaseMissionAndroidPkgNameErrorCategory value)?
        missingAndroidPkgName,
  }) {
    return missingContinueUri?.call(this);
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
    TResult Function(_FirebaseUserDisabledErrorCategory value)? userDisabled,
    TResult Function(_FirebaseUserNotFoundErrorCategory value)? userNotFound,
    TResult Function(_FirebaseWrongPasswordErrorCategory value)? wrongPassword,
    TResult Function(_FirebaseInvalidCredentionErrorCategory value)?
        invalidCredential,
    TResult Function(_FirebaseUnauthorizedContinueUriErrorCategory value)?
        unauthorizedContinueUri,
    TResult Function(_FirebaseInvalidContinueUriErrorCategory value)?
        invalidContinueUri,
    TResult Function(_FirebaseMissingIOSByndleIdErrorCategory value)?
        missingIOSBundleId,
    TResult Function(_FirebaseMissionContinueUriErrorCategory value)?
        missingContinueUri,
    TResult Function(_FirebaseMissionAndroidPkgNameErrorCategory value)?
        missingAndroidPkgName,
    required TResult orElse(),
  }) {
    if (missingContinueUri != null) {
      return missingContinueUri(this);
    }
    return orElse();
  }
}

abstract class _FirebaseMissionContinueUriErrorCategory
    implements FirebaseErrorCategory {
  const factory _FirebaseMissionContinueUriErrorCategory() =
      _$FirebaseMissionContinueUriErrorCategoryImpl;
}

/// @nodoc
abstract class _$$FirebaseMissionAndroidPkgNameErrorCategoryImplCopyWith<$Res> {
  factory _$$FirebaseMissionAndroidPkgNameErrorCategoryImplCopyWith(
          _$FirebaseMissionAndroidPkgNameErrorCategoryImpl value,
          $Res Function(_$FirebaseMissionAndroidPkgNameErrorCategoryImpl)
              then) =
      __$$FirebaseMissionAndroidPkgNameErrorCategoryImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FirebaseMissionAndroidPkgNameErrorCategoryImplCopyWithImpl<$Res>
    extends _$FirebaseErrorCategoryCopyWithImpl<$Res,
        _$FirebaseMissionAndroidPkgNameErrorCategoryImpl>
    implements _$$FirebaseMissionAndroidPkgNameErrorCategoryImplCopyWith<$Res> {
  __$$FirebaseMissionAndroidPkgNameErrorCategoryImplCopyWithImpl(
      _$FirebaseMissionAndroidPkgNameErrorCategoryImpl _value,
      $Res Function(_$FirebaseMissionAndroidPkgNameErrorCategoryImpl) _then)
      : super(_value, _then);

  /// Create a copy of FirebaseErrorCategory
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FirebaseMissionAndroidPkgNameErrorCategoryImpl
    with DiagnosticableTreeMixin
    implements _FirebaseMissionAndroidPkgNameErrorCategory {
  const _$FirebaseMissionAndroidPkgNameErrorCategoryImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FirebaseErrorCategory.missingAndroidPkgName()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty(
        'type', 'FirebaseErrorCategory.missingAndroidPkgName'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FirebaseMissionAndroidPkgNameErrorCategoryImpl);
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
    required TResult Function() userDisabled,
    required TResult Function() userNotFound,
    required TResult Function() wrongPassword,
    required TResult Function() invalidCredential,
    required TResult Function() unauthorizedContinueUri,
    required TResult Function() invalidContinueUri,
    required TResult Function() missingIOSBundleId,
    required TResult Function() missingContinueUri,
    required TResult Function() missingAndroidPkgName,
  }) {
    return missingAndroidPkgName();
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
    TResult? Function()? userDisabled,
    TResult? Function()? userNotFound,
    TResult? Function()? wrongPassword,
    TResult? Function()? invalidCredential,
    TResult? Function()? unauthorizedContinueUri,
    TResult? Function()? invalidContinueUri,
    TResult? Function()? missingIOSBundleId,
    TResult? Function()? missingContinueUri,
    TResult? Function()? missingAndroidPkgName,
  }) {
    return missingAndroidPkgName?.call();
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
    TResult Function()? userDisabled,
    TResult Function()? userNotFound,
    TResult Function()? wrongPassword,
    TResult Function()? invalidCredential,
    TResult Function()? unauthorizedContinueUri,
    TResult Function()? invalidContinueUri,
    TResult Function()? missingIOSBundleId,
    TResult Function()? missingContinueUri,
    TResult Function()? missingAndroidPkgName,
    required TResult orElse(),
  }) {
    if (missingAndroidPkgName != null) {
      return missingAndroidPkgName();
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
    required TResult Function(_FirebaseUserDisabledErrorCategory value)
        userDisabled,
    required TResult Function(_FirebaseUserNotFoundErrorCategory value)
        userNotFound,
    required TResult Function(_FirebaseWrongPasswordErrorCategory value)
        wrongPassword,
    required TResult Function(_FirebaseInvalidCredentionErrorCategory value)
        invalidCredential,
    required TResult Function(
            _FirebaseUnauthorizedContinueUriErrorCategory value)
        unauthorizedContinueUri,
    required TResult Function(_FirebaseInvalidContinueUriErrorCategory value)
        invalidContinueUri,
    required TResult Function(_FirebaseMissingIOSByndleIdErrorCategory value)
        missingIOSBundleId,
    required TResult Function(_FirebaseMissionContinueUriErrorCategory value)
        missingContinueUri,
    required TResult Function(_FirebaseMissionAndroidPkgNameErrorCategory value)
        missingAndroidPkgName,
  }) {
    return missingAndroidPkgName(this);
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
    TResult? Function(_FirebaseUserDisabledErrorCategory value)? userDisabled,
    TResult? Function(_FirebaseUserNotFoundErrorCategory value)? userNotFound,
    TResult? Function(_FirebaseWrongPasswordErrorCategory value)? wrongPassword,
    TResult? Function(_FirebaseInvalidCredentionErrorCategory value)?
        invalidCredential,
    TResult? Function(_FirebaseUnauthorizedContinueUriErrorCategory value)?
        unauthorizedContinueUri,
    TResult? Function(_FirebaseInvalidContinueUriErrorCategory value)?
        invalidContinueUri,
    TResult? Function(_FirebaseMissingIOSByndleIdErrorCategory value)?
        missingIOSBundleId,
    TResult? Function(_FirebaseMissionContinueUriErrorCategory value)?
        missingContinueUri,
    TResult? Function(_FirebaseMissionAndroidPkgNameErrorCategory value)?
        missingAndroidPkgName,
  }) {
    return missingAndroidPkgName?.call(this);
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
    TResult Function(_FirebaseUserDisabledErrorCategory value)? userDisabled,
    TResult Function(_FirebaseUserNotFoundErrorCategory value)? userNotFound,
    TResult Function(_FirebaseWrongPasswordErrorCategory value)? wrongPassword,
    TResult Function(_FirebaseInvalidCredentionErrorCategory value)?
        invalidCredential,
    TResult Function(_FirebaseUnauthorizedContinueUriErrorCategory value)?
        unauthorizedContinueUri,
    TResult Function(_FirebaseInvalidContinueUriErrorCategory value)?
        invalidContinueUri,
    TResult Function(_FirebaseMissingIOSByndleIdErrorCategory value)?
        missingIOSBundleId,
    TResult Function(_FirebaseMissionContinueUriErrorCategory value)?
        missingContinueUri,
    TResult Function(_FirebaseMissionAndroidPkgNameErrorCategory value)?
        missingAndroidPkgName,
    required TResult orElse(),
  }) {
    if (missingAndroidPkgName != null) {
      return missingAndroidPkgName(this);
    }
    return orElse();
  }
}

abstract class _FirebaseMissionAndroidPkgNameErrorCategory
    implements FirebaseErrorCategory {
  const factory _FirebaseMissionAndroidPkgNameErrorCategory() =
      _$FirebaseMissionAndroidPkgNameErrorCategoryImpl;
}

/// @nodoc
mixin _$PermissionErrorCategory {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() denied,
    required TResult Function() permanentlyDenied,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? denied,
    TResult? Function()? permanentlyDenied,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? denied,
    TResult Function()? permanentlyDenied,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PermissionDeniedErrorCategory value) denied,
    required TResult Function(_PermissionPermanentlyDenied value)
        permanentlyDenied,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PermissionDeniedErrorCategory value)? denied,
    TResult? Function(_PermissionPermanentlyDenied value)? permanentlyDenied,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PermissionDeniedErrorCategory value)? denied,
    TResult Function(_PermissionPermanentlyDenied value)? permanentlyDenied,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PermissionErrorCategoryCopyWith<$Res> {
  factory $PermissionErrorCategoryCopyWith(PermissionErrorCategory value,
          $Res Function(PermissionErrorCategory) then) =
      _$PermissionErrorCategoryCopyWithImpl<$Res, PermissionErrorCategory>;
}

/// @nodoc
class _$PermissionErrorCategoryCopyWithImpl<$Res,
        $Val extends PermissionErrorCategory>
    implements $PermissionErrorCategoryCopyWith<$Res> {
  _$PermissionErrorCategoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PermissionErrorCategory
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$PermissionDeniedErrorCategoryImplCopyWith<$Res> {
  factory _$$PermissionDeniedErrorCategoryImplCopyWith(
          _$PermissionDeniedErrorCategoryImpl value,
          $Res Function(_$PermissionDeniedErrorCategoryImpl) then) =
      __$$PermissionDeniedErrorCategoryImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PermissionDeniedErrorCategoryImplCopyWithImpl<$Res>
    extends _$PermissionErrorCategoryCopyWithImpl<$Res,
        _$PermissionDeniedErrorCategoryImpl>
    implements _$$PermissionDeniedErrorCategoryImplCopyWith<$Res> {
  __$$PermissionDeniedErrorCategoryImplCopyWithImpl(
      _$PermissionDeniedErrorCategoryImpl _value,
      $Res Function(_$PermissionDeniedErrorCategoryImpl) _then)
      : super(_value, _then);

  /// Create a copy of PermissionErrorCategory
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$PermissionDeniedErrorCategoryImpl extends _PermissionDeniedErrorCategory
    with DiagnosticableTreeMixin {
  const _$PermissionDeniedErrorCategoryImpl() : super._();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PermissionErrorCategory.denied()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'PermissionErrorCategory.denied'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PermissionDeniedErrorCategoryImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() denied,
    required TResult Function() permanentlyDenied,
  }) {
    return denied();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? denied,
    TResult? Function()? permanentlyDenied,
  }) {
    return denied?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
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
    required TResult Function(_PermissionDeniedErrorCategory value) denied,
    required TResult Function(_PermissionPermanentlyDenied value)
        permanentlyDenied,
  }) {
    return denied(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PermissionDeniedErrorCategory value)? denied,
    TResult? Function(_PermissionPermanentlyDenied value)? permanentlyDenied,
  }) {
    return denied?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PermissionDeniedErrorCategory value)? denied,
    TResult Function(_PermissionPermanentlyDenied value)? permanentlyDenied,
    required TResult orElse(),
  }) {
    if (denied != null) {
      return denied(this);
    }
    return orElse();
  }
}

abstract class _PermissionDeniedErrorCategory extends PermissionErrorCategory {
  const factory _PermissionDeniedErrorCategory() =
      _$PermissionDeniedErrorCategoryImpl;
  const _PermissionDeniedErrorCategory._() : super._();
}

/// @nodoc
abstract class _$$PermissionPermanentlyDeniedImplCopyWith<$Res> {
  factory _$$PermissionPermanentlyDeniedImplCopyWith(
          _$PermissionPermanentlyDeniedImpl value,
          $Res Function(_$PermissionPermanentlyDeniedImpl) then) =
      __$$PermissionPermanentlyDeniedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PermissionPermanentlyDeniedImplCopyWithImpl<$Res>
    extends _$PermissionErrorCategoryCopyWithImpl<$Res,
        _$PermissionPermanentlyDeniedImpl>
    implements _$$PermissionPermanentlyDeniedImplCopyWith<$Res> {
  __$$PermissionPermanentlyDeniedImplCopyWithImpl(
      _$PermissionPermanentlyDeniedImpl _value,
      $Res Function(_$PermissionPermanentlyDeniedImpl) _then)
      : super(_value, _then);

  /// Create a copy of PermissionErrorCategory
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$PermissionPermanentlyDeniedImpl extends _PermissionPermanentlyDenied
    with DiagnosticableTreeMixin {
  const _$PermissionPermanentlyDeniedImpl() : super._();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PermissionErrorCategory.permanentlyDenied()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty(
        'type', 'PermissionErrorCategory.permanentlyDenied'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PermissionPermanentlyDeniedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() denied,
    required TResult Function() permanentlyDenied,
  }) {
    return permanentlyDenied();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? denied,
    TResult? Function()? permanentlyDenied,
  }) {
    return permanentlyDenied?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
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
    required TResult Function(_PermissionDeniedErrorCategory value) denied,
    required TResult Function(_PermissionPermanentlyDenied value)
        permanentlyDenied,
  }) {
    return permanentlyDenied(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PermissionDeniedErrorCategory value)? denied,
    TResult? Function(_PermissionPermanentlyDenied value)? permanentlyDenied,
  }) {
    return permanentlyDenied?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PermissionDeniedErrorCategory value)? denied,
    TResult Function(_PermissionPermanentlyDenied value)? permanentlyDenied,
    required TResult orElse(),
  }) {
    if (permanentlyDenied != null) {
      return permanentlyDenied(this);
    }
    return orElse();
  }
}

abstract class _PermissionPermanentlyDenied extends PermissionErrorCategory {
  const factory _PermissionPermanentlyDenied() =
      _$PermissionPermanentlyDeniedImpl;
  const _PermissionPermanentlyDenied._() : super._();
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
    with DiagnosticableTreeMixin
    implements _NetworkConnectTimeoutErrorCategory {
  const _$NetworkConnectTimeoutErrorCategoryImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NetworkErrorCategory.connectTimeout()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(
        DiagnosticsProperty('type', 'NetworkErrorCategory.connectTimeout'));
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
    with DiagnosticableTreeMixin
    implements _NetworkSendTimeoutErrorCategory {
  const _$NetworkSendTimeoutErrorCategoryImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NetworkErrorCategory.sendTimeout()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'NetworkErrorCategory.sendTimeout'));
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
    with DiagnosticableTreeMixin
    implements _NetworkReceiveTimeoutErrorCategory {
  const _$NetworkReceiveTimeoutErrorCategoryImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NetworkErrorCategory.receiveTimeout()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(
        DiagnosticsProperty('type', 'NetworkErrorCategory.receiveTimeout'));
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
    with DiagnosticableTreeMixin
    implements _NetworkRequestCancelledErrorCategory {
  const _$NetworkRequestCancelledErrorCategoryImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NetworkErrorCategory.requestCancelled()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(
        DiagnosticsProperty('type', 'NetworkErrorCategory.requestCancelled'));
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
    with DiagnosticableTreeMixin
    implements _NetworkNotInternetConnectionErrorCategory {
  const _$NetworkNotInternetConnectionErrorCategoryImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NetworkErrorCategory.notInternetConnection()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty(
        'type', 'NetworkErrorCategory.notInternetConnection'));
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
    with DiagnosticableTreeMixin
    implements _NetworkBadCertificateErrorCategory {
  const _$NetworkBadCertificateErrorCategoryImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NetworkErrorCategory.badCertificate()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(
        DiagnosticsProperty('type', 'NetworkErrorCategory.badCertificate'));
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
    with DiagnosticableTreeMixin
    implements _NetworkBadResponseErrorCategory {
  const _$NetworkBadResponseErrorCategoryImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NetworkErrorCategory.badResponse()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'NetworkErrorCategory.badResponse'));
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

class _$NetworkBaseErrorCategoryImpl
    with DiagnosticableTreeMixin
    implements _NetworkBaseErrorCategory {
  const _$NetworkBaseErrorCategoryImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NetworkErrorCategory.base()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'NetworkErrorCategory.base'));
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

/// @nodoc
mixin _$AuthenticationErrorCategory {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notAuth,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? notAuth,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notAuth,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NotAuthenticatedErrorCategory value) notAuth,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NotAuthenticatedErrorCategory value)? notAuth,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NotAuthenticatedErrorCategory value)? notAuth,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticationErrorCategoryCopyWith<$Res> {
  factory $AuthenticationErrorCategoryCopyWith(
          AuthenticationErrorCategory value,
          $Res Function(AuthenticationErrorCategory) then) =
      _$AuthenticationErrorCategoryCopyWithImpl<$Res,
          AuthenticationErrorCategory>;
}

/// @nodoc
class _$AuthenticationErrorCategoryCopyWithImpl<$Res,
        $Val extends AuthenticationErrorCategory>
    implements $AuthenticationErrorCategoryCopyWith<$Res> {
  _$AuthenticationErrorCategoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthenticationErrorCategory
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$NotAuthenticatedErrorCategoryImplCopyWith<$Res> {
  factory _$$NotAuthenticatedErrorCategoryImplCopyWith(
          _$NotAuthenticatedErrorCategoryImpl value,
          $Res Function(_$NotAuthenticatedErrorCategoryImpl) then) =
      __$$NotAuthenticatedErrorCategoryImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NotAuthenticatedErrorCategoryImplCopyWithImpl<$Res>
    extends _$AuthenticationErrorCategoryCopyWithImpl<$Res,
        _$NotAuthenticatedErrorCategoryImpl>
    implements _$$NotAuthenticatedErrorCategoryImplCopyWith<$Res> {
  __$$NotAuthenticatedErrorCategoryImplCopyWithImpl(
      _$NotAuthenticatedErrorCategoryImpl _value,
      $Res Function(_$NotAuthenticatedErrorCategoryImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthenticationErrorCategory
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$NotAuthenticatedErrorCategoryImpl
    with DiagnosticableTreeMixin
    implements _NotAuthenticatedErrorCategory {
  const _$NotAuthenticatedErrorCategoryImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthenticationErrorCategory.notAuth()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(
        DiagnosticsProperty('type', 'AuthenticationErrorCategory.notAuth'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotAuthenticatedErrorCategoryImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notAuth,
  }) {
    return notAuth();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? notAuth,
  }) {
    return notAuth?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
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
    required TResult Function(_NotAuthenticatedErrorCategory value) notAuth,
  }) {
    return notAuth(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NotAuthenticatedErrorCategory value)? notAuth,
  }) {
    return notAuth?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NotAuthenticatedErrorCategory value)? notAuth,
    required TResult orElse(),
  }) {
    if (notAuth != null) {
      return notAuth(this);
    }
    return orElse();
  }
}

abstract class _NotAuthenticatedErrorCategory
    implements AuthenticationErrorCategory {
  const factory _NotAuthenticatedErrorCategory() =
      _$NotAuthenticatedErrorCategoryImpl;
}

/// @nodoc
mixin _$AccessErrorCategory {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() alreadyAddedInFavourite,
    required TResult Function() noID,
    required TResult Function() notAddedToFavorites,
    required TResult Function() notAddedToUserTracks,
    required TResult Function() noUpdateRights,
    required TResult Function() noRemoveRights,
    required TResult Function() notContainsElement,
    required TResult Function() userIsTheCreatorOfTheTrack,
    required TResult Function() alreadyContainsElement,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? alreadyAddedInFavourite,
    TResult? Function()? noID,
    TResult? Function()? notAddedToFavorites,
    TResult? Function()? notAddedToUserTracks,
    TResult? Function()? noUpdateRights,
    TResult? Function()? noRemoveRights,
    TResult? Function()? notContainsElement,
    TResult? Function()? userIsTheCreatorOfTheTrack,
    TResult? Function()? alreadyContainsElement,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? alreadyAddedInFavourite,
    TResult Function()? noID,
    TResult Function()? notAddedToFavorites,
    TResult Function()? notAddedToUserTracks,
    TResult Function()? noUpdateRights,
    TResult Function()? noRemoveRights,
    TResult Function()? notContainsElement,
    TResult Function()? userIsTheCreatorOfTheTrack,
    TResult Function()? alreadyContainsElement,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AlreadyAddedInFavourteErrorCategory value)
        alreadyAddedInFavourite,
    required TResult Function(_NoIDErrorCategory value) noID,
    required TResult Function(_NotAddedToFavouritesCategory value)
        notAddedToFavorites,
    required TResult Function(_NotAddedToUserTracksCategory value)
        notAddedToUserTracks,
    required TResult Function(_NoUpdateRightsCategory value) noUpdateRights,
    required TResult Function(_NoRemoveRightsCategory value) noRemoveRights,
    required TResult Function(_NoContainsElementCategory value)
        notContainsElement,
    required TResult Function(_UserTheCreatorOfTheTrackCategory value)
        userIsTheCreatorOfTheTrack,
    required TResult Function(_AlreadyContainsElementCategory value)
        alreadyContainsElement,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AlreadyAddedInFavourteErrorCategory value)?
        alreadyAddedInFavourite,
    TResult? Function(_NoIDErrorCategory value)? noID,
    TResult? Function(_NotAddedToFavouritesCategory value)? notAddedToFavorites,
    TResult? Function(_NotAddedToUserTracksCategory value)?
        notAddedToUserTracks,
    TResult? Function(_NoUpdateRightsCategory value)? noUpdateRights,
    TResult? Function(_NoRemoveRightsCategory value)? noRemoveRights,
    TResult? Function(_NoContainsElementCategory value)? notContainsElement,
    TResult? Function(_UserTheCreatorOfTheTrackCategory value)?
        userIsTheCreatorOfTheTrack,
    TResult? Function(_AlreadyContainsElementCategory value)?
        alreadyContainsElement,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AlreadyAddedInFavourteErrorCategory value)?
        alreadyAddedInFavourite,
    TResult Function(_NoIDErrorCategory value)? noID,
    TResult Function(_NotAddedToFavouritesCategory value)? notAddedToFavorites,
    TResult Function(_NotAddedToUserTracksCategory value)? notAddedToUserTracks,
    TResult Function(_NoUpdateRightsCategory value)? noUpdateRights,
    TResult Function(_NoRemoveRightsCategory value)? noRemoveRights,
    TResult Function(_NoContainsElementCategory value)? notContainsElement,
    TResult Function(_UserTheCreatorOfTheTrackCategory value)?
        userIsTheCreatorOfTheTrack,
    TResult Function(_AlreadyContainsElementCategory value)?
        alreadyContainsElement,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccessErrorCategoryCopyWith<$Res> {
  factory $AccessErrorCategoryCopyWith(
          AccessErrorCategory value, $Res Function(AccessErrorCategory) then) =
      _$AccessErrorCategoryCopyWithImpl<$Res, AccessErrorCategory>;
}

/// @nodoc
class _$AccessErrorCategoryCopyWithImpl<$Res, $Val extends AccessErrorCategory>
    implements $AccessErrorCategoryCopyWith<$Res> {
  _$AccessErrorCategoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AccessErrorCategory
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$AlreadyAddedInFavourteErrorCategoryImplCopyWith<$Res> {
  factory _$$AlreadyAddedInFavourteErrorCategoryImplCopyWith(
          _$AlreadyAddedInFavourteErrorCategoryImpl value,
          $Res Function(_$AlreadyAddedInFavourteErrorCategoryImpl) then) =
      __$$AlreadyAddedInFavourteErrorCategoryImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AlreadyAddedInFavourteErrorCategoryImplCopyWithImpl<$Res>
    extends _$AccessErrorCategoryCopyWithImpl<$Res,
        _$AlreadyAddedInFavourteErrorCategoryImpl>
    implements _$$AlreadyAddedInFavourteErrorCategoryImplCopyWith<$Res> {
  __$$AlreadyAddedInFavourteErrorCategoryImplCopyWithImpl(
      _$AlreadyAddedInFavourteErrorCategoryImpl _value,
      $Res Function(_$AlreadyAddedInFavourteErrorCategoryImpl) _then)
      : super(_value, _then);

  /// Create a copy of AccessErrorCategory
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AlreadyAddedInFavourteErrorCategoryImpl
    with DiagnosticableTreeMixin
    implements _AlreadyAddedInFavourteErrorCategory {
  const _$AlreadyAddedInFavourteErrorCategoryImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AccessErrorCategory.alreadyAddedInFavourite()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty(
        'type', 'AccessErrorCategory.alreadyAddedInFavourite'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AlreadyAddedInFavourteErrorCategoryImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() alreadyAddedInFavourite,
    required TResult Function() noID,
    required TResult Function() notAddedToFavorites,
    required TResult Function() notAddedToUserTracks,
    required TResult Function() noUpdateRights,
    required TResult Function() noRemoveRights,
    required TResult Function() notContainsElement,
    required TResult Function() userIsTheCreatorOfTheTrack,
    required TResult Function() alreadyContainsElement,
  }) {
    return alreadyAddedInFavourite();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? alreadyAddedInFavourite,
    TResult? Function()? noID,
    TResult? Function()? notAddedToFavorites,
    TResult? Function()? notAddedToUserTracks,
    TResult? Function()? noUpdateRights,
    TResult? Function()? noRemoveRights,
    TResult? Function()? notContainsElement,
    TResult? Function()? userIsTheCreatorOfTheTrack,
    TResult? Function()? alreadyContainsElement,
  }) {
    return alreadyAddedInFavourite?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? alreadyAddedInFavourite,
    TResult Function()? noID,
    TResult Function()? notAddedToFavorites,
    TResult Function()? notAddedToUserTracks,
    TResult Function()? noUpdateRights,
    TResult Function()? noRemoveRights,
    TResult Function()? notContainsElement,
    TResult Function()? userIsTheCreatorOfTheTrack,
    TResult Function()? alreadyContainsElement,
    required TResult orElse(),
  }) {
    if (alreadyAddedInFavourite != null) {
      return alreadyAddedInFavourite();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AlreadyAddedInFavourteErrorCategory value)
        alreadyAddedInFavourite,
    required TResult Function(_NoIDErrorCategory value) noID,
    required TResult Function(_NotAddedToFavouritesCategory value)
        notAddedToFavorites,
    required TResult Function(_NotAddedToUserTracksCategory value)
        notAddedToUserTracks,
    required TResult Function(_NoUpdateRightsCategory value) noUpdateRights,
    required TResult Function(_NoRemoveRightsCategory value) noRemoveRights,
    required TResult Function(_NoContainsElementCategory value)
        notContainsElement,
    required TResult Function(_UserTheCreatorOfTheTrackCategory value)
        userIsTheCreatorOfTheTrack,
    required TResult Function(_AlreadyContainsElementCategory value)
        alreadyContainsElement,
  }) {
    return alreadyAddedInFavourite(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AlreadyAddedInFavourteErrorCategory value)?
        alreadyAddedInFavourite,
    TResult? Function(_NoIDErrorCategory value)? noID,
    TResult? Function(_NotAddedToFavouritesCategory value)? notAddedToFavorites,
    TResult? Function(_NotAddedToUserTracksCategory value)?
        notAddedToUserTracks,
    TResult? Function(_NoUpdateRightsCategory value)? noUpdateRights,
    TResult? Function(_NoRemoveRightsCategory value)? noRemoveRights,
    TResult? Function(_NoContainsElementCategory value)? notContainsElement,
    TResult? Function(_UserTheCreatorOfTheTrackCategory value)?
        userIsTheCreatorOfTheTrack,
    TResult? Function(_AlreadyContainsElementCategory value)?
        alreadyContainsElement,
  }) {
    return alreadyAddedInFavourite?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AlreadyAddedInFavourteErrorCategory value)?
        alreadyAddedInFavourite,
    TResult Function(_NoIDErrorCategory value)? noID,
    TResult Function(_NotAddedToFavouritesCategory value)? notAddedToFavorites,
    TResult Function(_NotAddedToUserTracksCategory value)? notAddedToUserTracks,
    TResult Function(_NoUpdateRightsCategory value)? noUpdateRights,
    TResult Function(_NoRemoveRightsCategory value)? noRemoveRights,
    TResult Function(_NoContainsElementCategory value)? notContainsElement,
    TResult Function(_UserTheCreatorOfTheTrackCategory value)?
        userIsTheCreatorOfTheTrack,
    TResult Function(_AlreadyContainsElementCategory value)?
        alreadyContainsElement,
    required TResult orElse(),
  }) {
    if (alreadyAddedInFavourite != null) {
      return alreadyAddedInFavourite(this);
    }
    return orElse();
  }
}

abstract class _AlreadyAddedInFavourteErrorCategory
    implements AccessErrorCategory {
  const factory _AlreadyAddedInFavourteErrorCategory() =
      _$AlreadyAddedInFavourteErrorCategoryImpl;
}

/// @nodoc
abstract class _$$NoIDErrorCategoryImplCopyWith<$Res> {
  factory _$$NoIDErrorCategoryImplCopyWith(_$NoIDErrorCategoryImpl value,
          $Res Function(_$NoIDErrorCategoryImpl) then) =
      __$$NoIDErrorCategoryImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NoIDErrorCategoryImplCopyWithImpl<$Res>
    extends _$AccessErrorCategoryCopyWithImpl<$Res, _$NoIDErrorCategoryImpl>
    implements _$$NoIDErrorCategoryImplCopyWith<$Res> {
  __$$NoIDErrorCategoryImplCopyWithImpl(_$NoIDErrorCategoryImpl _value,
      $Res Function(_$NoIDErrorCategoryImpl) _then)
      : super(_value, _then);

  /// Create a copy of AccessErrorCategory
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$NoIDErrorCategoryImpl
    with DiagnosticableTreeMixin
    implements _NoIDErrorCategory {
  const _$NoIDErrorCategoryImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AccessErrorCategory.noID()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'AccessErrorCategory.noID'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NoIDErrorCategoryImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() alreadyAddedInFavourite,
    required TResult Function() noID,
    required TResult Function() notAddedToFavorites,
    required TResult Function() notAddedToUserTracks,
    required TResult Function() noUpdateRights,
    required TResult Function() noRemoveRights,
    required TResult Function() notContainsElement,
    required TResult Function() userIsTheCreatorOfTheTrack,
    required TResult Function() alreadyContainsElement,
  }) {
    return noID();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? alreadyAddedInFavourite,
    TResult? Function()? noID,
    TResult? Function()? notAddedToFavorites,
    TResult? Function()? notAddedToUserTracks,
    TResult? Function()? noUpdateRights,
    TResult? Function()? noRemoveRights,
    TResult? Function()? notContainsElement,
    TResult? Function()? userIsTheCreatorOfTheTrack,
    TResult? Function()? alreadyContainsElement,
  }) {
    return noID?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? alreadyAddedInFavourite,
    TResult Function()? noID,
    TResult Function()? notAddedToFavorites,
    TResult Function()? notAddedToUserTracks,
    TResult Function()? noUpdateRights,
    TResult Function()? noRemoveRights,
    TResult Function()? notContainsElement,
    TResult Function()? userIsTheCreatorOfTheTrack,
    TResult Function()? alreadyContainsElement,
    required TResult orElse(),
  }) {
    if (noID != null) {
      return noID();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AlreadyAddedInFavourteErrorCategory value)
        alreadyAddedInFavourite,
    required TResult Function(_NoIDErrorCategory value) noID,
    required TResult Function(_NotAddedToFavouritesCategory value)
        notAddedToFavorites,
    required TResult Function(_NotAddedToUserTracksCategory value)
        notAddedToUserTracks,
    required TResult Function(_NoUpdateRightsCategory value) noUpdateRights,
    required TResult Function(_NoRemoveRightsCategory value) noRemoveRights,
    required TResult Function(_NoContainsElementCategory value)
        notContainsElement,
    required TResult Function(_UserTheCreatorOfTheTrackCategory value)
        userIsTheCreatorOfTheTrack,
    required TResult Function(_AlreadyContainsElementCategory value)
        alreadyContainsElement,
  }) {
    return noID(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AlreadyAddedInFavourteErrorCategory value)?
        alreadyAddedInFavourite,
    TResult? Function(_NoIDErrorCategory value)? noID,
    TResult? Function(_NotAddedToFavouritesCategory value)? notAddedToFavorites,
    TResult? Function(_NotAddedToUserTracksCategory value)?
        notAddedToUserTracks,
    TResult? Function(_NoUpdateRightsCategory value)? noUpdateRights,
    TResult? Function(_NoRemoveRightsCategory value)? noRemoveRights,
    TResult? Function(_NoContainsElementCategory value)? notContainsElement,
    TResult? Function(_UserTheCreatorOfTheTrackCategory value)?
        userIsTheCreatorOfTheTrack,
    TResult? Function(_AlreadyContainsElementCategory value)?
        alreadyContainsElement,
  }) {
    return noID?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AlreadyAddedInFavourteErrorCategory value)?
        alreadyAddedInFavourite,
    TResult Function(_NoIDErrorCategory value)? noID,
    TResult Function(_NotAddedToFavouritesCategory value)? notAddedToFavorites,
    TResult Function(_NotAddedToUserTracksCategory value)? notAddedToUserTracks,
    TResult Function(_NoUpdateRightsCategory value)? noUpdateRights,
    TResult Function(_NoRemoveRightsCategory value)? noRemoveRights,
    TResult Function(_NoContainsElementCategory value)? notContainsElement,
    TResult Function(_UserTheCreatorOfTheTrackCategory value)?
        userIsTheCreatorOfTheTrack,
    TResult Function(_AlreadyContainsElementCategory value)?
        alreadyContainsElement,
    required TResult orElse(),
  }) {
    if (noID != null) {
      return noID(this);
    }
    return orElse();
  }
}

abstract class _NoIDErrorCategory implements AccessErrorCategory {
  const factory _NoIDErrorCategory() = _$NoIDErrorCategoryImpl;
}

/// @nodoc
abstract class _$$NotAddedToFavouritesCategoryImplCopyWith<$Res> {
  factory _$$NotAddedToFavouritesCategoryImplCopyWith(
          _$NotAddedToFavouritesCategoryImpl value,
          $Res Function(_$NotAddedToFavouritesCategoryImpl) then) =
      __$$NotAddedToFavouritesCategoryImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NotAddedToFavouritesCategoryImplCopyWithImpl<$Res>
    extends _$AccessErrorCategoryCopyWithImpl<$Res,
        _$NotAddedToFavouritesCategoryImpl>
    implements _$$NotAddedToFavouritesCategoryImplCopyWith<$Res> {
  __$$NotAddedToFavouritesCategoryImplCopyWithImpl(
      _$NotAddedToFavouritesCategoryImpl _value,
      $Res Function(_$NotAddedToFavouritesCategoryImpl) _then)
      : super(_value, _then);

  /// Create a copy of AccessErrorCategory
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$NotAddedToFavouritesCategoryImpl
    with DiagnosticableTreeMixin
    implements _NotAddedToFavouritesCategory {
  const _$NotAddedToFavouritesCategoryImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AccessErrorCategory.notAddedToFavorites()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(
        DiagnosticsProperty('type', 'AccessErrorCategory.notAddedToFavorites'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotAddedToFavouritesCategoryImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() alreadyAddedInFavourite,
    required TResult Function() noID,
    required TResult Function() notAddedToFavorites,
    required TResult Function() notAddedToUserTracks,
    required TResult Function() noUpdateRights,
    required TResult Function() noRemoveRights,
    required TResult Function() notContainsElement,
    required TResult Function() userIsTheCreatorOfTheTrack,
    required TResult Function() alreadyContainsElement,
  }) {
    return notAddedToFavorites();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? alreadyAddedInFavourite,
    TResult? Function()? noID,
    TResult? Function()? notAddedToFavorites,
    TResult? Function()? notAddedToUserTracks,
    TResult? Function()? noUpdateRights,
    TResult? Function()? noRemoveRights,
    TResult? Function()? notContainsElement,
    TResult? Function()? userIsTheCreatorOfTheTrack,
    TResult? Function()? alreadyContainsElement,
  }) {
    return notAddedToFavorites?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? alreadyAddedInFavourite,
    TResult Function()? noID,
    TResult Function()? notAddedToFavorites,
    TResult Function()? notAddedToUserTracks,
    TResult Function()? noUpdateRights,
    TResult Function()? noRemoveRights,
    TResult Function()? notContainsElement,
    TResult Function()? userIsTheCreatorOfTheTrack,
    TResult Function()? alreadyContainsElement,
    required TResult orElse(),
  }) {
    if (notAddedToFavorites != null) {
      return notAddedToFavorites();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AlreadyAddedInFavourteErrorCategory value)
        alreadyAddedInFavourite,
    required TResult Function(_NoIDErrorCategory value) noID,
    required TResult Function(_NotAddedToFavouritesCategory value)
        notAddedToFavorites,
    required TResult Function(_NotAddedToUserTracksCategory value)
        notAddedToUserTracks,
    required TResult Function(_NoUpdateRightsCategory value) noUpdateRights,
    required TResult Function(_NoRemoveRightsCategory value) noRemoveRights,
    required TResult Function(_NoContainsElementCategory value)
        notContainsElement,
    required TResult Function(_UserTheCreatorOfTheTrackCategory value)
        userIsTheCreatorOfTheTrack,
    required TResult Function(_AlreadyContainsElementCategory value)
        alreadyContainsElement,
  }) {
    return notAddedToFavorites(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AlreadyAddedInFavourteErrorCategory value)?
        alreadyAddedInFavourite,
    TResult? Function(_NoIDErrorCategory value)? noID,
    TResult? Function(_NotAddedToFavouritesCategory value)? notAddedToFavorites,
    TResult? Function(_NotAddedToUserTracksCategory value)?
        notAddedToUserTracks,
    TResult? Function(_NoUpdateRightsCategory value)? noUpdateRights,
    TResult? Function(_NoRemoveRightsCategory value)? noRemoveRights,
    TResult? Function(_NoContainsElementCategory value)? notContainsElement,
    TResult? Function(_UserTheCreatorOfTheTrackCategory value)?
        userIsTheCreatorOfTheTrack,
    TResult? Function(_AlreadyContainsElementCategory value)?
        alreadyContainsElement,
  }) {
    return notAddedToFavorites?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AlreadyAddedInFavourteErrorCategory value)?
        alreadyAddedInFavourite,
    TResult Function(_NoIDErrorCategory value)? noID,
    TResult Function(_NotAddedToFavouritesCategory value)? notAddedToFavorites,
    TResult Function(_NotAddedToUserTracksCategory value)? notAddedToUserTracks,
    TResult Function(_NoUpdateRightsCategory value)? noUpdateRights,
    TResult Function(_NoRemoveRightsCategory value)? noRemoveRights,
    TResult Function(_NoContainsElementCategory value)? notContainsElement,
    TResult Function(_UserTheCreatorOfTheTrackCategory value)?
        userIsTheCreatorOfTheTrack,
    TResult Function(_AlreadyContainsElementCategory value)?
        alreadyContainsElement,
    required TResult orElse(),
  }) {
    if (notAddedToFavorites != null) {
      return notAddedToFavorites(this);
    }
    return orElse();
  }
}

abstract class _NotAddedToFavouritesCategory implements AccessErrorCategory {
  const factory _NotAddedToFavouritesCategory() =
      _$NotAddedToFavouritesCategoryImpl;
}

/// @nodoc
abstract class _$$NotAddedToUserTracksCategoryImplCopyWith<$Res> {
  factory _$$NotAddedToUserTracksCategoryImplCopyWith(
          _$NotAddedToUserTracksCategoryImpl value,
          $Res Function(_$NotAddedToUserTracksCategoryImpl) then) =
      __$$NotAddedToUserTracksCategoryImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NotAddedToUserTracksCategoryImplCopyWithImpl<$Res>
    extends _$AccessErrorCategoryCopyWithImpl<$Res,
        _$NotAddedToUserTracksCategoryImpl>
    implements _$$NotAddedToUserTracksCategoryImplCopyWith<$Res> {
  __$$NotAddedToUserTracksCategoryImplCopyWithImpl(
      _$NotAddedToUserTracksCategoryImpl _value,
      $Res Function(_$NotAddedToUserTracksCategoryImpl) _then)
      : super(_value, _then);

  /// Create a copy of AccessErrorCategory
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$NotAddedToUserTracksCategoryImpl
    with DiagnosticableTreeMixin
    implements _NotAddedToUserTracksCategory {
  const _$NotAddedToUserTracksCategoryImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AccessErrorCategory.notAddedToUserTracks()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty(
        'type', 'AccessErrorCategory.notAddedToUserTracks'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotAddedToUserTracksCategoryImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() alreadyAddedInFavourite,
    required TResult Function() noID,
    required TResult Function() notAddedToFavorites,
    required TResult Function() notAddedToUserTracks,
    required TResult Function() noUpdateRights,
    required TResult Function() noRemoveRights,
    required TResult Function() notContainsElement,
    required TResult Function() userIsTheCreatorOfTheTrack,
    required TResult Function() alreadyContainsElement,
  }) {
    return notAddedToUserTracks();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? alreadyAddedInFavourite,
    TResult? Function()? noID,
    TResult? Function()? notAddedToFavorites,
    TResult? Function()? notAddedToUserTracks,
    TResult? Function()? noUpdateRights,
    TResult? Function()? noRemoveRights,
    TResult? Function()? notContainsElement,
    TResult? Function()? userIsTheCreatorOfTheTrack,
    TResult? Function()? alreadyContainsElement,
  }) {
    return notAddedToUserTracks?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? alreadyAddedInFavourite,
    TResult Function()? noID,
    TResult Function()? notAddedToFavorites,
    TResult Function()? notAddedToUserTracks,
    TResult Function()? noUpdateRights,
    TResult Function()? noRemoveRights,
    TResult Function()? notContainsElement,
    TResult Function()? userIsTheCreatorOfTheTrack,
    TResult Function()? alreadyContainsElement,
    required TResult orElse(),
  }) {
    if (notAddedToUserTracks != null) {
      return notAddedToUserTracks();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AlreadyAddedInFavourteErrorCategory value)
        alreadyAddedInFavourite,
    required TResult Function(_NoIDErrorCategory value) noID,
    required TResult Function(_NotAddedToFavouritesCategory value)
        notAddedToFavorites,
    required TResult Function(_NotAddedToUserTracksCategory value)
        notAddedToUserTracks,
    required TResult Function(_NoUpdateRightsCategory value) noUpdateRights,
    required TResult Function(_NoRemoveRightsCategory value) noRemoveRights,
    required TResult Function(_NoContainsElementCategory value)
        notContainsElement,
    required TResult Function(_UserTheCreatorOfTheTrackCategory value)
        userIsTheCreatorOfTheTrack,
    required TResult Function(_AlreadyContainsElementCategory value)
        alreadyContainsElement,
  }) {
    return notAddedToUserTracks(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AlreadyAddedInFavourteErrorCategory value)?
        alreadyAddedInFavourite,
    TResult? Function(_NoIDErrorCategory value)? noID,
    TResult? Function(_NotAddedToFavouritesCategory value)? notAddedToFavorites,
    TResult? Function(_NotAddedToUserTracksCategory value)?
        notAddedToUserTracks,
    TResult? Function(_NoUpdateRightsCategory value)? noUpdateRights,
    TResult? Function(_NoRemoveRightsCategory value)? noRemoveRights,
    TResult? Function(_NoContainsElementCategory value)? notContainsElement,
    TResult? Function(_UserTheCreatorOfTheTrackCategory value)?
        userIsTheCreatorOfTheTrack,
    TResult? Function(_AlreadyContainsElementCategory value)?
        alreadyContainsElement,
  }) {
    return notAddedToUserTracks?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AlreadyAddedInFavourteErrorCategory value)?
        alreadyAddedInFavourite,
    TResult Function(_NoIDErrorCategory value)? noID,
    TResult Function(_NotAddedToFavouritesCategory value)? notAddedToFavorites,
    TResult Function(_NotAddedToUserTracksCategory value)? notAddedToUserTracks,
    TResult Function(_NoUpdateRightsCategory value)? noUpdateRights,
    TResult Function(_NoRemoveRightsCategory value)? noRemoveRights,
    TResult Function(_NoContainsElementCategory value)? notContainsElement,
    TResult Function(_UserTheCreatorOfTheTrackCategory value)?
        userIsTheCreatorOfTheTrack,
    TResult Function(_AlreadyContainsElementCategory value)?
        alreadyContainsElement,
    required TResult orElse(),
  }) {
    if (notAddedToUserTracks != null) {
      return notAddedToUserTracks(this);
    }
    return orElse();
  }
}

abstract class _NotAddedToUserTracksCategory implements AccessErrorCategory {
  const factory _NotAddedToUserTracksCategory() =
      _$NotAddedToUserTracksCategoryImpl;
}

/// @nodoc
abstract class _$$NoUpdateRightsCategoryImplCopyWith<$Res> {
  factory _$$NoUpdateRightsCategoryImplCopyWith(
          _$NoUpdateRightsCategoryImpl value,
          $Res Function(_$NoUpdateRightsCategoryImpl) then) =
      __$$NoUpdateRightsCategoryImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NoUpdateRightsCategoryImplCopyWithImpl<$Res>
    extends _$AccessErrorCategoryCopyWithImpl<$Res,
        _$NoUpdateRightsCategoryImpl>
    implements _$$NoUpdateRightsCategoryImplCopyWith<$Res> {
  __$$NoUpdateRightsCategoryImplCopyWithImpl(
      _$NoUpdateRightsCategoryImpl _value,
      $Res Function(_$NoUpdateRightsCategoryImpl) _then)
      : super(_value, _then);

  /// Create a copy of AccessErrorCategory
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$NoUpdateRightsCategoryImpl
    with DiagnosticableTreeMixin
    implements _NoUpdateRightsCategory {
  const _$NoUpdateRightsCategoryImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AccessErrorCategory.noUpdateRights()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'AccessErrorCategory.noUpdateRights'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NoUpdateRightsCategoryImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() alreadyAddedInFavourite,
    required TResult Function() noID,
    required TResult Function() notAddedToFavorites,
    required TResult Function() notAddedToUserTracks,
    required TResult Function() noUpdateRights,
    required TResult Function() noRemoveRights,
    required TResult Function() notContainsElement,
    required TResult Function() userIsTheCreatorOfTheTrack,
    required TResult Function() alreadyContainsElement,
  }) {
    return noUpdateRights();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? alreadyAddedInFavourite,
    TResult? Function()? noID,
    TResult? Function()? notAddedToFavorites,
    TResult? Function()? notAddedToUserTracks,
    TResult? Function()? noUpdateRights,
    TResult? Function()? noRemoveRights,
    TResult? Function()? notContainsElement,
    TResult? Function()? userIsTheCreatorOfTheTrack,
    TResult? Function()? alreadyContainsElement,
  }) {
    return noUpdateRights?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? alreadyAddedInFavourite,
    TResult Function()? noID,
    TResult Function()? notAddedToFavorites,
    TResult Function()? notAddedToUserTracks,
    TResult Function()? noUpdateRights,
    TResult Function()? noRemoveRights,
    TResult Function()? notContainsElement,
    TResult Function()? userIsTheCreatorOfTheTrack,
    TResult Function()? alreadyContainsElement,
    required TResult orElse(),
  }) {
    if (noUpdateRights != null) {
      return noUpdateRights();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AlreadyAddedInFavourteErrorCategory value)
        alreadyAddedInFavourite,
    required TResult Function(_NoIDErrorCategory value) noID,
    required TResult Function(_NotAddedToFavouritesCategory value)
        notAddedToFavorites,
    required TResult Function(_NotAddedToUserTracksCategory value)
        notAddedToUserTracks,
    required TResult Function(_NoUpdateRightsCategory value) noUpdateRights,
    required TResult Function(_NoRemoveRightsCategory value) noRemoveRights,
    required TResult Function(_NoContainsElementCategory value)
        notContainsElement,
    required TResult Function(_UserTheCreatorOfTheTrackCategory value)
        userIsTheCreatorOfTheTrack,
    required TResult Function(_AlreadyContainsElementCategory value)
        alreadyContainsElement,
  }) {
    return noUpdateRights(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AlreadyAddedInFavourteErrorCategory value)?
        alreadyAddedInFavourite,
    TResult? Function(_NoIDErrorCategory value)? noID,
    TResult? Function(_NotAddedToFavouritesCategory value)? notAddedToFavorites,
    TResult? Function(_NotAddedToUserTracksCategory value)?
        notAddedToUserTracks,
    TResult? Function(_NoUpdateRightsCategory value)? noUpdateRights,
    TResult? Function(_NoRemoveRightsCategory value)? noRemoveRights,
    TResult? Function(_NoContainsElementCategory value)? notContainsElement,
    TResult? Function(_UserTheCreatorOfTheTrackCategory value)?
        userIsTheCreatorOfTheTrack,
    TResult? Function(_AlreadyContainsElementCategory value)?
        alreadyContainsElement,
  }) {
    return noUpdateRights?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AlreadyAddedInFavourteErrorCategory value)?
        alreadyAddedInFavourite,
    TResult Function(_NoIDErrorCategory value)? noID,
    TResult Function(_NotAddedToFavouritesCategory value)? notAddedToFavorites,
    TResult Function(_NotAddedToUserTracksCategory value)? notAddedToUserTracks,
    TResult Function(_NoUpdateRightsCategory value)? noUpdateRights,
    TResult Function(_NoRemoveRightsCategory value)? noRemoveRights,
    TResult Function(_NoContainsElementCategory value)? notContainsElement,
    TResult Function(_UserTheCreatorOfTheTrackCategory value)?
        userIsTheCreatorOfTheTrack,
    TResult Function(_AlreadyContainsElementCategory value)?
        alreadyContainsElement,
    required TResult orElse(),
  }) {
    if (noUpdateRights != null) {
      return noUpdateRights(this);
    }
    return orElse();
  }
}

abstract class _NoUpdateRightsCategory implements AccessErrorCategory {
  const factory _NoUpdateRightsCategory() = _$NoUpdateRightsCategoryImpl;
}

/// @nodoc
abstract class _$$NoRemoveRightsCategoryImplCopyWith<$Res> {
  factory _$$NoRemoveRightsCategoryImplCopyWith(
          _$NoRemoveRightsCategoryImpl value,
          $Res Function(_$NoRemoveRightsCategoryImpl) then) =
      __$$NoRemoveRightsCategoryImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NoRemoveRightsCategoryImplCopyWithImpl<$Res>
    extends _$AccessErrorCategoryCopyWithImpl<$Res,
        _$NoRemoveRightsCategoryImpl>
    implements _$$NoRemoveRightsCategoryImplCopyWith<$Res> {
  __$$NoRemoveRightsCategoryImplCopyWithImpl(
      _$NoRemoveRightsCategoryImpl _value,
      $Res Function(_$NoRemoveRightsCategoryImpl) _then)
      : super(_value, _then);

  /// Create a copy of AccessErrorCategory
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$NoRemoveRightsCategoryImpl
    with DiagnosticableTreeMixin
    implements _NoRemoveRightsCategory {
  const _$NoRemoveRightsCategoryImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AccessErrorCategory.noRemoveRights()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'AccessErrorCategory.noRemoveRights'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NoRemoveRightsCategoryImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() alreadyAddedInFavourite,
    required TResult Function() noID,
    required TResult Function() notAddedToFavorites,
    required TResult Function() notAddedToUserTracks,
    required TResult Function() noUpdateRights,
    required TResult Function() noRemoveRights,
    required TResult Function() notContainsElement,
    required TResult Function() userIsTheCreatorOfTheTrack,
    required TResult Function() alreadyContainsElement,
  }) {
    return noRemoveRights();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? alreadyAddedInFavourite,
    TResult? Function()? noID,
    TResult? Function()? notAddedToFavorites,
    TResult? Function()? notAddedToUserTracks,
    TResult? Function()? noUpdateRights,
    TResult? Function()? noRemoveRights,
    TResult? Function()? notContainsElement,
    TResult? Function()? userIsTheCreatorOfTheTrack,
    TResult? Function()? alreadyContainsElement,
  }) {
    return noRemoveRights?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? alreadyAddedInFavourite,
    TResult Function()? noID,
    TResult Function()? notAddedToFavorites,
    TResult Function()? notAddedToUserTracks,
    TResult Function()? noUpdateRights,
    TResult Function()? noRemoveRights,
    TResult Function()? notContainsElement,
    TResult Function()? userIsTheCreatorOfTheTrack,
    TResult Function()? alreadyContainsElement,
    required TResult orElse(),
  }) {
    if (noRemoveRights != null) {
      return noRemoveRights();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AlreadyAddedInFavourteErrorCategory value)
        alreadyAddedInFavourite,
    required TResult Function(_NoIDErrorCategory value) noID,
    required TResult Function(_NotAddedToFavouritesCategory value)
        notAddedToFavorites,
    required TResult Function(_NotAddedToUserTracksCategory value)
        notAddedToUserTracks,
    required TResult Function(_NoUpdateRightsCategory value) noUpdateRights,
    required TResult Function(_NoRemoveRightsCategory value) noRemoveRights,
    required TResult Function(_NoContainsElementCategory value)
        notContainsElement,
    required TResult Function(_UserTheCreatorOfTheTrackCategory value)
        userIsTheCreatorOfTheTrack,
    required TResult Function(_AlreadyContainsElementCategory value)
        alreadyContainsElement,
  }) {
    return noRemoveRights(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AlreadyAddedInFavourteErrorCategory value)?
        alreadyAddedInFavourite,
    TResult? Function(_NoIDErrorCategory value)? noID,
    TResult? Function(_NotAddedToFavouritesCategory value)? notAddedToFavorites,
    TResult? Function(_NotAddedToUserTracksCategory value)?
        notAddedToUserTracks,
    TResult? Function(_NoUpdateRightsCategory value)? noUpdateRights,
    TResult? Function(_NoRemoveRightsCategory value)? noRemoveRights,
    TResult? Function(_NoContainsElementCategory value)? notContainsElement,
    TResult? Function(_UserTheCreatorOfTheTrackCategory value)?
        userIsTheCreatorOfTheTrack,
    TResult? Function(_AlreadyContainsElementCategory value)?
        alreadyContainsElement,
  }) {
    return noRemoveRights?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AlreadyAddedInFavourteErrorCategory value)?
        alreadyAddedInFavourite,
    TResult Function(_NoIDErrorCategory value)? noID,
    TResult Function(_NotAddedToFavouritesCategory value)? notAddedToFavorites,
    TResult Function(_NotAddedToUserTracksCategory value)? notAddedToUserTracks,
    TResult Function(_NoUpdateRightsCategory value)? noUpdateRights,
    TResult Function(_NoRemoveRightsCategory value)? noRemoveRights,
    TResult Function(_NoContainsElementCategory value)? notContainsElement,
    TResult Function(_UserTheCreatorOfTheTrackCategory value)?
        userIsTheCreatorOfTheTrack,
    TResult Function(_AlreadyContainsElementCategory value)?
        alreadyContainsElement,
    required TResult orElse(),
  }) {
    if (noRemoveRights != null) {
      return noRemoveRights(this);
    }
    return orElse();
  }
}

abstract class _NoRemoveRightsCategory implements AccessErrorCategory {
  const factory _NoRemoveRightsCategory() = _$NoRemoveRightsCategoryImpl;
}

/// @nodoc
abstract class _$$NoContainsElementCategoryImplCopyWith<$Res> {
  factory _$$NoContainsElementCategoryImplCopyWith(
          _$NoContainsElementCategoryImpl value,
          $Res Function(_$NoContainsElementCategoryImpl) then) =
      __$$NoContainsElementCategoryImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NoContainsElementCategoryImplCopyWithImpl<$Res>
    extends _$AccessErrorCategoryCopyWithImpl<$Res,
        _$NoContainsElementCategoryImpl>
    implements _$$NoContainsElementCategoryImplCopyWith<$Res> {
  __$$NoContainsElementCategoryImplCopyWithImpl(
      _$NoContainsElementCategoryImpl _value,
      $Res Function(_$NoContainsElementCategoryImpl) _then)
      : super(_value, _then);

  /// Create a copy of AccessErrorCategory
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$NoContainsElementCategoryImpl
    with DiagnosticableTreeMixin
    implements _NoContainsElementCategory {
  const _$NoContainsElementCategoryImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AccessErrorCategory.notContainsElement()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(
        DiagnosticsProperty('type', 'AccessErrorCategory.notContainsElement'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NoContainsElementCategoryImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() alreadyAddedInFavourite,
    required TResult Function() noID,
    required TResult Function() notAddedToFavorites,
    required TResult Function() notAddedToUserTracks,
    required TResult Function() noUpdateRights,
    required TResult Function() noRemoveRights,
    required TResult Function() notContainsElement,
    required TResult Function() userIsTheCreatorOfTheTrack,
    required TResult Function() alreadyContainsElement,
  }) {
    return notContainsElement();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? alreadyAddedInFavourite,
    TResult? Function()? noID,
    TResult? Function()? notAddedToFavorites,
    TResult? Function()? notAddedToUserTracks,
    TResult? Function()? noUpdateRights,
    TResult? Function()? noRemoveRights,
    TResult? Function()? notContainsElement,
    TResult? Function()? userIsTheCreatorOfTheTrack,
    TResult? Function()? alreadyContainsElement,
  }) {
    return notContainsElement?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? alreadyAddedInFavourite,
    TResult Function()? noID,
    TResult Function()? notAddedToFavorites,
    TResult Function()? notAddedToUserTracks,
    TResult Function()? noUpdateRights,
    TResult Function()? noRemoveRights,
    TResult Function()? notContainsElement,
    TResult Function()? userIsTheCreatorOfTheTrack,
    TResult Function()? alreadyContainsElement,
    required TResult orElse(),
  }) {
    if (notContainsElement != null) {
      return notContainsElement();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AlreadyAddedInFavourteErrorCategory value)
        alreadyAddedInFavourite,
    required TResult Function(_NoIDErrorCategory value) noID,
    required TResult Function(_NotAddedToFavouritesCategory value)
        notAddedToFavorites,
    required TResult Function(_NotAddedToUserTracksCategory value)
        notAddedToUserTracks,
    required TResult Function(_NoUpdateRightsCategory value) noUpdateRights,
    required TResult Function(_NoRemoveRightsCategory value) noRemoveRights,
    required TResult Function(_NoContainsElementCategory value)
        notContainsElement,
    required TResult Function(_UserTheCreatorOfTheTrackCategory value)
        userIsTheCreatorOfTheTrack,
    required TResult Function(_AlreadyContainsElementCategory value)
        alreadyContainsElement,
  }) {
    return notContainsElement(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AlreadyAddedInFavourteErrorCategory value)?
        alreadyAddedInFavourite,
    TResult? Function(_NoIDErrorCategory value)? noID,
    TResult? Function(_NotAddedToFavouritesCategory value)? notAddedToFavorites,
    TResult? Function(_NotAddedToUserTracksCategory value)?
        notAddedToUserTracks,
    TResult? Function(_NoUpdateRightsCategory value)? noUpdateRights,
    TResult? Function(_NoRemoveRightsCategory value)? noRemoveRights,
    TResult? Function(_NoContainsElementCategory value)? notContainsElement,
    TResult? Function(_UserTheCreatorOfTheTrackCategory value)?
        userIsTheCreatorOfTheTrack,
    TResult? Function(_AlreadyContainsElementCategory value)?
        alreadyContainsElement,
  }) {
    return notContainsElement?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AlreadyAddedInFavourteErrorCategory value)?
        alreadyAddedInFavourite,
    TResult Function(_NoIDErrorCategory value)? noID,
    TResult Function(_NotAddedToFavouritesCategory value)? notAddedToFavorites,
    TResult Function(_NotAddedToUserTracksCategory value)? notAddedToUserTracks,
    TResult Function(_NoUpdateRightsCategory value)? noUpdateRights,
    TResult Function(_NoRemoveRightsCategory value)? noRemoveRights,
    TResult Function(_NoContainsElementCategory value)? notContainsElement,
    TResult Function(_UserTheCreatorOfTheTrackCategory value)?
        userIsTheCreatorOfTheTrack,
    TResult Function(_AlreadyContainsElementCategory value)?
        alreadyContainsElement,
    required TResult orElse(),
  }) {
    if (notContainsElement != null) {
      return notContainsElement(this);
    }
    return orElse();
  }
}

abstract class _NoContainsElementCategory implements AccessErrorCategory {
  const factory _NoContainsElementCategory() = _$NoContainsElementCategoryImpl;
}

/// @nodoc
abstract class _$$UserTheCreatorOfTheTrackCategoryImplCopyWith<$Res> {
  factory _$$UserTheCreatorOfTheTrackCategoryImplCopyWith(
          _$UserTheCreatorOfTheTrackCategoryImpl value,
          $Res Function(_$UserTheCreatorOfTheTrackCategoryImpl) then) =
      __$$UserTheCreatorOfTheTrackCategoryImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UserTheCreatorOfTheTrackCategoryImplCopyWithImpl<$Res>
    extends _$AccessErrorCategoryCopyWithImpl<$Res,
        _$UserTheCreatorOfTheTrackCategoryImpl>
    implements _$$UserTheCreatorOfTheTrackCategoryImplCopyWith<$Res> {
  __$$UserTheCreatorOfTheTrackCategoryImplCopyWithImpl(
      _$UserTheCreatorOfTheTrackCategoryImpl _value,
      $Res Function(_$UserTheCreatorOfTheTrackCategoryImpl) _then)
      : super(_value, _then);

  /// Create a copy of AccessErrorCategory
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$UserTheCreatorOfTheTrackCategoryImpl
    with DiagnosticableTreeMixin
    implements _UserTheCreatorOfTheTrackCategory {
  const _$UserTheCreatorOfTheTrackCategoryImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AccessErrorCategory.userIsTheCreatorOfTheTrack()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty(
        'type', 'AccessErrorCategory.userIsTheCreatorOfTheTrack'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserTheCreatorOfTheTrackCategoryImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() alreadyAddedInFavourite,
    required TResult Function() noID,
    required TResult Function() notAddedToFavorites,
    required TResult Function() notAddedToUserTracks,
    required TResult Function() noUpdateRights,
    required TResult Function() noRemoveRights,
    required TResult Function() notContainsElement,
    required TResult Function() userIsTheCreatorOfTheTrack,
    required TResult Function() alreadyContainsElement,
  }) {
    return userIsTheCreatorOfTheTrack();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? alreadyAddedInFavourite,
    TResult? Function()? noID,
    TResult? Function()? notAddedToFavorites,
    TResult? Function()? notAddedToUserTracks,
    TResult? Function()? noUpdateRights,
    TResult? Function()? noRemoveRights,
    TResult? Function()? notContainsElement,
    TResult? Function()? userIsTheCreatorOfTheTrack,
    TResult? Function()? alreadyContainsElement,
  }) {
    return userIsTheCreatorOfTheTrack?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? alreadyAddedInFavourite,
    TResult Function()? noID,
    TResult Function()? notAddedToFavorites,
    TResult Function()? notAddedToUserTracks,
    TResult Function()? noUpdateRights,
    TResult Function()? noRemoveRights,
    TResult Function()? notContainsElement,
    TResult Function()? userIsTheCreatorOfTheTrack,
    TResult Function()? alreadyContainsElement,
    required TResult orElse(),
  }) {
    if (userIsTheCreatorOfTheTrack != null) {
      return userIsTheCreatorOfTheTrack();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AlreadyAddedInFavourteErrorCategory value)
        alreadyAddedInFavourite,
    required TResult Function(_NoIDErrorCategory value) noID,
    required TResult Function(_NotAddedToFavouritesCategory value)
        notAddedToFavorites,
    required TResult Function(_NotAddedToUserTracksCategory value)
        notAddedToUserTracks,
    required TResult Function(_NoUpdateRightsCategory value) noUpdateRights,
    required TResult Function(_NoRemoveRightsCategory value) noRemoveRights,
    required TResult Function(_NoContainsElementCategory value)
        notContainsElement,
    required TResult Function(_UserTheCreatorOfTheTrackCategory value)
        userIsTheCreatorOfTheTrack,
    required TResult Function(_AlreadyContainsElementCategory value)
        alreadyContainsElement,
  }) {
    return userIsTheCreatorOfTheTrack(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AlreadyAddedInFavourteErrorCategory value)?
        alreadyAddedInFavourite,
    TResult? Function(_NoIDErrorCategory value)? noID,
    TResult? Function(_NotAddedToFavouritesCategory value)? notAddedToFavorites,
    TResult? Function(_NotAddedToUserTracksCategory value)?
        notAddedToUserTracks,
    TResult? Function(_NoUpdateRightsCategory value)? noUpdateRights,
    TResult? Function(_NoRemoveRightsCategory value)? noRemoveRights,
    TResult? Function(_NoContainsElementCategory value)? notContainsElement,
    TResult? Function(_UserTheCreatorOfTheTrackCategory value)?
        userIsTheCreatorOfTheTrack,
    TResult? Function(_AlreadyContainsElementCategory value)?
        alreadyContainsElement,
  }) {
    return userIsTheCreatorOfTheTrack?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AlreadyAddedInFavourteErrorCategory value)?
        alreadyAddedInFavourite,
    TResult Function(_NoIDErrorCategory value)? noID,
    TResult Function(_NotAddedToFavouritesCategory value)? notAddedToFavorites,
    TResult Function(_NotAddedToUserTracksCategory value)? notAddedToUserTracks,
    TResult Function(_NoUpdateRightsCategory value)? noUpdateRights,
    TResult Function(_NoRemoveRightsCategory value)? noRemoveRights,
    TResult Function(_NoContainsElementCategory value)? notContainsElement,
    TResult Function(_UserTheCreatorOfTheTrackCategory value)?
        userIsTheCreatorOfTheTrack,
    TResult Function(_AlreadyContainsElementCategory value)?
        alreadyContainsElement,
    required TResult orElse(),
  }) {
    if (userIsTheCreatorOfTheTrack != null) {
      return userIsTheCreatorOfTheTrack(this);
    }
    return orElse();
  }
}

abstract class _UserTheCreatorOfTheTrackCategory
    implements AccessErrorCategory {
  const factory _UserTheCreatorOfTheTrackCategory() =
      _$UserTheCreatorOfTheTrackCategoryImpl;
}

/// @nodoc
abstract class _$$AlreadyContainsElementCategoryImplCopyWith<$Res> {
  factory _$$AlreadyContainsElementCategoryImplCopyWith(
          _$AlreadyContainsElementCategoryImpl value,
          $Res Function(_$AlreadyContainsElementCategoryImpl) then) =
      __$$AlreadyContainsElementCategoryImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AlreadyContainsElementCategoryImplCopyWithImpl<$Res>
    extends _$AccessErrorCategoryCopyWithImpl<$Res,
        _$AlreadyContainsElementCategoryImpl>
    implements _$$AlreadyContainsElementCategoryImplCopyWith<$Res> {
  __$$AlreadyContainsElementCategoryImplCopyWithImpl(
      _$AlreadyContainsElementCategoryImpl _value,
      $Res Function(_$AlreadyContainsElementCategoryImpl) _then)
      : super(_value, _then);

  /// Create a copy of AccessErrorCategory
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AlreadyContainsElementCategoryImpl
    with DiagnosticableTreeMixin
    implements _AlreadyContainsElementCategory {
  const _$AlreadyContainsElementCategoryImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AccessErrorCategory.alreadyContainsElement()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty(
        'type', 'AccessErrorCategory.alreadyContainsElement'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AlreadyContainsElementCategoryImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() alreadyAddedInFavourite,
    required TResult Function() noID,
    required TResult Function() notAddedToFavorites,
    required TResult Function() notAddedToUserTracks,
    required TResult Function() noUpdateRights,
    required TResult Function() noRemoveRights,
    required TResult Function() notContainsElement,
    required TResult Function() userIsTheCreatorOfTheTrack,
    required TResult Function() alreadyContainsElement,
  }) {
    return alreadyContainsElement();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? alreadyAddedInFavourite,
    TResult? Function()? noID,
    TResult? Function()? notAddedToFavorites,
    TResult? Function()? notAddedToUserTracks,
    TResult? Function()? noUpdateRights,
    TResult? Function()? noRemoveRights,
    TResult? Function()? notContainsElement,
    TResult? Function()? userIsTheCreatorOfTheTrack,
    TResult? Function()? alreadyContainsElement,
  }) {
    return alreadyContainsElement?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? alreadyAddedInFavourite,
    TResult Function()? noID,
    TResult Function()? notAddedToFavorites,
    TResult Function()? notAddedToUserTracks,
    TResult Function()? noUpdateRights,
    TResult Function()? noRemoveRights,
    TResult Function()? notContainsElement,
    TResult Function()? userIsTheCreatorOfTheTrack,
    TResult Function()? alreadyContainsElement,
    required TResult orElse(),
  }) {
    if (alreadyContainsElement != null) {
      return alreadyContainsElement();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AlreadyAddedInFavourteErrorCategory value)
        alreadyAddedInFavourite,
    required TResult Function(_NoIDErrorCategory value) noID,
    required TResult Function(_NotAddedToFavouritesCategory value)
        notAddedToFavorites,
    required TResult Function(_NotAddedToUserTracksCategory value)
        notAddedToUserTracks,
    required TResult Function(_NoUpdateRightsCategory value) noUpdateRights,
    required TResult Function(_NoRemoveRightsCategory value) noRemoveRights,
    required TResult Function(_NoContainsElementCategory value)
        notContainsElement,
    required TResult Function(_UserTheCreatorOfTheTrackCategory value)
        userIsTheCreatorOfTheTrack,
    required TResult Function(_AlreadyContainsElementCategory value)
        alreadyContainsElement,
  }) {
    return alreadyContainsElement(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AlreadyAddedInFavourteErrorCategory value)?
        alreadyAddedInFavourite,
    TResult? Function(_NoIDErrorCategory value)? noID,
    TResult? Function(_NotAddedToFavouritesCategory value)? notAddedToFavorites,
    TResult? Function(_NotAddedToUserTracksCategory value)?
        notAddedToUserTracks,
    TResult? Function(_NoUpdateRightsCategory value)? noUpdateRights,
    TResult? Function(_NoRemoveRightsCategory value)? noRemoveRights,
    TResult? Function(_NoContainsElementCategory value)? notContainsElement,
    TResult? Function(_UserTheCreatorOfTheTrackCategory value)?
        userIsTheCreatorOfTheTrack,
    TResult? Function(_AlreadyContainsElementCategory value)?
        alreadyContainsElement,
  }) {
    return alreadyContainsElement?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AlreadyAddedInFavourteErrorCategory value)?
        alreadyAddedInFavourite,
    TResult Function(_NoIDErrorCategory value)? noID,
    TResult Function(_NotAddedToFavouritesCategory value)? notAddedToFavorites,
    TResult Function(_NotAddedToUserTracksCategory value)? notAddedToUserTracks,
    TResult Function(_NoUpdateRightsCategory value)? noUpdateRights,
    TResult Function(_NoRemoveRightsCategory value)? noRemoveRights,
    TResult Function(_NoContainsElementCategory value)? notContainsElement,
    TResult Function(_UserTheCreatorOfTheTrackCategory value)?
        userIsTheCreatorOfTheTrack,
    TResult Function(_AlreadyContainsElementCategory value)?
        alreadyContainsElement,
    required TResult orElse(),
  }) {
    if (alreadyContainsElement != null) {
      return alreadyContainsElement(this);
    }
    return orElse();
  }
}

abstract class _AlreadyContainsElementCategory implements AccessErrorCategory {
  const factory _AlreadyContainsElementCategory() =
      _$AlreadyContainsElementCategoryImpl;
}
