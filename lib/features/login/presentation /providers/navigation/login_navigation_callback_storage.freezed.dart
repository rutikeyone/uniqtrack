// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_navigation_callback_storage.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LoginNavigationCallbackStorage {
  VoidCallback get navigateToRegister => throw _privateConstructorUsedError;

  /// Create a copy of LoginNavigationCallbackStorage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LoginNavigationCallbackStorageCopyWith<LoginNavigationCallbackStorage>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginNavigationCallbackStorageCopyWith<$Res> {
  factory $LoginNavigationCallbackStorageCopyWith(
          LoginNavigationCallbackStorage value,
          $Res Function(LoginNavigationCallbackStorage) then) =
      _$LoginNavigationCallbackStorageCopyWithImpl<$Res,
          LoginNavigationCallbackStorage>;
  @useResult
  $Res call({VoidCallback navigateToRegister});
}

/// @nodoc
class _$LoginNavigationCallbackStorageCopyWithImpl<$Res,
        $Val extends LoginNavigationCallbackStorage>
    implements $LoginNavigationCallbackStorageCopyWith<$Res> {
  _$LoginNavigationCallbackStorageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LoginNavigationCallbackStorage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? navigateToRegister = null,
  }) {
    return _then(_value.copyWith(
      navigateToRegister: null == navigateToRegister
          ? _value.navigateToRegister
          : navigateToRegister // ignore: cast_nullable_to_non_nullable
              as VoidCallback,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoginNavigationCallbackStorageImplCopyWith<$Res>
    implements $LoginNavigationCallbackStorageCopyWith<$Res> {
  factory _$$LoginNavigationCallbackStorageImplCopyWith(
          _$LoginNavigationCallbackStorageImpl value,
          $Res Function(_$LoginNavigationCallbackStorageImpl) then) =
      __$$LoginNavigationCallbackStorageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({VoidCallback navigateToRegister});
}

/// @nodoc
class __$$LoginNavigationCallbackStorageImplCopyWithImpl<$Res>
    extends _$LoginNavigationCallbackStorageCopyWithImpl<$Res,
        _$LoginNavigationCallbackStorageImpl>
    implements _$$LoginNavigationCallbackStorageImplCopyWith<$Res> {
  __$$LoginNavigationCallbackStorageImplCopyWithImpl(
      _$LoginNavigationCallbackStorageImpl _value,
      $Res Function(_$LoginNavigationCallbackStorageImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginNavigationCallbackStorage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? navigateToRegister = null,
  }) {
    return _then(_$LoginNavigationCallbackStorageImpl(
      navigateToRegister: null == navigateToRegister
          ? _value.navigateToRegister
          : navigateToRegister // ignore: cast_nullable_to_non_nullable
              as VoidCallback,
    ));
  }
}

/// @nodoc

class _$LoginNavigationCallbackStorageImpl
    implements _LoginNavigationCallbackStorage {
  const _$LoginNavigationCallbackStorageImpl(
      {required this.navigateToRegister});

  @override
  final VoidCallback navigateToRegister;

  @override
  String toString() {
    return 'LoginNavigationCallbackStorage(navigateToRegister: $navigateToRegister)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginNavigationCallbackStorageImpl &&
            (identical(other.navigateToRegister, navigateToRegister) ||
                other.navigateToRegister == navigateToRegister));
  }

  @override
  int get hashCode => Object.hash(runtimeType, navigateToRegister);

  /// Create a copy of LoginNavigationCallbackStorage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginNavigationCallbackStorageImplCopyWith<
          _$LoginNavigationCallbackStorageImpl>
      get copyWith => __$$LoginNavigationCallbackStorageImplCopyWithImpl<
          _$LoginNavigationCallbackStorageImpl>(this, _$identity);
}

abstract class _LoginNavigationCallbackStorage
    implements LoginNavigationCallbackStorage {
  const factory _LoginNavigationCallbackStorage(
          {required final VoidCallback navigateToRegister}) =
      _$LoginNavigationCallbackStorageImpl;

  @override
  VoidCallback get navigateToRegister;

  /// Create a copy of LoginNavigationCallbackStorage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoginNavigationCallbackStorageImplCopyWith<
          _$LoginNavigationCallbackStorageImpl>
      get copyWith => throw _privateConstructorUsedError;
}
