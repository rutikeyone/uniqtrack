// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'args.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ForgotPasswordArgs {
  String get email => throw _privateConstructorUsedError;

  /// Create a copy of ForgotPasswordArgs
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ForgotPasswordArgsCopyWith<ForgotPasswordArgs> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForgotPasswordArgsCopyWith<$Res> {
  factory $ForgotPasswordArgsCopyWith(
          ForgotPasswordArgs value, $Res Function(ForgotPasswordArgs) then) =
      _$ForgotPasswordArgsCopyWithImpl<$Res, ForgotPasswordArgs>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class _$ForgotPasswordArgsCopyWithImpl<$Res, $Val extends ForgotPasswordArgs>
    implements $ForgotPasswordArgsCopyWith<$Res> {
  _$ForgotPasswordArgsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ForgotPasswordArgs
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ForgotPasswordArgsImplCopyWith<$Res>
    implements $ForgotPasswordArgsCopyWith<$Res> {
  factory _$$ForgotPasswordArgsImplCopyWith(_$ForgotPasswordArgsImpl value,
          $Res Function(_$ForgotPasswordArgsImpl) then) =
      __$$ForgotPasswordArgsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$ForgotPasswordArgsImplCopyWithImpl<$Res>
    extends _$ForgotPasswordArgsCopyWithImpl<$Res, _$ForgotPasswordArgsImpl>
    implements _$$ForgotPasswordArgsImplCopyWith<$Res> {
  __$$ForgotPasswordArgsImplCopyWithImpl(_$ForgotPasswordArgsImpl _value,
      $Res Function(_$ForgotPasswordArgsImpl) _then)
      : super(_value, _then);

  /// Create a copy of ForgotPasswordArgs
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$ForgotPasswordArgsImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ForgotPasswordArgsImpl
    with DiagnosticableTreeMixin
    implements _ForgotPasswordArgs {
  const _$ForgotPasswordArgsImpl({required this.email});

  @override
  final String email;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ForgotPasswordArgs(email: $email)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ForgotPasswordArgs'))
      ..add(DiagnosticsProperty('email', email));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForgotPasswordArgsImpl &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  /// Create a copy of ForgotPasswordArgs
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ForgotPasswordArgsImplCopyWith<_$ForgotPasswordArgsImpl> get copyWith =>
      __$$ForgotPasswordArgsImplCopyWithImpl<_$ForgotPasswordArgsImpl>(
          this, _$identity);
}

abstract class _ForgotPasswordArgs implements ForgotPasswordArgs {
  const factory _ForgotPasswordArgs({required final String email}) =
      _$ForgotPasswordArgsImpl;

  @override
  String get email;

  /// Create a copy of ForgotPasswordArgs
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ForgotPasswordArgsImplCopyWith<_$ForgotPasswordArgsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PhotoViewerArgs {
  Uint8List? get bytes => throw _privateConstructorUsedError;
  String? get link => throw _privateConstructorUsedError;

  /// Create a copy of PhotoViewerArgs
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PhotoViewerArgsCopyWith<PhotoViewerArgs> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhotoViewerArgsCopyWith<$Res> {
  factory $PhotoViewerArgsCopyWith(
          PhotoViewerArgs value, $Res Function(PhotoViewerArgs) then) =
      _$PhotoViewerArgsCopyWithImpl<$Res, PhotoViewerArgs>;
  @useResult
  $Res call({Uint8List? bytes, String? link});
}

/// @nodoc
class _$PhotoViewerArgsCopyWithImpl<$Res, $Val extends PhotoViewerArgs>
    implements $PhotoViewerArgsCopyWith<$Res> {
  _$PhotoViewerArgsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PhotoViewerArgs
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bytes = freezed,
    Object? link = freezed,
  }) {
    return _then(_value.copyWith(
      bytes: freezed == bytes
          ? _value.bytes
          : bytes // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
      link: freezed == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PhotoViewerArgsImplCopyWith<$Res>
    implements $PhotoViewerArgsCopyWith<$Res> {
  factory _$$PhotoViewerArgsImplCopyWith(_$PhotoViewerArgsImpl value,
          $Res Function(_$PhotoViewerArgsImpl) then) =
      __$$PhotoViewerArgsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Uint8List? bytes, String? link});
}

/// @nodoc
class __$$PhotoViewerArgsImplCopyWithImpl<$Res>
    extends _$PhotoViewerArgsCopyWithImpl<$Res, _$PhotoViewerArgsImpl>
    implements _$$PhotoViewerArgsImplCopyWith<$Res> {
  __$$PhotoViewerArgsImplCopyWithImpl(
      _$PhotoViewerArgsImpl _value, $Res Function(_$PhotoViewerArgsImpl) _then)
      : super(_value, _then);

  /// Create a copy of PhotoViewerArgs
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bytes = freezed,
    Object? link = freezed,
  }) {
    return _then(_$PhotoViewerArgsImpl(
      bytes: freezed == bytes
          ? _value.bytes
          : bytes // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
      link: freezed == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$PhotoViewerArgsImpl
    with DiagnosticableTreeMixin
    implements _PhotoViewerArgs {
  const _$PhotoViewerArgsImpl({required this.bytes, required this.link});

  @override
  final Uint8List? bytes;
  @override
  final String? link;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PhotoViewerArgs(bytes: $bytes, link: $link)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PhotoViewerArgs'))
      ..add(DiagnosticsProperty('bytes', bytes))
      ..add(DiagnosticsProperty('link', link));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PhotoViewerArgsImpl &&
            const DeepCollectionEquality().equals(other.bytes, bytes) &&
            (identical(other.link, link) || other.link == link));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(bytes), link);

  /// Create a copy of PhotoViewerArgs
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PhotoViewerArgsImplCopyWith<_$PhotoViewerArgsImpl> get copyWith =>
      __$$PhotoViewerArgsImplCopyWithImpl<_$PhotoViewerArgsImpl>(
          this, _$identity);
}

abstract class _PhotoViewerArgs implements PhotoViewerArgs {
  const factory _PhotoViewerArgs(
      {required final Uint8List? bytes,
      required final String? link}) = _$PhotoViewerArgsImpl;

  @override
  Uint8List? get bytes;
  @override
  String? get link;

  /// Create a copy of PhotoViewerArgs
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PhotoViewerArgsImplCopyWith<_$PhotoViewerArgsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AddOrEditRecordTrackArgs {
  Track get track => throw _privateConstructorUsedError;

  /// Create a copy of AddOrEditRecordTrackArgs
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AddOrEditRecordTrackArgsCopyWith<AddOrEditRecordTrackArgs> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddOrEditRecordTrackArgsCopyWith<$Res> {
  factory $AddOrEditRecordTrackArgsCopyWith(AddOrEditRecordTrackArgs value,
          $Res Function(AddOrEditRecordTrackArgs) then) =
      _$AddOrEditRecordTrackArgsCopyWithImpl<$Res, AddOrEditRecordTrackArgs>;
  @useResult
  $Res call({Track track});

  $TrackCopyWith<$Res> get track;
}

/// @nodoc
class _$AddOrEditRecordTrackArgsCopyWithImpl<$Res,
        $Val extends AddOrEditRecordTrackArgs>
    implements $AddOrEditRecordTrackArgsCopyWith<$Res> {
  _$AddOrEditRecordTrackArgsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AddOrEditRecordTrackArgs
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? track = null,
  }) {
    return _then(_value.copyWith(
      track: null == track
          ? _value.track
          : track // ignore: cast_nullable_to_non_nullable
              as Track,
    ) as $Val);
  }

  /// Create a copy of AddOrEditRecordTrackArgs
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TrackCopyWith<$Res> get track {
    return $TrackCopyWith<$Res>(_value.track, (value) {
      return _then(_value.copyWith(track: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AddOrEditRecordTrackArgsImplCopyWith<$Res>
    implements $AddOrEditRecordTrackArgsCopyWith<$Res> {
  factory _$$AddOrEditRecordTrackArgsImplCopyWith(
          _$AddOrEditRecordTrackArgsImpl value,
          $Res Function(_$AddOrEditRecordTrackArgsImpl) then) =
      __$$AddOrEditRecordTrackArgsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Track track});

  @override
  $TrackCopyWith<$Res> get track;
}

/// @nodoc
class __$$AddOrEditRecordTrackArgsImplCopyWithImpl<$Res>
    extends _$AddOrEditRecordTrackArgsCopyWithImpl<$Res,
        _$AddOrEditRecordTrackArgsImpl>
    implements _$$AddOrEditRecordTrackArgsImplCopyWith<$Res> {
  __$$AddOrEditRecordTrackArgsImplCopyWithImpl(
      _$AddOrEditRecordTrackArgsImpl _value,
      $Res Function(_$AddOrEditRecordTrackArgsImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddOrEditRecordTrackArgs
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? track = null,
  }) {
    return _then(_$AddOrEditRecordTrackArgsImpl(
      track: null == track
          ? _value.track
          : track // ignore: cast_nullable_to_non_nullable
              as Track,
    ));
  }
}

/// @nodoc

class _$AddOrEditRecordTrackArgsImpl
    with DiagnosticableTreeMixin
    implements _AddOrEditRecordTrackArgs {
  const _$AddOrEditRecordTrackArgsImpl({required this.track});

  @override
  final Track track;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AddOrEditRecordTrackArgs(track: $track)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AddOrEditRecordTrackArgs'))
      ..add(DiagnosticsProperty('track', track));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddOrEditRecordTrackArgsImpl &&
            (identical(other.track, track) || other.track == track));
  }

  @override
  int get hashCode => Object.hash(runtimeType, track);

  /// Create a copy of AddOrEditRecordTrackArgs
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddOrEditRecordTrackArgsImplCopyWith<_$AddOrEditRecordTrackArgsImpl>
      get copyWith => __$$AddOrEditRecordTrackArgsImplCopyWithImpl<
          _$AddOrEditRecordTrackArgsImpl>(this, _$identity);
}

abstract class _AddOrEditRecordTrackArgs implements AddOrEditRecordTrackArgs {
  const factory _AddOrEditRecordTrackArgs({required final Track track}) =
      _$AddOrEditRecordTrackArgsImpl;

  @override
  Track get track;

  /// Create a copy of AddOrEditRecordTrackArgs
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddOrEditRecordTrackArgsImplCopyWith<_$AddOrEditRecordTrackArgsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AddOrEditMemoryArgs {
  Position? get position => throw _privateConstructorUsedError;
  Track? get track => throw _privateConstructorUsedError;
  Memory? get memory => throw _privateConstructorUsedError;

  /// Create a copy of AddOrEditMemoryArgs
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AddOrEditMemoryArgsCopyWith<AddOrEditMemoryArgs> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddOrEditMemoryArgsCopyWith<$Res> {
  factory $AddOrEditMemoryArgsCopyWith(
          AddOrEditMemoryArgs value, $Res Function(AddOrEditMemoryArgs) then) =
      _$AddOrEditMemoryArgsCopyWithImpl<$Res, AddOrEditMemoryArgs>;
  @useResult
  $Res call({Position? position, Track? track, Memory? memory});

  $PositionCopyWith<$Res>? get position;
  $TrackCopyWith<$Res>? get track;
  $MemoryCopyWith<$Res>? get memory;
}

/// @nodoc
class _$AddOrEditMemoryArgsCopyWithImpl<$Res, $Val extends AddOrEditMemoryArgs>
    implements $AddOrEditMemoryArgsCopyWith<$Res> {
  _$AddOrEditMemoryArgsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AddOrEditMemoryArgs
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? position = freezed,
    Object? track = freezed,
    Object? memory = freezed,
  }) {
    return _then(_value.copyWith(
      position: freezed == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as Position?,
      track: freezed == track
          ? _value.track
          : track // ignore: cast_nullable_to_non_nullable
              as Track?,
      memory: freezed == memory
          ? _value.memory
          : memory // ignore: cast_nullable_to_non_nullable
              as Memory?,
    ) as $Val);
  }

  /// Create a copy of AddOrEditMemoryArgs
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PositionCopyWith<$Res>? get position {
    if (_value.position == null) {
      return null;
    }

    return $PositionCopyWith<$Res>(_value.position!, (value) {
      return _then(_value.copyWith(position: value) as $Val);
    });
  }

  /// Create a copy of AddOrEditMemoryArgs
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TrackCopyWith<$Res>? get track {
    if (_value.track == null) {
      return null;
    }

    return $TrackCopyWith<$Res>(_value.track!, (value) {
      return _then(_value.copyWith(track: value) as $Val);
    });
  }

  /// Create a copy of AddOrEditMemoryArgs
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MemoryCopyWith<$Res>? get memory {
    if (_value.memory == null) {
      return null;
    }

    return $MemoryCopyWith<$Res>(_value.memory!, (value) {
      return _then(_value.copyWith(memory: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AddOrEditMemoryArgsImplCopyWith<$Res>
    implements $AddOrEditMemoryArgsCopyWith<$Res> {
  factory _$$AddOrEditMemoryArgsImplCopyWith(_$AddOrEditMemoryArgsImpl value,
          $Res Function(_$AddOrEditMemoryArgsImpl) then) =
      __$$AddOrEditMemoryArgsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Position? position, Track? track, Memory? memory});

  @override
  $PositionCopyWith<$Res>? get position;
  @override
  $TrackCopyWith<$Res>? get track;
  @override
  $MemoryCopyWith<$Res>? get memory;
}

/// @nodoc
class __$$AddOrEditMemoryArgsImplCopyWithImpl<$Res>
    extends _$AddOrEditMemoryArgsCopyWithImpl<$Res, _$AddOrEditMemoryArgsImpl>
    implements _$$AddOrEditMemoryArgsImplCopyWith<$Res> {
  __$$AddOrEditMemoryArgsImplCopyWithImpl(_$AddOrEditMemoryArgsImpl _value,
      $Res Function(_$AddOrEditMemoryArgsImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddOrEditMemoryArgs
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? position = freezed,
    Object? track = freezed,
    Object? memory = freezed,
  }) {
    return _then(_$AddOrEditMemoryArgsImpl(
      position: freezed == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as Position?,
      track: freezed == track
          ? _value.track
          : track // ignore: cast_nullable_to_non_nullable
              as Track?,
      memory: freezed == memory
          ? _value.memory
          : memory // ignore: cast_nullable_to_non_nullable
              as Memory?,
    ));
  }
}

/// @nodoc

class _$AddOrEditMemoryArgsImpl
    with DiagnosticableTreeMixin
    implements _AddOrEditMemoryArgs {
  const _$AddOrEditMemoryArgsImpl(
      {required this.position, required this.track, required this.memory});

  @override
  final Position? position;
  @override
  final Track? track;
  @override
  final Memory? memory;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AddOrEditMemoryArgs(position: $position, track: $track, memory: $memory)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AddOrEditMemoryArgs'))
      ..add(DiagnosticsProperty('position', position))
      ..add(DiagnosticsProperty('track', track))
      ..add(DiagnosticsProperty('memory', memory));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddOrEditMemoryArgsImpl &&
            (identical(other.position, position) ||
                other.position == position) &&
            (identical(other.track, track) || other.track == track) &&
            (identical(other.memory, memory) || other.memory == memory));
  }

  @override
  int get hashCode => Object.hash(runtimeType, position, track, memory);

  /// Create a copy of AddOrEditMemoryArgs
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddOrEditMemoryArgsImplCopyWith<_$AddOrEditMemoryArgsImpl> get copyWith =>
      __$$AddOrEditMemoryArgsImplCopyWithImpl<_$AddOrEditMemoryArgsImpl>(
          this, _$identity);
}

abstract class _AddOrEditMemoryArgs implements AddOrEditMemoryArgs {
  const factory _AddOrEditMemoryArgs(
      {required final Position? position,
      required final Track? track,
      required final Memory? memory}) = _$AddOrEditMemoryArgsImpl;

  @override
  Position? get position;
  @override
  Track? get track;
  @override
  Memory? get memory;

  /// Create a copy of AddOrEditMemoryArgs
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddOrEditMemoryArgsImplCopyWith<_$AddOrEditMemoryArgsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RecordTrackArgs {
  Track? get track => throw _privateConstructorUsedError;
  DetailsMode? get mode => throw _privateConstructorUsedError;

  /// Create a copy of RecordTrackArgs
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RecordTrackArgsCopyWith<RecordTrackArgs> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecordTrackArgsCopyWith<$Res> {
  factory $RecordTrackArgsCopyWith(
          RecordTrackArgs value, $Res Function(RecordTrackArgs) then) =
      _$RecordTrackArgsCopyWithImpl<$Res, RecordTrackArgs>;
  @useResult
  $Res call({Track? track, DetailsMode? mode});

  $TrackCopyWith<$Res>? get track;
  $DetailsModeCopyWith<$Res>? get mode;
}

/// @nodoc
class _$RecordTrackArgsCopyWithImpl<$Res, $Val extends RecordTrackArgs>
    implements $RecordTrackArgsCopyWith<$Res> {
  _$RecordTrackArgsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RecordTrackArgs
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? track = freezed,
    Object? mode = freezed,
  }) {
    return _then(_value.copyWith(
      track: freezed == track
          ? _value.track
          : track // ignore: cast_nullable_to_non_nullable
              as Track?,
      mode: freezed == mode
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as DetailsMode?,
    ) as $Val);
  }

  /// Create a copy of RecordTrackArgs
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TrackCopyWith<$Res>? get track {
    if (_value.track == null) {
      return null;
    }

    return $TrackCopyWith<$Res>(_value.track!, (value) {
      return _then(_value.copyWith(track: value) as $Val);
    });
  }

  /// Create a copy of RecordTrackArgs
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DetailsModeCopyWith<$Res>? get mode {
    if (_value.mode == null) {
      return null;
    }

    return $DetailsModeCopyWith<$Res>(_value.mode!, (value) {
      return _then(_value.copyWith(mode: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RecordTrackArgsImplCopyWith<$Res>
    implements $RecordTrackArgsCopyWith<$Res> {
  factory _$$RecordTrackArgsImplCopyWith(_$RecordTrackArgsImpl value,
          $Res Function(_$RecordTrackArgsImpl) then) =
      __$$RecordTrackArgsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Track? track, DetailsMode? mode});

  @override
  $TrackCopyWith<$Res>? get track;
  @override
  $DetailsModeCopyWith<$Res>? get mode;
}

/// @nodoc
class __$$RecordTrackArgsImplCopyWithImpl<$Res>
    extends _$RecordTrackArgsCopyWithImpl<$Res, _$RecordTrackArgsImpl>
    implements _$$RecordTrackArgsImplCopyWith<$Res> {
  __$$RecordTrackArgsImplCopyWithImpl(
      _$RecordTrackArgsImpl _value, $Res Function(_$RecordTrackArgsImpl) _then)
      : super(_value, _then);

  /// Create a copy of RecordTrackArgs
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? track = freezed,
    Object? mode = freezed,
  }) {
    return _then(_$RecordTrackArgsImpl(
      track: freezed == track
          ? _value.track
          : track // ignore: cast_nullable_to_non_nullable
              as Track?,
      mode: freezed == mode
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as DetailsMode?,
    ));
  }
}

/// @nodoc

class _$RecordTrackArgsImpl
    with DiagnosticableTreeMixin
    implements _RecordTrackArgs {
  const _$RecordTrackArgsImpl({required this.track, required this.mode});

  @override
  final Track? track;
  @override
  final DetailsMode? mode;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RecordTrackArgs(track: $track, mode: $mode)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RecordTrackArgs'))
      ..add(DiagnosticsProperty('track', track))
      ..add(DiagnosticsProperty('mode', mode));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecordTrackArgsImpl &&
            (identical(other.track, track) || other.track == track) &&
            (identical(other.mode, mode) || other.mode == mode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, track, mode);

  /// Create a copy of RecordTrackArgs
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RecordTrackArgsImplCopyWith<_$RecordTrackArgsImpl> get copyWith =>
      __$$RecordTrackArgsImplCopyWithImpl<_$RecordTrackArgsImpl>(
          this, _$identity);
}

abstract class _RecordTrackArgs implements RecordTrackArgs {
  const factory _RecordTrackArgs(
      {required final Track? track,
      required final DetailsMode? mode}) = _$RecordTrackArgsImpl;

  @override
  Track? get track;
  @override
  DetailsMode? get mode;

  /// Create a copy of RecordTrackArgs
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RecordTrackArgsImplCopyWith<_$RecordTrackArgsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DetailsMode {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() tracks,
    required TResult Function() myTracks,
    required TResult Function() myFavouriteTracks,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? tracks,
    TResult? Function()? myTracks,
    TResult? Function()? myFavouriteTracks,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? tracks,
    TResult Function()? myTracks,
    TResult Function()? myFavouriteTracks,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TracksDetailsMode value) tracks,
    required TResult Function(_MyTracksMode value) myTracks,
    required TResult Function(_MyFavouriteTracks value) myFavouriteTracks,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TracksDetailsMode value)? tracks,
    TResult? Function(_MyTracksMode value)? myTracks,
    TResult? Function(_MyFavouriteTracks value)? myFavouriteTracks,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TracksDetailsMode value)? tracks,
    TResult Function(_MyTracksMode value)? myTracks,
    TResult Function(_MyFavouriteTracks value)? myFavouriteTracks,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailsModeCopyWith<$Res> {
  factory $DetailsModeCopyWith(
          DetailsMode value, $Res Function(DetailsMode) then) =
      _$DetailsModeCopyWithImpl<$Res, DetailsMode>;
}

/// @nodoc
class _$DetailsModeCopyWithImpl<$Res, $Val extends DetailsMode>
    implements $DetailsModeCopyWith<$Res> {
  _$DetailsModeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DetailsMode
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$TracksDetailsModeImplCopyWith<$Res> {
  factory _$$TracksDetailsModeImplCopyWith(_$TracksDetailsModeImpl value,
          $Res Function(_$TracksDetailsModeImpl) then) =
      __$$TracksDetailsModeImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TracksDetailsModeImplCopyWithImpl<$Res>
    extends _$DetailsModeCopyWithImpl<$Res, _$TracksDetailsModeImpl>
    implements _$$TracksDetailsModeImplCopyWith<$Res> {
  __$$TracksDetailsModeImplCopyWithImpl(_$TracksDetailsModeImpl _value,
      $Res Function(_$TracksDetailsModeImpl) _then)
      : super(_value, _then);

  /// Create a copy of DetailsMode
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$TracksDetailsModeImpl
    with DiagnosticableTreeMixin
    implements _TracksDetailsMode {
  const _$TracksDetailsModeImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DetailsMode.tracks()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'DetailsMode.tracks'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TracksDetailsModeImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() tracks,
    required TResult Function() myTracks,
    required TResult Function() myFavouriteTracks,
  }) {
    return tracks();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? tracks,
    TResult? Function()? myTracks,
    TResult? Function()? myFavouriteTracks,
  }) {
    return tracks?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? tracks,
    TResult Function()? myTracks,
    TResult Function()? myFavouriteTracks,
    required TResult orElse(),
  }) {
    if (tracks != null) {
      return tracks();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TracksDetailsMode value) tracks,
    required TResult Function(_MyTracksMode value) myTracks,
    required TResult Function(_MyFavouriteTracks value) myFavouriteTracks,
  }) {
    return tracks(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TracksDetailsMode value)? tracks,
    TResult? Function(_MyTracksMode value)? myTracks,
    TResult? Function(_MyFavouriteTracks value)? myFavouriteTracks,
  }) {
    return tracks?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TracksDetailsMode value)? tracks,
    TResult Function(_MyTracksMode value)? myTracks,
    TResult Function(_MyFavouriteTracks value)? myFavouriteTracks,
    required TResult orElse(),
  }) {
    if (tracks != null) {
      return tracks(this);
    }
    return orElse();
  }
}

abstract class _TracksDetailsMode implements DetailsMode {
  const factory _TracksDetailsMode() = _$TracksDetailsModeImpl;
}

/// @nodoc
abstract class _$$MyTracksModeImplCopyWith<$Res> {
  factory _$$MyTracksModeImplCopyWith(
          _$MyTracksModeImpl value, $Res Function(_$MyTracksModeImpl) then) =
      __$$MyTracksModeImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MyTracksModeImplCopyWithImpl<$Res>
    extends _$DetailsModeCopyWithImpl<$Res, _$MyTracksModeImpl>
    implements _$$MyTracksModeImplCopyWith<$Res> {
  __$$MyTracksModeImplCopyWithImpl(
      _$MyTracksModeImpl _value, $Res Function(_$MyTracksModeImpl) _then)
      : super(_value, _then);

  /// Create a copy of DetailsMode
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$MyTracksModeImpl with DiagnosticableTreeMixin implements _MyTracksMode {
  const _$MyTracksModeImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DetailsMode.myTracks()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'DetailsMode.myTracks'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$MyTracksModeImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() tracks,
    required TResult Function() myTracks,
    required TResult Function() myFavouriteTracks,
  }) {
    return myTracks();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? tracks,
    TResult? Function()? myTracks,
    TResult? Function()? myFavouriteTracks,
  }) {
    return myTracks?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? tracks,
    TResult Function()? myTracks,
    TResult Function()? myFavouriteTracks,
    required TResult orElse(),
  }) {
    if (myTracks != null) {
      return myTracks();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TracksDetailsMode value) tracks,
    required TResult Function(_MyTracksMode value) myTracks,
    required TResult Function(_MyFavouriteTracks value) myFavouriteTracks,
  }) {
    return myTracks(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TracksDetailsMode value)? tracks,
    TResult? Function(_MyTracksMode value)? myTracks,
    TResult? Function(_MyFavouriteTracks value)? myFavouriteTracks,
  }) {
    return myTracks?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TracksDetailsMode value)? tracks,
    TResult Function(_MyTracksMode value)? myTracks,
    TResult Function(_MyFavouriteTracks value)? myFavouriteTracks,
    required TResult orElse(),
  }) {
    if (myTracks != null) {
      return myTracks(this);
    }
    return orElse();
  }
}

abstract class _MyTracksMode implements DetailsMode {
  const factory _MyTracksMode() = _$MyTracksModeImpl;
}

/// @nodoc
abstract class _$$MyFavouriteTracksImplCopyWith<$Res> {
  factory _$$MyFavouriteTracksImplCopyWith(_$MyFavouriteTracksImpl value,
          $Res Function(_$MyFavouriteTracksImpl) then) =
      __$$MyFavouriteTracksImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MyFavouriteTracksImplCopyWithImpl<$Res>
    extends _$DetailsModeCopyWithImpl<$Res, _$MyFavouriteTracksImpl>
    implements _$$MyFavouriteTracksImplCopyWith<$Res> {
  __$$MyFavouriteTracksImplCopyWithImpl(_$MyFavouriteTracksImpl _value,
      $Res Function(_$MyFavouriteTracksImpl) _then)
      : super(_value, _then);

  /// Create a copy of DetailsMode
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$MyFavouriteTracksImpl
    with DiagnosticableTreeMixin
    implements _MyFavouriteTracks {
  const _$MyFavouriteTracksImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DetailsMode.myFavouriteTracks()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'DetailsMode.myFavouriteTracks'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$MyFavouriteTracksImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() tracks,
    required TResult Function() myTracks,
    required TResult Function() myFavouriteTracks,
  }) {
    return myFavouriteTracks();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? tracks,
    TResult? Function()? myTracks,
    TResult? Function()? myFavouriteTracks,
  }) {
    return myFavouriteTracks?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? tracks,
    TResult Function()? myTracks,
    TResult Function()? myFavouriteTracks,
    required TResult orElse(),
  }) {
    if (myFavouriteTracks != null) {
      return myFavouriteTracks();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TracksDetailsMode value) tracks,
    required TResult Function(_MyTracksMode value) myTracks,
    required TResult Function(_MyFavouriteTracks value) myFavouriteTracks,
  }) {
    return myFavouriteTracks(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TracksDetailsMode value)? tracks,
    TResult? Function(_MyTracksMode value)? myTracks,
    TResult? Function(_MyFavouriteTracks value)? myFavouriteTracks,
  }) {
    return myFavouriteTracks?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TracksDetailsMode value)? tracks,
    TResult Function(_MyTracksMode value)? myTracks,
    TResult Function(_MyFavouriteTracks value)? myFavouriteTracks,
    required TResult orElse(),
  }) {
    if (myFavouriteTracks != null) {
      return myFavouriteTracks(this);
    }
    return orElse();
  }
}

abstract class _MyFavouriteTracks implements DetailsMode {
  const factory _MyFavouriteTracks() = _$MyFavouriteTracksImpl;
}

/// @nodoc
mixin _$DetailsArgs {
  String get id => throw _privateConstructorUsedError;
  DetailsMode get mode => throw _privateConstructorUsedError;

  /// Create a copy of DetailsArgs
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DetailsArgsCopyWith<DetailsArgs> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailsArgsCopyWith<$Res> {
  factory $DetailsArgsCopyWith(
          DetailsArgs value, $Res Function(DetailsArgs) then) =
      _$DetailsArgsCopyWithImpl<$Res, DetailsArgs>;
  @useResult
  $Res call({String id, DetailsMode mode});

  $DetailsModeCopyWith<$Res> get mode;
}

/// @nodoc
class _$DetailsArgsCopyWithImpl<$Res, $Val extends DetailsArgs>
    implements $DetailsArgsCopyWith<$Res> {
  _$DetailsArgsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DetailsArgs
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? mode = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      mode: null == mode
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as DetailsMode,
    ) as $Val);
  }

  /// Create a copy of DetailsArgs
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DetailsModeCopyWith<$Res> get mode {
    return $DetailsModeCopyWith<$Res>(_value.mode, (value) {
      return _then(_value.copyWith(mode: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DetailsArgsImplCopyWith<$Res>
    implements $DetailsArgsCopyWith<$Res> {
  factory _$$DetailsArgsImplCopyWith(
          _$DetailsArgsImpl value, $Res Function(_$DetailsArgsImpl) then) =
      __$$DetailsArgsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, DetailsMode mode});

  @override
  $DetailsModeCopyWith<$Res> get mode;
}

/// @nodoc
class __$$DetailsArgsImplCopyWithImpl<$Res>
    extends _$DetailsArgsCopyWithImpl<$Res, _$DetailsArgsImpl>
    implements _$$DetailsArgsImplCopyWith<$Res> {
  __$$DetailsArgsImplCopyWithImpl(
      _$DetailsArgsImpl _value, $Res Function(_$DetailsArgsImpl) _then)
      : super(_value, _then);

  /// Create a copy of DetailsArgs
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? mode = null,
  }) {
    return _then(_$DetailsArgsImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      mode: null == mode
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as DetailsMode,
    ));
  }
}

/// @nodoc

class _$DetailsArgsImpl with DiagnosticableTreeMixin implements _DetailsArgs {
  const _$DetailsArgsImpl({required this.id, required this.mode});

  @override
  final String id;
  @override
  final DetailsMode mode;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DetailsArgs(id: $id, mode: $mode)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DetailsArgs'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('mode', mode));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailsArgsImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.mode, mode) || other.mode == mode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, mode);

  /// Create a copy of DetailsArgs
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailsArgsImplCopyWith<_$DetailsArgsImpl> get copyWith =>
      __$$DetailsArgsImplCopyWithImpl<_$DetailsArgsImpl>(this, _$identity);
}

abstract class _DetailsArgs implements DetailsArgs {
  const factory _DetailsArgs(
      {required final String id,
      required final DetailsMode mode}) = _$DetailsArgsImpl;

  @override
  String get id;
  @override
  DetailsMode get mode;

  /// Create a copy of DetailsArgs
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DetailsArgsImplCopyWith<_$DetailsArgsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
