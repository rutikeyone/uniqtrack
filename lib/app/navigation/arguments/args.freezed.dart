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
