// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_actions.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RegisterActions {
  VoidCallback get chooseImageFromGallery => throw _privateConstructorUsedError;
  VoidCallback get chooseImageFromCamera => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(VoidCallback chooseImageFromGallery,
            VoidCallback chooseImageFromCamera)
        showImageSourceChooser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(VoidCallback chooseImageFromGallery,
            VoidCallback chooseImageFromCamera)?
        showImageSourceChooser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(VoidCallback chooseImageFromGallery,
            VoidCallback chooseImageFromCamera)?
        showImageSourceChooser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RegisterShowImageSourceChooser value)
        showImageSourceChooser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RegisterShowImageSourceChooser value)?
        showImageSourceChooser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RegisterShowImageSourceChooser value)?
        showImageSourceChooser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of RegisterActions
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RegisterActionsCopyWith<RegisterActions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterActionsCopyWith<$Res> {
  factory $RegisterActionsCopyWith(
          RegisterActions value, $Res Function(RegisterActions) then) =
      _$RegisterActionsCopyWithImpl<$Res, RegisterActions>;
  @useResult
  $Res call(
      {VoidCallback chooseImageFromGallery,
      VoidCallback chooseImageFromCamera});
}

/// @nodoc
class _$RegisterActionsCopyWithImpl<$Res, $Val extends RegisterActions>
    implements $RegisterActionsCopyWith<$Res> {
  _$RegisterActionsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RegisterActions
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chooseImageFromGallery = null,
    Object? chooseImageFromCamera = null,
  }) {
    return _then(_value.copyWith(
      chooseImageFromGallery: null == chooseImageFromGallery
          ? _value.chooseImageFromGallery
          : chooseImageFromGallery // ignore: cast_nullable_to_non_nullable
              as VoidCallback,
      chooseImageFromCamera: null == chooseImageFromCamera
          ? _value.chooseImageFromCamera
          : chooseImageFromCamera // ignore: cast_nullable_to_non_nullable
              as VoidCallback,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RegisterShowImageSourceChooserImplCopyWith<$Res>
    implements $RegisterActionsCopyWith<$Res> {
  factory _$$RegisterShowImageSourceChooserImplCopyWith(
          _$RegisterShowImageSourceChooserImpl value,
          $Res Function(_$RegisterShowImageSourceChooserImpl) then) =
      __$$RegisterShowImageSourceChooserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {VoidCallback chooseImageFromGallery,
      VoidCallback chooseImageFromCamera});
}

/// @nodoc
class __$$RegisterShowImageSourceChooserImplCopyWithImpl<$Res>
    extends _$RegisterActionsCopyWithImpl<$Res,
        _$RegisterShowImageSourceChooserImpl>
    implements _$$RegisterShowImageSourceChooserImplCopyWith<$Res> {
  __$$RegisterShowImageSourceChooserImplCopyWithImpl(
      _$RegisterShowImageSourceChooserImpl _value,
      $Res Function(_$RegisterShowImageSourceChooserImpl) _then)
      : super(_value, _then);

  /// Create a copy of RegisterActions
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chooseImageFromGallery = null,
    Object? chooseImageFromCamera = null,
  }) {
    return _then(_$RegisterShowImageSourceChooserImpl(
      chooseImageFromGallery: null == chooseImageFromGallery
          ? _value.chooseImageFromGallery
          : chooseImageFromGallery // ignore: cast_nullable_to_non_nullable
              as VoidCallback,
      chooseImageFromCamera: null == chooseImageFromCamera
          ? _value.chooseImageFromCamera
          : chooseImageFromCamera // ignore: cast_nullable_to_non_nullable
              as VoidCallback,
    ));
  }
}

/// @nodoc

class _$RegisterShowImageSourceChooserImpl
    extends _RegisterShowImageSourceChooser with DiagnosticableTreeMixin {
  const _$RegisterShowImageSourceChooserImpl(
      {required this.chooseImageFromGallery,
      required this.chooseImageFromCamera})
      : super._();

  @override
  final VoidCallback chooseImageFromGallery;
  @override
  final VoidCallback chooseImageFromCamera;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RegisterActions.showImageSourceChooser(chooseImageFromGallery: $chooseImageFromGallery, chooseImageFromCamera: $chooseImageFromCamera)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
          DiagnosticsProperty('type', 'RegisterActions.showImageSourceChooser'))
      ..add(
          DiagnosticsProperty('chooseImageFromGallery', chooseImageFromGallery))
      ..add(
          DiagnosticsProperty('chooseImageFromCamera', chooseImageFromCamera));
  }

  /// Create a copy of RegisterActions
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterShowImageSourceChooserImplCopyWith<
          _$RegisterShowImageSourceChooserImpl>
      get copyWith => __$$RegisterShowImageSourceChooserImplCopyWithImpl<
          _$RegisterShowImageSourceChooserImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(VoidCallback chooseImageFromGallery,
            VoidCallback chooseImageFromCamera)
        showImageSourceChooser,
  }) {
    return showImageSourceChooser(
        chooseImageFromGallery, chooseImageFromCamera);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(VoidCallback chooseImageFromGallery,
            VoidCallback chooseImageFromCamera)?
        showImageSourceChooser,
  }) {
    return showImageSourceChooser?.call(
        chooseImageFromGallery, chooseImageFromCamera);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(VoidCallback chooseImageFromGallery,
            VoidCallback chooseImageFromCamera)?
        showImageSourceChooser,
    required TResult orElse(),
  }) {
    if (showImageSourceChooser != null) {
      return showImageSourceChooser(
          chooseImageFromGallery, chooseImageFromCamera);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RegisterShowImageSourceChooser value)
        showImageSourceChooser,
  }) {
    return showImageSourceChooser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RegisterShowImageSourceChooser value)?
        showImageSourceChooser,
  }) {
    return showImageSourceChooser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RegisterShowImageSourceChooser value)?
        showImageSourceChooser,
    required TResult orElse(),
  }) {
    if (showImageSourceChooser != null) {
      return showImageSourceChooser(this);
    }
    return orElse();
  }
}

abstract class _RegisterShowImageSourceChooser extends RegisterActions {
  const factory _RegisterShowImageSourceChooser(
          {required final VoidCallback chooseImageFromGallery,
          required final VoidCallback chooseImageFromCamera}) =
      _$RegisterShowImageSourceChooserImpl;
  const _RegisterShowImageSourceChooser._() : super._();

  @override
  VoidCallback get chooseImageFromGallery;
  @override
  VoidCallback get chooseImageFromCamera;

  /// Create a copy of RegisterActions
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RegisterShowImageSourceChooserImplCopyWith<
          _$RegisterShowImageSourceChooserImpl>
      get copyWith => throw _privateConstructorUsedError;
}
