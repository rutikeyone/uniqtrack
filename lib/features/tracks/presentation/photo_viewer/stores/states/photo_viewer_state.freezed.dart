// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'photo_viewer_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PhotoViewerState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() none,
    required TResult Function(Uint8List data) bytes,
    required TResult Function(String? link) link,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? none,
    TResult? Function(Uint8List data)? bytes,
    TResult? Function(String? link)? link,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? none,
    TResult Function(Uint8List data)? bytes,
    TResult Function(String? link)? link,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NoneViewState value) none,
    required TResult Function(_PhotoBytesViewerState value) bytes,
    required TResult Function(_PhotoLinkViewerState value) link,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NoneViewState value)? none,
    TResult? Function(_PhotoBytesViewerState value)? bytes,
    TResult? Function(_PhotoLinkViewerState value)? link,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NoneViewState value)? none,
    TResult Function(_PhotoBytesViewerState value)? bytes,
    TResult Function(_PhotoLinkViewerState value)? link,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhotoViewerStateCopyWith<$Res> {
  factory $PhotoViewerStateCopyWith(
          PhotoViewerState value, $Res Function(PhotoViewerState) then) =
      _$PhotoViewerStateCopyWithImpl<$Res, PhotoViewerState>;
}

/// @nodoc
class _$PhotoViewerStateCopyWithImpl<$Res, $Val extends PhotoViewerState>
    implements $PhotoViewerStateCopyWith<$Res> {
  _$PhotoViewerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PhotoViewerState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$NoneViewStateImplCopyWith<$Res> {
  factory _$$NoneViewStateImplCopyWith(
          _$NoneViewStateImpl value, $Res Function(_$NoneViewStateImpl) then) =
      __$$NoneViewStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NoneViewStateImplCopyWithImpl<$Res>
    extends _$PhotoViewerStateCopyWithImpl<$Res, _$NoneViewStateImpl>
    implements _$$NoneViewStateImplCopyWith<$Res> {
  __$$NoneViewStateImplCopyWithImpl(
      _$NoneViewStateImpl _value, $Res Function(_$NoneViewStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of PhotoViewerState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$NoneViewStateImpl extends _NoneViewState with DiagnosticableTreeMixin {
  const _$NoneViewStateImpl() : super._();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PhotoViewerState.none()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'PhotoViewerState.none'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NoneViewStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() none,
    required TResult Function(Uint8List data) bytes,
    required TResult Function(String? link) link,
  }) {
    return none();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? none,
    TResult? Function(Uint8List data)? bytes,
    TResult? Function(String? link)? link,
  }) {
    return none?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? none,
    TResult Function(Uint8List data)? bytes,
    TResult Function(String? link)? link,
    required TResult orElse(),
  }) {
    if (none != null) {
      return none();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NoneViewState value) none,
    required TResult Function(_PhotoBytesViewerState value) bytes,
    required TResult Function(_PhotoLinkViewerState value) link,
  }) {
    return none(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NoneViewState value)? none,
    TResult? Function(_PhotoBytesViewerState value)? bytes,
    TResult? Function(_PhotoLinkViewerState value)? link,
  }) {
    return none?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NoneViewState value)? none,
    TResult Function(_PhotoBytesViewerState value)? bytes,
    TResult Function(_PhotoLinkViewerState value)? link,
    required TResult orElse(),
  }) {
    if (none != null) {
      return none(this);
    }
    return orElse();
  }
}

abstract class _NoneViewState extends PhotoViewerState {
  const factory _NoneViewState() = _$NoneViewStateImpl;
  const _NoneViewState._() : super._();
}

/// @nodoc
abstract class _$$PhotoBytesViewerStateImplCopyWith<$Res> {
  factory _$$PhotoBytesViewerStateImplCopyWith(
          _$PhotoBytesViewerStateImpl value,
          $Res Function(_$PhotoBytesViewerStateImpl) then) =
      __$$PhotoBytesViewerStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Uint8List data});
}

/// @nodoc
class __$$PhotoBytesViewerStateImplCopyWithImpl<$Res>
    extends _$PhotoViewerStateCopyWithImpl<$Res, _$PhotoBytesViewerStateImpl>
    implements _$$PhotoBytesViewerStateImplCopyWith<$Res> {
  __$$PhotoBytesViewerStateImplCopyWithImpl(_$PhotoBytesViewerStateImpl _value,
      $Res Function(_$PhotoBytesViewerStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of PhotoViewerState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$PhotoBytesViewerStateImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Uint8List,
    ));
  }
}

/// @nodoc

class _$PhotoBytesViewerStateImpl extends _PhotoBytesViewerState
    with DiagnosticableTreeMixin {
  const _$PhotoBytesViewerStateImpl({required this.data}) : super._();

  @override
  final Uint8List data;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PhotoViewerState.bytes(data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PhotoViewerState.bytes'))
      ..add(DiagnosticsProperty('data', data));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PhotoBytesViewerStateImpl &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  /// Create a copy of PhotoViewerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PhotoBytesViewerStateImplCopyWith<_$PhotoBytesViewerStateImpl>
      get copyWith => __$$PhotoBytesViewerStateImplCopyWithImpl<
          _$PhotoBytesViewerStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() none,
    required TResult Function(Uint8List data) bytes,
    required TResult Function(String? link) link,
  }) {
    return bytes(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? none,
    TResult? Function(Uint8List data)? bytes,
    TResult? Function(String? link)? link,
  }) {
    return bytes?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? none,
    TResult Function(Uint8List data)? bytes,
    TResult Function(String? link)? link,
    required TResult orElse(),
  }) {
    if (bytes != null) {
      return bytes(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NoneViewState value) none,
    required TResult Function(_PhotoBytesViewerState value) bytes,
    required TResult Function(_PhotoLinkViewerState value) link,
  }) {
    return bytes(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NoneViewState value)? none,
    TResult? Function(_PhotoBytesViewerState value)? bytes,
    TResult? Function(_PhotoLinkViewerState value)? link,
  }) {
    return bytes?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NoneViewState value)? none,
    TResult Function(_PhotoBytesViewerState value)? bytes,
    TResult Function(_PhotoLinkViewerState value)? link,
    required TResult orElse(),
  }) {
    if (bytes != null) {
      return bytes(this);
    }
    return orElse();
  }
}

abstract class _PhotoBytesViewerState extends PhotoViewerState {
  const factory _PhotoBytesViewerState({required final Uint8List data}) =
      _$PhotoBytesViewerStateImpl;
  const _PhotoBytesViewerState._() : super._();

  Uint8List get data;

  /// Create a copy of PhotoViewerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PhotoBytesViewerStateImplCopyWith<_$PhotoBytesViewerStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PhotoLinkViewerStateImplCopyWith<$Res> {
  factory _$$PhotoLinkViewerStateImplCopyWith(_$PhotoLinkViewerStateImpl value,
          $Res Function(_$PhotoLinkViewerStateImpl) then) =
      __$$PhotoLinkViewerStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? link});
}

/// @nodoc
class __$$PhotoLinkViewerStateImplCopyWithImpl<$Res>
    extends _$PhotoViewerStateCopyWithImpl<$Res, _$PhotoLinkViewerStateImpl>
    implements _$$PhotoLinkViewerStateImplCopyWith<$Res> {
  __$$PhotoLinkViewerStateImplCopyWithImpl(_$PhotoLinkViewerStateImpl _value,
      $Res Function(_$PhotoLinkViewerStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of PhotoViewerState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? link = freezed,
  }) {
    return _then(_$PhotoLinkViewerStateImpl(
      link: freezed == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$PhotoLinkViewerStateImpl extends _PhotoLinkViewerState
    with DiagnosticableTreeMixin {
  const _$PhotoLinkViewerStateImpl({required this.link}) : super._();

  @override
  final String? link;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PhotoViewerState.link(link: $link)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PhotoViewerState.link'))
      ..add(DiagnosticsProperty('link', link));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PhotoLinkViewerStateImpl &&
            (identical(other.link, link) || other.link == link));
  }

  @override
  int get hashCode => Object.hash(runtimeType, link);

  /// Create a copy of PhotoViewerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PhotoLinkViewerStateImplCopyWith<_$PhotoLinkViewerStateImpl>
      get copyWith =>
          __$$PhotoLinkViewerStateImplCopyWithImpl<_$PhotoLinkViewerStateImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() none,
    required TResult Function(Uint8List data) bytes,
    required TResult Function(String? link) link,
  }) {
    return link(this.link);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? none,
    TResult? Function(Uint8List data)? bytes,
    TResult? Function(String? link)? link,
  }) {
    return link?.call(this.link);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? none,
    TResult Function(Uint8List data)? bytes,
    TResult Function(String? link)? link,
    required TResult orElse(),
  }) {
    if (link != null) {
      return link(this.link);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NoneViewState value) none,
    required TResult Function(_PhotoBytesViewerState value) bytes,
    required TResult Function(_PhotoLinkViewerState value) link,
  }) {
    return link(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NoneViewState value)? none,
    TResult? Function(_PhotoBytesViewerState value)? bytes,
    TResult? Function(_PhotoLinkViewerState value)? link,
  }) {
    return link?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NoneViewState value)? none,
    TResult Function(_PhotoBytesViewerState value)? bytes,
    TResult Function(_PhotoLinkViewerState value)? link,
    required TResult orElse(),
  }) {
    if (link != null) {
      return link(this);
    }
    return orElse();
  }
}

abstract class _PhotoLinkViewerState extends PhotoViewerState {
  const factory _PhotoLinkViewerState({required final String? link}) =
      _$PhotoLinkViewerStateImpl;
  const _PhotoLinkViewerState._() : super._();

  String? get link;

  /// Create a copy of PhotoViewerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PhotoLinkViewerStateImplCopyWith<_$PhotoLinkViewerStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
