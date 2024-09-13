// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'upload_photos_mode_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UploadPhotosModeState {
  List<Object> get photos => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Uint8List> photos) add,
    required TResult Function(List<String> photos, List<Uint8List> newPhotos)
        edit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Uint8List> photos)? add,
    TResult? Function(List<String> photos, List<Uint8List> newPhotos)? edit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Uint8List> photos)? add,
    TResult Function(List<String> photos, List<Uint8List> newPhotos)? edit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddPhotosModeState value) add,
    required TResult Function(_UploadPhotosModeState value) edit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddPhotosModeState value)? add,
    TResult? Function(_UploadPhotosModeState value)? edit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddPhotosModeState value)? add,
    TResult Function(_UploadPhotosModeState value)? edit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UploadPhotosModeStateCopyWith<$Res> {
  factory $UploadPhotosModeStateCopyWith(UploadPhotosModeState value,
          $Res Function(UploadPhotosModeState) then) =
      _$UploadPhotosModeStateCopyWithImpl<$Res, UploadPhotosModeState>;
}

/// @nodoc
class _$UploadPhotosModeStateCopyWithImpl<$Res,
        $Val extends UploadPhotosModeState>
    implements $UploadPhotosModeStateCopyWith<$Res> {
  _$UploadPhotosModeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UploadPhotosModeState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$AddPhotosModeStateImplCopyWith<$Res> {
  factory _$$AddPhotosModeStateImplCopyWith(_$AddPhotosModeStateImpl value,
          $Res Function(_$AddPhotosModeStateImpl) then) =
      __$$AddPhotosModeStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Uint8List> photos});
}

/// @nodoc
class __$$AddPhotosModeStateImplCopyWithImpl<$Res>
    extends _$UploadPhotosModeStateCopyWithImpl<$Res, _$AddPhotosModeStateImpl>
    implements _$$AddPhotosModeStateImplCopyWith<$Res> {
  __$$AddPhotosModeStateImplCopyWithImpl(_$AddPhotosModeStateImpl _value,
      $Res Function(_$AddPhotosModeStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of UploadPhotosModeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? photos = null,
  }) {
    return _then(_$AddPhotosModeStateImpl(
      photos: null == photos
          ? _value._photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<Uint8List>,
    ));
  }
}

/// @nodoc

class _$AddPhotosModeStateImpl implements _AddPhotosModeState {
  const _$AddPhotosModeStateImpl({final List<Uint8List> photos = const []})
      : _photos = photos;

  final List<Uint8List> _photos;
  @override
  @JsonKey()
  List<Uint8List> get photos {
    if (_photos is EqualUnmodifiableListView) return _photos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_photos);
  }

  @override
  String toString() {
    return 'UploadPhotosModeState.add(photos: $photos)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddPhotosModeStateImpl &&
            const DeepCollectionEquality().equals(other._photos, _photos));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_photos));

  /// Create a copy of UploadPhotosModeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddPhotosModeStateImplCopyWith<_$AddPhotosModeStateImpl> get copyWith =>
      __$$AddPhotosModeStateImplCopyWithImpl<_$AddPhotosModeStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Uint8List> photos) add,
    required TResult Function(List<String> photos, List<Uint8List> newPhotos)
        edit,
  }) {
    return add(photos);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Uint8List> photos)? add,
    TResult? Function(List<String> photos, List<Uint8List> newPhotos)? edit,
  }) {
    return add?.call(photos);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Uint8List> photos)? add,
    TResult Function(List<String> photos, List<Uint8List> newPhotos)? edit,
    required TResult orElse(),
  }) {
    if (add != null) {
      return add(photos);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddPhotosModeState value) add,
    required TResult Function(_UploadPhotosModeState value) edit,
  }) {
    return add(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddPhotosModeState value)? add,
    TResult? Function(_UploadPhotosModeState value)? edit,
  }) {
    return add?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddPhotosModeState value)? add,
    TResult Function(_UploadPhotosModeState value)? edit,
    required TResult orElse(),
  }) {
    if (add != null) {
      return add(this);
    }
    return orElse();
  }
}

abstract class _AddPhotosModeState implements UploadPhotosModeState {
  const factory _AddPhotosModeState({final List<Uint8List> photos}) =
      _$AddPhotosModeStateImpl;

  @override
  List<Uint8List> get photos;

  /// Create a copy of UploadPhotosModeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddPhotosModeStateImplCopyWith<_$AddPhotosModeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UploadPhotosModeStateImplCopyWith<$Res> {
  factory _$$UploadPhotosModeStateImplCopyWith(
          _$UploadPhotosModeStateImpl value,
          $Res Function(_$UploadPhotosModeStateImpl) then) =
      __$$UploadPhotosModeStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<String> photos, List<Uint8List> newPhotos});
}

/// @nodoc
class __$$UploadPhotosModeStateImplCopyWithImpl<$Res>
    extends _$UploadPhotosModeStateCopyWithImpl<$Res,
        _$UploadPhotosModeStateImpl>
    implements _$$UploadPhotosModeStateImplCopyWith<$Res> {
  __$$UploadPhotosModeStateImplCopyWithImpl(_$UploadPhotosModeStateImpl _value,
      $Res Function(_$UploadPhotosModeStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of UploadPhotosModeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? photos = null,
    Object? newPhotos = null,
  }) {
    return _then(_$UploadPhotosModeStateImpl(
      photos: null == photos
          ? _value._photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<String>,
      newPhotos: null == newPhotos
          ? _value._newPhotos
          : newPhotos // ignore: cast_nullable_to_non_nullable
              as List<Uint8List>,
    ));
  }
}

/// @nodoc

class _$UploadPhotosModeStateImpl implements _UploadPhotosModeState {
  const _$UploadPhotosModeStateImpl(
      {required final List<String> photos,
      final List<Uint8List> newPhotos = const []})
      : _photos = photos,
        _newPhotos = newPhotos;

  final List<String> _photos;
  @override
  List<String> get photos {
    if (_photos is EqualUnmodifiableListView) return _photos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_photos);
  }

  final List<Uint8List> _newPhotos;
  @override
  @JsonKey()
  List<Uint8List> get newPhotos {
    if (_newPhotos is EqualUnmodifiableListView) return _newPhotos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_newPhotos);
  }

  @override
  String toString() {
    return 'UploadPhotosModeState.edit(photos: $photos, newPhotos: $newPhotos)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UploadPhotosModeStateImpl &&
            const DeepCollectionEquality().equals(other._photos, _photos) &&
            const DeepCollectionEquality()
                .equals(other._newPhotos, _newPhotos));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_photos),
      const DeepCollectionEquality().hash(_newPhotos));

  /// Create a copy of UploadPhotosModeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UploadPhotosModeStateImplCopyWith<_$UploadPhotosModeStateImpl>
      get copyWith => __$$UploadPhotosModeStateImplCopyWithImpl<
          _$UploadPhotosModeStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Uint8List> photos) add,
    required TResult Function(List<String> photos, List<Uint8List> newPhotos)
        edit,
  }) {
    return edit(photos, newPhotos);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Uint8List> photos)? add,
    TResult? Function(List<String> photos, List<Uint8List> newPhotos)? edit,
  }) {
    return edit?.call(photos, newPhotos);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Uint8List> photos)? add,
    TResult Function(List<String> photos, List<Uint8List> newPhotos)? edit,
    required TResult orElse(),
  }) {
    if (edit != null) {
      return edit(photos, newPhotos);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddPhotosModeState value) add,
    required TResult Function(_UploadPhotosModeState value) edit,
  }) {
    return edit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddPhotosModeState value)? add,
    TResult? Function(_UploadPhotosModeState value)? edit,
  }) {
    return edit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddPhotosModeState value)? add,
    TResult Function(_UploadPhotosModeState value)? edit,
    required TResult orElse(),
  }) {
    if (edit != null) {
      return edit(this);
    }
    return orElse();
  }
}

abstract class _UploadPhotosModeState implements UploadPhotosModeState {
  const factory _UploadPhotosModeState(
      {required final List<String> photos,
      final List<Uint8List> newPhotos}) = _$UploadPhotosModeStateImpl;

  @override
  List<String> get photos;
  List<Uint8List> get newPhotos;

  /// Create a copy of UploadPhotosModeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UploadPhotosModeStateImplCopyWith<_$UploadPhotosModeStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
