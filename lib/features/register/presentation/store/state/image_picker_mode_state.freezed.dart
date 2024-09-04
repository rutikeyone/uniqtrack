// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'image_picker_mode_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ImagePickerModeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GenderState genderState) placeholder,
    required TResult Function() photo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GenderState genderState)? placeholder,
    TResult? Function()? photo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GenderState genderState)? placeholder,
    TResult Function()? photo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ImagePickerPlaceholderModeState value)
        placeholder,
    required TResult Function(_ImagePickerPhotoModeState value) photo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ImagePickerPlaceholderModeState value)? placeholder,
    TResult? Function(_ImagePickerPhotoModeState value)? photo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ImagePickerPlaceholderModeState value)? placeholder,
    TResult Function(_ImagePickerPhotoModeState value)? photo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImagePickerModeStateCopyWith<$Res> {
  factory $ImagePickerModeStateCopyWith(ImagePickerModeState value,
          $Res Function(ImagePickerModeState) then) =
      _$ImagePickerModeStateCopyWithImpl<$Res, ImagePickerModeState>;
}

/// @nodoc
class _$ImagePickerModeStateCopyWithImpl<$Res,
        $Val extends ImagePickerModeState>
    implements $ImagePickerModeStateCopyWith<$Res> {
  _$ImagePickerModeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ImagePickerModeState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ImagePickerPlaceholderModeStateImplCopyWith<$Res> {
  factory _$$ImagePickerPlaceholderModeStateImplCopyWith(
          _$ImagePickerPlaceholderModeStateImpl value,
          $Res Function(_$ImagePickerPlaceholderModeStateImpl) then) =
      __$$ImagePickerPlaceholderModeStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({GenderState genderState});

  $GenderStateCopyWith<$Res> get genderState;
}

/// @nodoc
class __$$ImagePickerPlaceholderModeStateImplCopyWithImpl<$Res>
    extends _$ImagePickerModeStateCopyWithImpl<$Res,
        _$ImagePickerPlaceholderModeStateImpl>
    implements _$$ImagePickerPlaceholderModeStateImplCopyWith<$Res> {
  __$$ImagePickerPlaceholderModeStateImplCopyWithImpl(
      _$ImagePickerPlaceholderModeStateImpl _value,
      $Res Function(_$ImagePickerPlaceholderModeStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ImagePickerModeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? genderState = null,
  }) {
    return _then(_$ImagePickerPlaceholderModeStateImpl(
      genderState: null == genderState
          ? _value.genderState
          : genderState // ignore: cast_nullable_to_non_nullable
              as GenderState,
    ));
  }

  /// Create a copy of ImagePickerModeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GenderStateCopyWith<$Res> get genderState {
    return $GenderStateCopyWith<$Res>(_value.genderState, (value) {
      return _then(_value.copyWith(genderState: value));
    });
  }
}

/// @nodoc

class _$ImagePickerPlaceholderModeStateImpl
    implements _ImagePickerPlaceholderModeState {
  const _$ImagePickerPlaceholderModeStateImpl(
      {this.genderState = const GenderState.male()});

  @override
  @JsonKey()
  final GenderState genderState;

  @override
  String toString() {
    return 'ImagePickerModeState.placeholder(genderState: $genderState)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImagePickerPlaceholderModeStateImpl &&
            (identical(other.genderState, genderState) ||
                other.genderState == genderState));
  }

  @override
  int get hashCode => Object.hash(runtimeType, genderState);

  /// Create a copy of ImagePickerModeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ImagePickerPlaceholderModeStateImplCopyWith<
          _$ImagePickerPlaceholderModeStateImpl>
      get copyWith => __$$ImagePickerPlaceholderModeStateImplCopyWithImpl<
          _$ImagePickerPlaceholderModeStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GenderState genderState) placeholder,
    required TResult Function() photo,
  }) {
    return placeholder(genderState);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GenderState genderState)? placeholder,
    TResult? Function()? photo,
  }) {
    return placeholder?.call(genderState);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GenderState genderState)? placeholder,
    TResult Function()? photo,
    required TResult orElse(),
  }) {
    if (placeholder != null) {
      return placeholder(genderState);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ImagePickerPlaceholderModeState value)
        placeholder,
    required TResult Function(_ImagePickerPhotoModeState value) photo,
  }) {
    return placeholder(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ImagePickerPlaceholderModeState value)? placeholder,
    TResult? Function(_ImagePickerPhotoModeState value)? photo,
  }) {
    return placeholder?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ImagePickerPlaceholderModeState value)? placeholder,
    TResult Function(_ImagePickerPhotoModeState value)? photo,
    required TResult orElse(),
  }) {
    if (placeholder != null) {
      return placeholder(this);
    }
    return orElse();
  }
}

abstract class _ImagePickerPlaceholderModeState
    implements ImagePickerModeState {
  const factory _ImagePickerPlaceholderModeState(
      {final GenderState genderState}) = _$ImagePickerPlaceholderModeStateImpl;

  GenderState get genderState;

  /// Create a copy of ImagePickerModeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ImagePickerPlaceholderModeStateImplCopyWith<
          _$ImagePickerPlaceholderModeStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ImagePickerPhotoModeStateImplCopyWith<$Res> {
  factory _$$ImagePickerPhotoModeStateImplCopyWith(
          _$ImagePickerPhotoModeStateImpl value,
          $Res Function(_$ImagePickerPhotoModeStateImpl) then) =
      __$$ImagePickerPhotoModeStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ImagePickerPhotoModeStateImplCopyWithImpl<$Res>
    extends _$ImagePickerModeStateCopyWithImpl<$Res,
        _$ImagePickerPhotoModeStateImpl>
    implements _$$ImagePickerPhotoModeStateImplCopyWith<$Res> {
  __$$ImagePickerPhotoModeStateImplCopyWithImpl(
      _$ImagePickerPhotoModeStateImpl _value,
      $Res Function(_$ImagePickerPhotoModeStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ImagePickerModeState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ImagePickerPhotoModeStateImpl implements _ImagePickerPhotoModeState {
  const _$ImagePickerPhotoModeStateImpl();

  @override
  String toString() {
    return 'ImagePickerModeState.photo()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImagePickerPhotoModeStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GenderState genderState) placeholder,
    required TResult Function() photo,
  }) {
    return photo();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GenderState genderState)? placeholder,
    TResult? Function()? photo,
  }) {
    return photo?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GenderState genderState)? placeholder,
    TResult Function()? photo,
    required TResult orElse(),
  }) {
    if (photo != null) {
      return photo();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ImagePickerPlaceholderModeState value)
        placeholder,
    required TResult Function(_ImagePickerPhotoModeState value) photo,
  }) {
    return photo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ImagePickerPlaceholderModeState value)? placeholder,
    TResult? Function(_ImagePickerPhotoModeState value)? photo,
  }) {
    return photo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ImagePickerPlaceholderModeState value)? placeholder,
    TResult Function(_ImagePickerPhotoModeState value)? photo,
    required TResult orElse(),
  }) {
    if (photo != null) {
      return photo(this);
    }
    return orElse();
  }
}

abstract class _ImagePickerPhotoModeState implements ImagePickerModeState {
  const factory _ImagePickerPhotoModeState() = _$ImagePickerPhotoModeStateImpl;
}
