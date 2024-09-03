// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_nav_callback_store.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LoginNavCallbackStore {
  VoidCallback get navigateToRegister => throw _privateConstructorUsedError;

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
  $Res call({VoidCallback navigateToRegister});
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
abstract class _$$LoginNavCallbackStoreImplCopyWith<$Res>
    implements $LoginNavCallbackStoreCopyWith<$Res> {
  factory _$$LoginNavCallbackStoreImplCopyWith(
          _$LoginNavCallbackStoreImpl value,
          $Res Function(_$LoginNavCallbackStoreImpl) then) =
      __$$LoginNavCallbackStoreImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({VoidCallback navigateToRegister});
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
  }) {
    return _then(_$LoginNavCallbackStoreImpl(
      navigateToRegister: null == navigateToRegister
          ? _value.navigateToRegister
          : navigateToRegister // ignore: cast_nullable_to_non_nullable
              as VoidCallback,
    ));
  }
}

/// @nodoc

class _$LoginNavCallbackStoreImpl implements _LoginNavCallbackStore {
  const _$LoginNavCallbackStoreImpl({required this.navigateToRegister});

  @override
  final VoidCallback navigateToRegister;

  @override
  String toString() {
    return 'LoginNavCallbackStore(navigateToRegister: $navigateToRegister)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginNavCallbackStoreImpl &&
            (identical(other.navigateToRegister, navigateToRegister) ||
                other.navigateToRegister == navigateToRegister));
  }

  @override
  int get hashCode => Object.hash(runtimeType, navigateToRegister);

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
          {required final VoidCallback navigateToRegister}) =
      _$LoginNavCallbackStoreImpl;

  @override
  VoidCallback get navigateToRegister;

  /// Create a copy of LoginNavCallbackStore
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoginNavCallbackStoreImplCopyWith<_$LoginNavCallbackStoreImpl>
      get copyWith => throw _privateConstructorUsedError;
}
