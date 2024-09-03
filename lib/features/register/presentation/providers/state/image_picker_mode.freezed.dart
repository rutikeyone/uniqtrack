// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'image_picker_mode.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ImagePickerMode {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Gender gender) placeholder,
    required TResult Function() photo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Gender gender)? placeholder,
    TResult? Function()? photo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Gender gender)? placeholder,
    TResult Function()? photo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ImagePickerPlaceholderMode value) placeholder,
    required TResult Function(_ImagePickerPhotoMode value) photo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ImagePickerPlaceholderMode value)? placeholder,
    TResult? Function(_ImagePickerPhotoMode value)? photo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ImagePickerPlaceholderMode value)? placeholder,
    TResult Function(_ImagePickerPhotoMode value)? photo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImagePickerModeCopyWith<$Res> {
  factory $ImagePickerModeCopyWith(
          ImagePickerMode value, $Res Function(ImagePickerMode) then) =
      _$ImagePickerModeCopyWithImpl<$Res, ImagePickerMode>;
}

/// @nodoc
class _$ImagePickerModeCopyWithImpl<$Res, $Val extends ImagePickerMode>
    implements $ImagePickerModeCopyWith<$Res> {
  _$ImagePickerModeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ImagePickerMode
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ImagePickerPlaceholderModeImplCopyWith<$Res> {
  factory _$$ImagePickerPlaceholderModeImplCopyWith(
          _$ImagePickerPlaceholderModeImpl value,
          $Res Function(_$ImagePickerPlaceholderModeImpl) then) =
      __$$ImagePickerPlaceholderModeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Gender gender});

  $GenderCopyWith<$Res> get gender;
}

/// @nodoc
class __$$ImagePickerPlaceholderModeImplCopyWithImpl<$Res>
    extends _$ImagePickerModeCopyWithImpl<$Res,
        _$ImagePickerPlaceholderModeImpl>
    implements _$$ImagePickerPlaceholderModeImplCopyWith<$Res> {
  __$$ImagePickerPlaceholderModeImplCopyWithImpl(
      _$ImagePickerPlaceholderModeImpl _value,
      $Res Function(_$ImagePickerPlaceholderModeImpl) _then)
      : super(_value, _then);

  /// Create a copy of ImagePickerMode
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gender = null,
  }) {
    return _then(_$ImagePickerPlaceholderModeImpl(
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Gender,
    ));
  }

  /// Create a copy of ImagePickerMode
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GenderCopyWith<$Res> get gender {
    return $GenderCopyWith<$Res>(_value.gender, (value) {
      return _then(_value.copyWith(gender: value));
    });
  }
}

/// @nodoc

class _$ImagePickerPlaceholderModeImpl implements _ImagePickerPlaceholderMode {
  const _$ImagePickerPlaceholderModeImpl({required this.gender});

  @override
  final Gender gender;

  @override
  String toString() {
    return 'ImagePickerMode.placeholder(gender: $gender)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImagePickerPlaceholderModeImpl &&
            (identical(other.gender, gender) || other.gender == gender));
  }

  @override
  int get hashCode => Object.hash(runtimeType, gender);

  /// Create a copy of ImagePickerMode
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ImagePickerPlaceholderModeImplCopyWith<_$ImagePickerPlaceholderModeImpl>
      get copyWith => __$$ImagePickerPlaceholderModeImplCopyWithImpl<
          _$ImagePickerPlaceholderModeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Gender gender) placeholder,
    required TResult Function() photo,
  }) {
    return placeholder(gender);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Gender gender)? placeholder,
    TResult? Function()? photo,
  }) {
    return placeholder?.call(gender);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Gender gender)? placeholder,
    TResult Function()? photo,
    required TResult orElse(),
  }) {
    if (placeholder != null) {
      return placeholder(gender);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ImagePickerPlaceholderMode value) placeholder,
    required TResult Function(_ImagePickerPhotoMode value) photo,
  }) {
    return placeholder(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ImagePickerPlaceholderMode value)? placeholder,
    TResult? Function(_ImagePickerPhotoMode value)? photo,
  }) {
    return placeholder?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ImagePickerPlaceholderMode value)? placeholder,
    TResult Function(_ImagePickerPhotoMode value)? photo,
    required TResult orElse(),
  }) {
    if (placeholder != null) {
      return placeholder(this);
    }
    return orElse();
  }
}

abstract class _ImagePickerPlaceholderMode implements ImagePickerMode {
  const factory _ImagePickerPlaceholderMode({required final Gender gender}) =
      _$ImagePickerPlaceholderModeImpl;

  Gender get gender;

  /// Create a copy of ImagePickerMode
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ImagePickerPlaceholderModeImplCopyWith<_$ImagePickerPlaceholderModeImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ImagePickerPhotoModeImplCopyWith<$Res> {
  factory _$$ImagePickerPhotoModeImplCopyWith(_$ImagePickerPhotoModeImpl value,
          $Res Function(_$ImagePickerPhotoModeImpl) then) =
      __$$ImagePickerPhotoModeImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ImagePickerPhotoModeImplCopyWithImpl<$Res>
    extends _$ImagePickerModeCopyWithImpl<$Res, _$ImagePickerPhotoModeImpl>
    implements _$$ImagePickerPhotoModeImplCopyWith<$Res> {
  __$$ImagePickerPhotoModeImplCopyWithImpl(_$ImagePickerPhotoModeImpl _value,
      $Res Function(_$ImagePickerPhotoModeImpl) _then)
      : super(_value, _then);

  /// Create a copy of ImagePickerMode
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ImagePickerPhotoModeImpl implements _ImagePickerPhotoMode {
  const _$ImagePickerPhotoModeImpl();

  @override
  String toString() {
    return 'ImagePickerMode.photo()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImagePickerPhotoModeImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Gender gender) placeholder,
    required TResult Function() photo,
  }) {
    return photo();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Gender gender)? placeholder,
    TResult? Function()? photo,
  }) {
    return photo?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Gender gender)? placeholder,
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
    required TResult Function(_ImagePickerPlaceholderMode value) placeholder,
    required TResult Function(_ImagePickerPhotoMode value) photo,
  }) {
    return photo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ImagePickerPlaceholderMode value)? placeholder,
    TResult? Function(_ImagePickerPhotoMode value)? photo,
  }) {
    return photo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ImagePickerPlaceholderMode value)? placeholder,
    TResult Function(_ImagePickerPhotoMode value)? photo,
    required TResult orElse(),
  }) {
    if (photo != null) {
      return photo(this);
    }
    return orElse();
  }
}

abstract class _ImagePickerPhotoMode implements ImagePickerMode {
  const factory _ImagePickerPhotoMode() = _$ImagePickerPhotoModeImpl;
}
