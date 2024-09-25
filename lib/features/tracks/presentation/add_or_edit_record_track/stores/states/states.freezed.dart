// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'states.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AddOrEditRecordTrackModeState {
  Track? get track => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Track? track) add,
    required TResult Function(Track track) edit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Track? track)? add,
    TResult? Function(Track track)? edit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Track? track)? add,
    TResult Function(Track track)? edit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddRecordTrackModeState value) add,
    required TResult Function(_EditRecordTrackModeState value) edit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddRecordTrackModeState value)? add,
    TResult? Function(_EditRecordTrackModeState value)? edit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddRecordTrackModeState value)? add,
    TResult Function(_EditRecordTrackModeState value)? edit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of AddOrEditRecordTrackModeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AddOrEditRecordTrackModeStateCopyWith<AddOrEditRecordTrackModeState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddOrEditRecordTrackModeStateCopyWith<$Res> {
  factory $AddOrEditRecordTrackModeStateCopyWith(
          AddOrEditRecordTrackModeState value,
          $Res Function(AddOrEditRecordTrackModeState) then) =
      _$AddOrEditRecordTrackModeStateCopyWithImpl<$Res,
          AddOrEditRecordTrackModeState>;
  @useResult
  $Res call({Track track});

  $TrackCopyWith<$Res>? get track;
}

/// @nodoc
class _$AddOrEditRecordTrackModeStateCopyWithImpl<$Res,
        $Val extends AddOrEditRecordTrackModeState>
    implements $AddOrEditRecordTrackModeStateCopyWith<$Res> {
  _$AddOrEditRecordTrackModeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AddOrEditRecordTrackModeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? track = null,
  }) {
    return _then(_value.copyWith(
      track: null == track
          ? _value.track!
          : track // ignore: cast_nullable_to_non_nullable
              as Track,
    ) as $Val);
  }

  /// Create a copy of AddOrEditRecordTrackModeState
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
}

/// @nodoc
abstract class _$$AddRecordTrackModeStateImplCopyWith<$Res>
    implements $AddOrEditRecordTrackModeStateCopyWith<$Res> {
  factory _$$AddRecordTrackModeStateImplCopyWith(
          _$AddRecordTrackModeStateImpl value,
          $Res Function(_$AddRecordTrackModeStateImpl) then) =
      __$$AddRecordTrackModeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Track? track});

  @override
  $TrackCopyWith<$Res>? get track;
}

/// @nodoc
class __$$AddRecordTrackModeStateImplCopyWithImpl<$Res>
    extends _$AddOrEditRecordTrackModeStateCopyWithImpl<$Res,
        _$AddRecordTrackModeStateImpl>
    implements _$$AddRecordTrackModeStateImplCopyWith<$Res> {
  __$$AddRecordTrackModeStateImplCopyWithImpl(
      _$AddRecordTrackModeStateImpl _value,
      $Res Function(_$AddRecordTrackModeStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddOrEditRecordTrackModeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? track = freezed,
  }) {
    return _then(_$AddRecordTrackModeStateImpl(
      track: freezed == track
          ? _value.track
          : track // ignore: cast_nullable_to_non_nullable
              as Track?,
    ));
  }
}

/// @nodoc

class _$AddRecordTrackModeStateImpl implements _AddRecordTrackModeState {
  const _$AddRecordTrackModeStateImpl({required this.track});

  @override
  final Track? track;

  @override
  String toString() {
    return 'AddOrEditRecordTrackModeState.add(track: $track)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddRecordTrackModeStateImpl &&
            (identical(other.track, track) || other.track == track));
  }

  @override
  int get hashCode => Object.hash(runtimeType, track);

  /// Create a copy of AddOrEditRecordTrackModeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddRecordTrackModeStateImplCopyWith<_$AddRecordTrackModeStateImpl>
      get copyWith => __$$AddRecordTrackModeStateImplCopyWithImpl<
          _$AddRecordTrackModeStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Track? track) add,
    required TResult Function(Track track) edit,
  }) {
    return add(track);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Track? track)? add,
    TResult? Function(Track track)? edit,
  }) {
    return add?.call(track);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Track? track)? add,
    TResult Function(Track track)? edit,
    required TResult orElse(),
  }) {
    if (add != null) {
      return add(track);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddRecordTrackModeState value) add,
    required TResult Function(_EditRecordTrackModeState value) edit,
  }) {
    return add(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddRecordTrackModeState value)? add,
    TResult? Function(_EditRecordTrackModeState value)? edit,
  }) {
    return add?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddRecordTrackModeState value)? add,
    TResult Function(_EditRecordTrackModeState value)? edit,
    required TResult orElse(),
  }) {
    if (add != null) {
      return add(this);
    }
    return orElse();
  }
}

abstract class _AddRecordTrackModeState
    implements AddOrEditRecordTrackModeState {
  const factory _AddRecordTrackModeState({required final Track? track}) =
      _$AddRecordTrackModeStateImpl;

  @override
  Track? get track;

  /// Create a copy of AddOrEditRecordTrackModeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddRecordTrackModeStateImplCopyWith<_$AddRecordTrackModeStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EditRecordTrackModeStateImplCopyWith<$Res>
    implements $AddOrEditRecordTrackModeStateCopyWith<$Res> {
  factory _$$EditRecordTrackModeStateImplCopyWith(
          _$EditRecordTrackModeStateImpl value,
          $Res Function(_$EditRecordTrackModeStateImpl) then) =
      __$$EditRecordTrackModeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Track track});

  @override
  $TrackCopyWith<$Res> get track;
}

/// @nodoc
class __$$EditRecordTrackModeStateImplCopyWithImpl<$Res>
    extends _$AddOrEditRecordTrackModeStateCopyWithImpl<$Res,
        _$EditRecordTrackModeStateImpl>
    implements _$$EditRecordTrackModeStateImplCopyWith<$Res> {
  __$$EditRecordTrackModeStateImplCopyWithImpl(
      _$EditRecordTrackModeStateImpl _value,
      $Res Function(_$EditRecordTrackModeStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddOrEditRecordTrackModeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? track = null,
  }) {
    return _then(_$EditRecordTrackModeStateImpl(
      track: null == track
          ? _value.track
          : track // ignore: cast_nullable_to_non_nullable
              as Track,
    ));
  }

  /// Create a copy of AddOrEditRecordTrackModeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TrackCopyWith<$Res> get track {
    return $TrackCopyWith<$Res>(_value.track, (value) {
      return _then(_value.copyWith(track: value));
    });
  }
}

/// @nodoc

class _$EditRecordTrackModeStateImpl implements _EditRecordTrackModeState {
  const _$EditRecordTrackModeStateImpl({required this.track});

  @override
  final Track track;

  @override
  String toString() {
    return 'AddOrEditRecordTrackModeState.edit(track: $track)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditRecordTrackModeStateImpl &&
            (identical(other.track, track) || other.track == track));
  }

  @override
  int get hashCode => Object.hash(runtimeType, track);

  /// Create a copy of AddOrEditRecordTrackModeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EditRecordTrackModeStateImplCopyWith<_$EditRecordTrackModeStateImpl>
      get copyWith => __$$EditRecordTrackModeStateImplCopyWithImpl<
          _$EditRecordTrackModeStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Track? track) add,
    required TResult Function(Track track) edit,
  }) {
    return edit(track);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Track? track)? add,
    TResult? Function(Track track)? edit,
  }) {
    return edit?.call(track);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Track? track)? add,
    TResult Function(Track track)? edit,
    required TResult orElse(),
  }) {
    if (edit != null) {
      return edit(track);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddRecordTrackModeState value) add,
    required TResult Function(_EditRecordTrackModeState value) edit,
  }) {
    return edit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddRecordTrackModeState value)? add,
    TResult? Function(_EditRecordTrackModeState value)? edit,
  }) {
    return edit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddRecordTrackModeState value)? add,
    TResult Function(_EditRecordTrackModeState value)? edit,
    required TResult orElse(),
  }) {
    if (edit != null) {
      return edit(this);
    }
    return orElse();
  }
}

abstract class _EditRecordTrackModeState
    implements AddOrEditRecordTrackModeState {
  const factory _EditRecordTrackModeState({required final Track track}) =
      _$EditRecordTrackModeStateImpl;

  @override
  Track get track;

  /// Create a copy of AddOrEditRecordTrackModeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EditRecordTrackModeStateImplCopyWith<_$EditRecordTrackModeStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AddOrEditRecordTrackState {
  AddOrEditRecordTrackModeState get modeState =>
      throw _privateConstructorUsedError;
  TrackName get trackName => throw _privateConstructorUsedError;
  Comment get comment => throw _privateConstructorUsedError;
  FormzSubmissionStatus get statusState => throw _privateConstructorUsedError;
  bool get canSave => throw _privateConstructorUsedError;

  /// Create a copy of AddOrEditRecordTrackState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AddOrEditRecordTrackStateCopyWith<AddOrEditRecordTrackState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddOrEditRecordTrackStateCopyWith<$Res> {
  factory $AddOrEditRecordTrackStateCopyWith(AddOrEditRecordTrackState value,
          $Res Function(AddOrEditRecordTrackState) then) =
      _$AddOrEditRecordTrackStateCopyWithImpl<$Res, AddOrEditRecordTrackState>;
  @useResult
  $Res call(
      {AddOrEditRecordTrackModeState modeState,
      TrackName trackName,
      Comment comment,
      FormzSubmissionStatus statusState,
      bool canSave});

  $AddOrEditRecordTrackModeStateCopyWith<$Res> get modeState;
}

/// @nodoc
class _$AddOrEditRecordTrackStateCopyWithImpl<$Res,
        $Val extends AddOrEditRecordTrackState>
    implements $AddOrEditRecordTrackStateCopyWith<$Res> {
  _$AddOrEditRecordTrackStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AddOrEditRecordTrackState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? modeState = null,
    Object? trackName = null,
    Object? comment = null,
    Object? statusState = null,
    Object? canSave = null,
  }) {
    return _then(_value.copyWith(
      modeState: null == modeState
          ? _value.modeState
          : modeState // ignore: cast_nullable_to_non_nullable
              as AddOrEditRecordTrackModeState,
      trackName: null == trackName
          ? _value.trackName
          : trackName // ignore: cast_nullable_to_non_nullable
              as TrackName,
      comment: null == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as Comment,
      statusState: null == statusState
          ? _value.statusState
          : statusState // ignore: cast_nullable_to_non_nullable
              as FormzSubmissionStatus,
      canSave: null == canSave
          ? _value.canSave
          : canSave // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  /// Create a copy of AddOrEditRecordTrackState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AddOrEditRecordTrackModeStateCopyWith<$Res> get modeState {
    return $AddOrEditRecordTrackModeStateCopyWith<$Res>(_value.modeState,
        (value) {
      return _then(_value.copyWith(modeState: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AddOrEditRecordTrackStateImplCopyWith<$Res>
    implements $AddOrEditRecordTrackStateCopyWith<$Res> {
  factory _$$AddOrEditRecordTrackStateImplCopyWith(
          _$AddOrEditRecordTrackStateImpl value,
          $Res Function(_$AddOrEditRecordTrackStateImpl) then) =
      __$$AddOrEditRecordTrackStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AddOrEditRecordTrackModeState modeState,
      TrackName trackName,
      Comment comment,
      FormzSubmissionStatus statusState,
      bool canSave});

  @override
  $AddOrEditRecordTrackModeStateCopyWith<$Res> get modeState;
}

/// @nodoc
class __$$AddOrEditRecordTrackStateImplCopyWithImpl<$Res>
    extends _$AddOrEditRecordTrackStateCopyWithImpl<$Res,
        _$AddOrEditRecordTrackStateImpl>
    implements _$$AddOrEditRecordTrackStateImplCopyWith<$Res> {
  __$$AddOrEditRecordTrackStateImplCopyWithImpl(
      _$AddOrEditRecordTrackStateImpl _value,
      $Res Function(_$AddOrEditRecordTrackStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddOrEditRecordTrackState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? modeState = null,
    Object? trackName = null,
    Object? comment = null,
    Object? statusState = null,
    Object? canSave = null,
  }) {
    return _then(_$AddOrEditRecordTrackStateImpl(
      modeState: null == modeState
          ? _value.modeState
          : modeState // ignore: cast_nullable_to_non_nullable
              as AddOrEditRecordTrackModeState,
      trackName: null == trackName
          ? _value.trackName
          : trackName // ignore: cast_nullable_to_non_nullable
              as TrackName,
      comment: null == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as Comment,
      statusState: null == statusState
          ? _value.statusState
          : statusState // ignore: cast_nullable_to_non_nullable
              as FormzSubmissionStatus,
      canSave: null == canSave
          ? _value.canSave
          : canSave // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$AddOrEditRecordTrackStateImpl extends _AddOrEditRecordTrackState {
  const _$AddOrEditRecordTrackStateImpl(
      {required this.modeState,
      required this.trackName,
      required this.comment,
      required this.statusState,
      required this.canSave})
      : super._();

  @override
  final AddOrEditRecordTrackModeState modeState;
  @override
  final TrackName trackName;
  @override
  final Comment comment;
  @override
  final FormzSubmissionStatus statusState;
  @override
  final bool canSave;

  @override
  String toString() {
    return 'AddOrEditRecordTrackState(modeState: $modeState, trackName: $trackName, comment: $comment, statusState: $statusState, canSave: $canSave)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddOrEditRecordTrackStateImpl &&
            (identical(other.modeState, modeState) ||
                other.modeState == modeState) &&
            (identical(other.trackName, trackName) ||
                other.trackName == trackName) &&
            (identical(other.comment, comment) || other.comment == comment) &&
            (identical(other.statusState, statusState) ||
                other.statusState == statusState) &&
            (identical(other.canSave, canSave) || other.canSave == canSave));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, modeState, trackName, comment, statusState, canSave);

  /// Create a copy of AddOrEditRecordTrackState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddOrEditRecordTrackStateImplCopyWith<_$AddOrEditRecordTrackStateImpl>
      get copyWith => __$$AddOrEditRecordTrackStateImplCopyWithImpl<
          _$AddOrEditRecordTrackStateImpl>(this, _$identity);
}

abstract class _AddOrEditRecordTrackState extends AddOrEditRecordTrackState {
  const factory _AddOrEditRecordTrackState(
      {required final AddOrEditRecordTrackModeState modeState,
      required final TrackName trackName,
      required final Comment comment,
      required final FormzSubmissionStatus statusState,
      required final bool canSave}) = _$AddOrEditRecordTrackStateImpl;
  const _AddOrEditRecordTrackState._() : super._();

  @override
  AddOrEditRecordTrackModeState get modeState;
  @override
  TrackName get trackName;
  @override
  Comment get comment;
  @override
  FormzSubmissionStatus get statusState;
  @override
  bool get canSave;

  /// Create a copy of AddOrEditRecordTrackState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddOrEditRecordTrackStateImplCopyWith<_$AddOrEditRecordTrackStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AddOrEditRecordTrackActions {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() navigateBack,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? navigateBack,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? navigateBack,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddOrEditRecordTrackNavigateBackAction value)
        navigateBack,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddOrEditRecordTrackNavigateBackAction value)?
        navigateBack,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddOrEditRecordTrackNavigateBackAction value)?
        navigateBack,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddOrEditRecordTrackActionsCopyWith<$Res> {
  factory $AddOrEditRecordTrackActionsCopyWith(
          AddOrEditRecordTrackActions value,
          $Res Function(AddOrEditRecordTrackActions) then) =
      _$AddOrEditRecordTrackActionsCopyWithImpl<$Res,
          AddOrEditRecordTrackActions>;
}

/// @nodoc
class _$AddOrEditRecordTrackActionsCopyWithImpl<$Res,
        $Val extends AddOrEditRecordTrackActions>
    implements $AddOrEditRecordTrackActionsCopyWith<$Res> {
  _$AddOrEditRecordTrackActionsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AddOrEditRecordTrackActions
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$AddOrEditRecordTrackNavigateBackActionImplCopyWith<$Res> {
  factory _$$AddOrEditRecordTrackNavigateBackActionImplCopyWith(
          _$AddOrEditRecordTrackNavigateBackActionImpl value,
          $Res Function(_$AddOrEditRecordTrackNavigateBackActionImpl) then) =
      __$$AddOrEditRecordTrackNavigateBackActionImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AddOrEditRecordTrackNavigateBackActionImplCopyWithImpl<$Res>
    extends _$AddOrEditRecordTrackActionsCopyWithImpl<$Res,
        _$AddOrEditRecordTrackNavigateBackActionImpl>
    implements _$$AddOrEditRecordTrackNavigateBackActionImplCopyWith<$Res> {
  __$$AddOrEditRecordTrackNavigateBackActionImplCopyWithImpl(
      _$AddOrEditRecordTrackNavigateBackActionImpl _value,
      $Res Function(_$AddOrEditRecordTrackNavigateBackActionImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddOrEditRecordTrackActions
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AddOrEditRecordTrackNavigateBackActionImpl
    implements _AddOrEditRecordTrackNavigateBackAction {
  const _$AddOrEditRecordTrackNavigateBackActionImpl();

  @override
  String toString() {
    return 'AddOrEditRecordTrackActions.navigateBack()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddOrEditRecordTrackNavigateBackActionImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() navigateBack,
  }) {
    return navigateBack();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? navigateBack,
  }) {
    return navigateBack?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? navigateBack,
    required TResult orElse(),
  }) {
    if (navigateBack != null) {
      return navigateBack();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddOrEditRecordTrackNavigateBackAction value)
        navigateBack,
  }) {
    return navigateBack(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddOrEditRecordTrackNavigateBackAction value)?
        navigateBack,
  }) {
    return navigateBack?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddOrEditRecordTrackNavigateBackAction value)?
        navigateBack,
    required TResult orElse(),
  }) {
    if (navigateBack != null) {
      return navigateBack(this);
    }
    return orElse();
  }
}

abstract class _AddOrEditRecordTrackNavigateBackAction
    implements AddOrEditRecordTrackActions {
  const factory _AddOrEditRecordTrackNavigateBackAction() =
      _$AddOrEditRecordTrackNavigateBackActionImpl;
}
