// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_or_edit_memory_actions.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AddOrEditMemoryActions {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(VoidCallback chooseImageFromGallery,
            VoidCallback chooseImageFromCamera)
        showImageSourceChooser,
    required TResult Function(AddOrEditMemoryResult result) navigateWithResult,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(VoidCallback chooseImageFromGallery,
            VoidCallback chooseImageFromCamera)?
        showImageSourceChooser,
    TResult? Function(AddOrEditMemoryResult result)? navigateWithResult,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(VoidCallback chooseImageFromGallery,
            VoidCallback chooseImageFromCamera)?
        showImageSourceChooser,
    TResult Function(AddOrEditMemoryResult result)? navigateWithResult,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(
            _AddOrEditMemoryShowImageSourceChooserAction value)
        showImageSourceChooser,
    required TResult Function(_AddOrEditNavigateWithResultAction value)
        navigateWithResult,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddOrEditMemoryShowImageSourceChooserAction value)?
        showImageSourceChooser,
    TResult? Function(_AddOrEditNavigateWithResultAction value)?
        navigateWithResult,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddOrEditMemoryShowImageSourceChooserAction value)?
        showImageSourceChooser,
    TResult Function(_AddOrEditNavigateWithResultAction value)?
        navigateWithResult,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddOrEditMemoryActionsCopyWith<$Res> {
  factory $AddOrEditMemoryActionsCopyWith(AddOrEditMemoryActions value,
          $Res Function(AddOrEditMemoryActions) then) =
      _$AddOrEditMemoryActionsCopyWithImpl<$Res, AddOrEditMemoryActions>;
}

/// @nodoc
class _$AddOrEditMemoryActionsCopyWithImpl<$Res,
        $Val extends AddOrEditMemoryActions>
    implements $AddOrEditMemoryActionsCopyWith<$Res> {
  _$AddOrEditMemoryActionsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AddOrEditMemoryActions
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$AddOrEditMemoryShowImageSourceChooserActionImplCopyWith<
    $Res> {
  factory _$$AddOrEditMemoryShowImageSourceChooserActionImplCopyWith(
          _$AddOrEditMemoryShowImageSourceChooserActionImpl value,
          $Res Function(_$AddOrEditMemoryShowImageSourceChooserActionImpl)
              then) =
      __$$AddOrEditMemoryShowImageSourceChooserActionImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {VoidCallback chooseImageFromGallery,
      VoidCallback chooseImageFromCamera});
}

/// @nodoc
class __$$AddOrEditMemoryShowImageSourceChooserActionImplCopyWithImpl<$Res>
    extends _$AddOrEditMemoryActionsCopyWithImpl<$Res,
        _$AddOrEditMemoryShowImageSourceChooserActionImpl>
    implements
        _$$AddOrEditMemoryShowImageSourceChooserActionImplCopyWith<$Res> {
  __$$AddOrEditMemoryShowImageSourceChooserActionImplCopyWithImpl(
      _$AddOrEditMemoryShowImageSourceChooserActionImpl _value,
      $Res Function(_$AddOrEditMemoryShowImageSourceChooserActionImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddOrEditMemoryActions
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chooseImageFromGallery = null,
    Object? chooseImageFromCamera = null,
  }) {
    return _then(_$AddOrEditMemoryShowImageSourceChooserActionImpl(
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

class _$AddOrEditMemoryShowImageSourceChooserActionImpl
    extends _AddOrEditMemoryShowImageSourceChooserAction
    with DiagnosticableTreeMixin {
  const _$AddOrEditMemoryShowImageSourceChooserActionImpl(
      {required this.chooseImageFromGallery,
      required this.chooseImageFromCamera})
      : super._();

  @override
  final VoidCallback chooseImageFromGallery;
  @override
  final VoidCallback chooseImageFromCamera;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AddOrEditMemoryActions.showImageSourceChooser(chooseImageFromGallery: $chooseImageFromGallery, chooseImageFromCamera: $chooseImageFromCamera)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'AddOrEditMemoryActions.showImageSourceChooser'))
      ..add(
          DiagnosticsProperty('chooseImageFromGallery', chooseImageFromGallery))
      ..add(
          DiagnosticsProperty('chooseImageFromCamera', chooseImageFromCamera));
  }

  /// Create a copy of AddOrEditMemoryActions
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddOrEditMemoryShowImageSourceChooserActionImplCopyWith<
          _$AddOrEditMemoryShowImageSourceChooserActionImpl>
      get copyWith =>
          __$$AddOrEditMemoryShowImageSourceChooserActionImplCopyWithImpl<
                  _$AddOrEditMemoryShowImageSourceChooserActionImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(VoidCallback chooseImageFromGallery,
            VoidCallback chooseImageFromCamera)
        showImageSourceChooser,
    required TResult Function(AddOrEditMemoryResult result) navigateWithResult,
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
    TResult? Function(AddOrEditMemoryResult result)? navigateWithResult,
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
    TResult Function(AddOrEditMemoryResult result)? navigateWithResult,
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
    required TResult Function(
            _AddOrEditMemoryShowImageSourceChooserAction value)
        showImageSourceChooser,
    required TResult Function(_AddOrEditNavigateWithResultAction value)
        navigateWithResult,
  }) {
    return showImageSourceChooser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddOrEditMemoryShowImageSourceChooserAction value)?
        showImageSourceChooser,
    TResult? Function(_AddOrEditNavigateWithResultAction value)?
        navigateWithResult,
  }) {
    return showImageSourceChooser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddOrEditMemoryShowImageSourceChooserAction value)?
        showImageSourceChooser,
    TResult Function(_AddOrEditNavigateWithResultAction value)?
        navigateWithResult,
    required TResult orElse(),
  }) {
    if (showImageSourceChooser != null) {
      return showImageSourceChooser(this);
    }
    return orElse();
  }
}

abstract class _AddOrEditMemoryShowImageSourceChooserAction
    extends AddOrEditMemoryActions {
  const factory _AddOrEditMemoryShowImageSourceChooserAction(
          {required final VoidCallback chooseImageFromGallery,
          required final VoidCallback chooseImageFromCamera}) =
      _$AddOrEditMemoryShowImageSourceChooserActionImpl;
  const _AddOrEditMemoryShowImageSourceChooserAction._() : super._();

  VoidCallback get chooseImageFromGallery;
  VoidCallback get chooseImageFromCamera;

  /// Create a copy of AddOrEditMemoryActions
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddOrEditMemoryShowImageSourceChooserActionImplCopyWith<
          _$AddOrEditMemoryShowImageSourceChooserActionImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddOrEditNavigateWithResultActionImplCopyWith<$Res> {
  factory _$$AddOrEditNavigateWithResultActionImplCopyWith(
          _$AddOrEditNavigateWithResultActionImpl value,
          $Res Function(_$AddOrEditNavigateWithResultActionImpl) then) =
      __$$AddOrEditNavigateWithResultActionImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AddOrEditMemoryResult result});

  $AddOrEditMemoryResultCopyWith<$Res> get result;
}

/// @nodoc
class __$$AddOrEditNavigateWithResultActionImplCopyWithImpl<$Res>
    extends _$AddOrEditMemoryActionsCopyWithImpl<$Res,
        _$AddOrEditNavigateWithResultActionImpl>
    implements _$$AddOrEditNavigateWithResultActionImplCopyWith<$Res> {
  __$$AddOrEditNavigateWithResultActionImplCopyWithImpl(
      _$AddOrEditNavigateWithResultActionImpl _value,
      $Res Function(_$AddOrEditNavigateWithResultActionImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddOrEditMemoryActions
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = null,
  }) {
    return _then(_$AddOrEditNavigateWithResultActionImpl(
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as AddOrEditMemoryResult,
    ));
  }

  /// Create a copy of AddOrEditMemoryActions
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AddOrEditMemoryResultCopyWith<$Res> get result {
    return $AddOrEditMemoryResultCopyWith<$Res>(_value.result, (value) {
      return _then(_value.copyWith(result: value));
    });
  }
}

/// @nodoc

class _$AddOrEditNavigateWithResultActionImpl
    extends _AddOrEditNavigateWithResultAction with DiagnosticableTreeMixin {
  const _$AddOrEditNavigateWithResultActionImpl({required this.result})
      : super._();

  @override
  final AddOrEditMemoryResult result;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AddOrEditMemoryActions.navigateWithResult(result: $result)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'AddOrEditMemoryActions.navigateWithResult'))
      ..add(DiagnosticsProperty('result', result));
  }

  /// Create a copy of AddOrEditMemoryActions
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddOrEditNavigateWithResultActionImplCopyWith<
          _$AddOrEditNavigateWithResultActionImpl>
      get copyWith => __$$AddOrEditNavigateWithResultActionImplCopyWithImpl<
          _$AddOrEditNavigateWithResultActionImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(VoidCallback chooseImageFromGallery,
            VoidCallback chooseImageFromCamera)
        showImageSourceChooser,
    required TResult Function(AddOrEditMemoryResult result) navigateWithResult,
  }) {
    return navigateWithResult(result);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(VoidCallback chooseImageFromGallery,
            VoidCallback chooseImageFromCamera)?
        showImageSourceChooser,
    TResult? Function(AddOrEditMemoryResult result)? navigateWithResult,
  }) {
    return navigateWithResult?.call(result);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(VoidCallback chooseImageFromGallery,
            VoidCallback chooseImageFromCamera)?
        showImageSourceChooser,
    TResult Function(AddOrEditMemoryResult result)? navigateWithResult,
    required TResult orElse(),
  }) {
    if (navigateWithResult != null) {
      return navigateWithResult(result);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(
            _AddOrEditMemoryShowImageSourceChooserAction value)
        showImageSourceChooser,
    required TResult Function(_AddOrEditNavigateWithResultAction value)
        navigateWithResult,
  }) {
    return navigateWithResult(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddOrEditMemoryShowImageSourceChooserAction value)?
        showImageSourceChooser,
    TResult? Function(_AddOrEditNavigateWithResultAction value)?
        navigateWithResult,
  }) {
    return navigateWithResult?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddOrEditMemoryShowImageSourceChooserAction value)?
        showImageSourceChooser,
    TResult Function(_AddOrEditNavigateWithResultAction value)?
        navigateWithResult,
    required TResult orElse(),
  }) {
    if (navigateWithResult != null) {
      return navigateWithResult(this);
    }
    return orElse();
  }
}

abstract class _AddOrEditNavigateWithResultAction
    extends AddOrEditMemoryActions {
  const factory _AddOrEditNavigateWithResultAction(
          {required final AddOrEditMemoryResult result}) =
      _$AddOrEditNavigateWithResultActionImpl;
  const _AddOrEditNavigateWithResultAction._() : super._();

  AddOrEditMemoryResult get result;

  /// Create a copy of AddOrEditMemoryActions
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddOrEditNavigateWithResultActionImplCopyWith<
          _$AddOrEditNavigateWithResultActionImpl>
      get copyWith => throw _privateConstructorUsedError;
}
