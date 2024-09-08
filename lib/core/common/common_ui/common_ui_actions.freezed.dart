// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'common_ui_actions.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CommonUIActions {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            AppStrings header,
            AppStrings body,
            CupertinoDialogActivity? activity,
            VoidCallback? closeCallback,
            AppStrings close)
        cupertinoDialog,
    required TResult Function() showLoader,
    required TResult Function() hideLoader,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            AppStrings header,
            AppStrings body,
            CupertinoDialogActivity? activity,
            VoidCallback? closeCallback,
            AppStrings close)?
        cupertinoDialog,
    TResult? Function()? showLoader,
    TResult? Function()? hideLoader,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            AppStrings header,
            AppStrings body,
            CupertinoDialogActivity? activity,
            VoidCallback? closeCallback,
            AppStrings close)?
        cupertinoDialog,
    TResult Function()? showLoader,
    TResult Function()? hideLoader,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CommonCupertinoDialogAction value)
        cupertinoDialog,
    required TResult Function(CommonShowLoaderAction value) showLoader,
    required TResult Function(CommonHideLoaderAction value) hideLoader,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CommonCupertinoDialogAction value)? cupertinoDialog,
    TResult? Function(CommonShowLoaderAction value)? showLoader,
    TResult? Function(CommonHideLoaderAction value)? hideLoader,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CommonCupertinoDialogAction value)? cupertinoDialog,
    TResult Function(CommonShowLoaderAction value)? showLoader,
    TResult Function(CommonHideLoaderAction value)? hideLoader,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommonUIActionsCopyWith<$Res> {
  factory $CommonUIActionsCopyWith(
          CommonUIActions value, $Res Function(CommonUIActions) then) =
      _$CommonUIActionsCopyWithImpl<$Res, CommonUIActions>;
}

/// @nodoc
class _$CommonUIActionsCopyWithImpl<$Res, $Val extends CommonUIActions>
    implements $CommonUIActionsCopyWith<$Res> {
  _$CommonUIActionsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CommonUIActions
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$CommonCupertinoDialogActionImplCopyWith<$Res> {
  factory _$$CommonCupertinoDialogActionImplCopyWith(
          _$CommonCupertinoDialogActionImpl value,
          $Res Function(_$CommonCupertinoDialogActionImpl) then) =
      __$$CommonCupertinoDialogActionImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {AppStrings header,
      AppStrings body,
      CupertinoDialogActivity? activity,
      VoidCallback? closeCallback,
      AppStrings close});

  $AppStringsCopyWith<$Res> get header;
  $AppStringsCopyWith<$Res> get body;
  $CupertinoDialogActivityCopyWith<$Res>? get activity;
  $AppStringsCopyWith<$Res> get close;
}

/// @nodoc
class __$$CommonCupertinoDialogActionImplCopyWithImpl<$Res>
    extends _$CommonUIActionsCopyWithImpl<$Res,
        _$CommonCupertinoDialogActionImpl>
    implements _$$CommonCupertinoDialogActionImplCopyWith<$Res> {
  __$$CommonCupertinoDialogActionImplCopyWithImpl(
      _$CommonCupertinoDialogActionImpl _value,
      $Res Function(_$CommonCupertinoDialogActionImpl) _then)
      : super(_value, _then);

  /// Create a copy of CommonUIActions
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? header = null,
    Object? body = null,
    Object? activity = freezed,
    Object? closeCallback = freezed,
    Object? close = null,
  }) {
    return _then(_$CommonCupertinoDialogActionImpl(
      header: null == header
          ? _value.header
          : header // ignore: cast_nullable_to_non_nullable
              as AppStrings,
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as AppStrings,
      activity: freezed == activity
          ? _value.activity
          : activity // ignore: cast_nullable_to_non_nullable
              as CupertinoDialogActivity?,
      closeCallback: freezed == closeCallback
          ? _value.closeCallback
          : closeCallback // ignore: cast_nullable_to_non_nullable
              as VoidCallback?,
      close: null == close
          ? _value.close
          : close // ignore: cast_nullable_to_non_nullable
              as AppStrings,
    ));
  }

  /// Create a copy of CommonUIActions
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AppStringsCopyWith<$Res> get header {
    return $AppStringsCopyWith<$Res>(_value.header, (value) {
      return _then(_value.copyWith(header: value));
    });
  }

  /// Create a copy of CommonUIActions
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AppStringsCopyWith<$Res> get body {
    return $AppStringsCopyWith<$Res>(_value.body, (value) {
      return _then(_value.copyWith(body: value));
    });
  }

  /// Create a copy of CommonUIActions
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CupertinoDialogActivityCopyWith<$Res>? get activity {
    if (_value.activity == null) {
      return null;
    }

    return $CupertinoDialogActivityCopyWith<$Res>(_value.activity!, (value) {
      return _then(_value.copyWith(activity: value));
    });
  }

  /// Create a copy of CommonUIActions
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AppStringsCopyWith<$Res> get close {
    return $AppStringsCopyWith<$Res>(_value.close, (value) {
      return _then(_value.copyWith(close: value));
    });
  }
}

/// @nodoc

class _$CommonCupertinoDialogActionImpl
    with DiagnosticableTreeMixin
    implements CommonCupertinoDialogAction {
  const _$CommonCupertinoDialogActionImpl(
      {required this.header,
      required this.body,
      this.activity = null,
      this.closeCallback = null,
      this.close = const AppStrings.okay()});

  @override
  final AppStrings header;
  @override
  final AppStrings body;
  @override
  @JsonKey()
  final CupertinoDialogActivity? activity;
  @override
  @JsonKey()
  final VoidCallback? closeCallback;
  @override
  @JsonKey()
  final AppStrings close;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CommonUIActions.cupertinoDialog(header: $header, body: $body, activity: $activity, closeCallback: $closeCallback, close: $close)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CommonUIActions.cupertinoDialog'))
      ..add(DiagnosticsProperty('header', header))
      ..add(DiagnosticsProperty('body', body))
      ..add(DiagnosticsProperty('activity', activity))
      ..add(DiagnosticsProperty('closeCallback', closeCallback))
      ..add(DiagnosticsProperty('close', close));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommonCupertinoDialogActionImpl &&
            (identical(other.header, header) || other.header == header) &&
            (identical(other.body, body) || other.body == body) &&
            (identical(other.activity, activity) ||
                other.activity == activity) &&
            (identical(other.closeCallback, closeCallback) ||
                other.closeCallback == closeCallback) &&
            (identical(other.close, close) || other.close == close));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, header, body, activity, closeCallback, close);

  /// Create a copy of CommonUIActions
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CommonCupertinoDialogActionImplCopyWith<_$CommonCupertinoDialogActionImpl>
      get copyWith => __$$CommonCupertinoDialogActionImplCopyWithImpl<
          _$CommonCupertinoDialogActionImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            AppStrings header,
            AppStrings body,
            CupertinoDialogActivity? activity,
            VoidCallback? closeCallback,
            AppStrings close)
        cupertinoDialog,
    required TResult Function() showLoader,
    required TResult Function() hideLoader,
  }) {
    return cupertinoDialog(header, body, activity, closeCallback, close);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            AppStrings header,
            AppStrings body,
            CupertinoDialogActivity? activity,
            VoidCallback? closeCallback,
            AppStrings close)?
        cupertinoDialog,
    TResult? Function()? showLoader,
    TResult? Function()? hideLoader,
  }) {
    return cupertinoDialog?.call(header, body, activity, closeCallback, close);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            AppStrings header,
            AppStrings body,
            CupertinoDialogActivity? activity,
            VoidCallback? closeCallback,
            AppStrings close)?
        cupertinoDialog,
    TResult Function()? showLoader,
    TResult Function()? hideLoader,
    required TResult orElse(),
  }) {
    if (cupertinoDialog != null) {
      return cupertinoDialog(header, body, activity, closeCallback, close);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CommonCupertinoDialogAction value)
        cupertinoDialog,
    required TResult Function(CommonShowLoaderAction value) showLoader,
    required TResult Function(CommonHideLoaderAction value) hideLoader,
  }) {
    return cupertinoDialog(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CommonCupertinoDialogAction value)? cupertinoDialog,
    TResult? Function(CommonShowLoaderAction value)? showLoader,
    TResult? Function(CommonHideLoaderAction value)? hideLoader,
  }) {
    return cupertinoDialog?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CommonCupertinoDialogAction value)? cupertinoDialog,
    TResult Function(CommonShowLoaderAction value)? showLoader,
    TResult Function(CommonHideLoaderAction value)? hideLoader,
    required TResult orElse(),
  }) {
    if (cupertinoDialog != null) {
      return cupertinoDialog(this);
    }
    return orElse();
  }
}

abstract class CommonCupertinoDialogAction implements CommonUIActions {
  const factory CommonCupertinoDialogAction(
      {required final AppStrings header,
      required final AppStrings body,
      final CupertinoDialogActivity? activity,
      final VoidCallback? closeCallback,
      final AppStrings close}) = _$CommonCupertinoDialogActionImpl;

  AppStrings get header;
  AppStrings get body;
  CupertinoDialogActivity? get activity;
  VoidCallback? get closeCallback;
  AppStrings get close;

  /// Create a copy of CommonUIActions
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CommonCupertinoDialogActionImplCopyWith<_$CommonCupertinoDialogActionImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CommonShowLoaderActionImplCopyWith<$Res> {
  factory _$$CommonShowLoaderActionImplCopyWith(
          _$CommonShowLoaderActionImpl value,
          $Res Function(_$CommonShowLoaderActionImpl) then) =
      __$$CommonShowLoaderActionImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CommonShowLoaderActionImplCopyWithImpl<$Res>
    extends _$CommonUIActionsCopyWithImpl<$Res, _$CommonShowLoaderActionImpl>
    implements _$$CommonShowLoaderActionImplCopyWith<$Res> {
  __$$CommonShowLoaderActionImplCopyWithImpl(
      _$CommonShowLoaderActionImpl _value,
      $Res Function(_$CommonShowLoaderActionImpl) _then)
      : super(_value, _then);

  /// Create a copy of CommonUIActions
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CommonShowLoaderActionImpl
    with DiagnosticableTreeMixin
    implements CommonShowLoaderAction {
  const _$CommonShowLoaderActionImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CommonUIActions.showLoader()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'CommonUIActions.showLoader'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommonShowLoaderActionImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            AppStrings header,
            AppStrings body,
            CupertinoDialogActivity? activity,
            VoidCallback? closeCallback,
            AppStrings close)
        cupertinoDialog,
    required TResult Function() showLoader,
    required TResult Function() hideLoader,
  }) {
    return showLoader();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            AppStrings header,
            AppStrings body,
            CupertinoDialogActivity? activity,
            VoidCallback? closeCallback,
            AppStrings close)?
        cupertinoDialog,
    TResult? Function()? showLoader,
    TResult? Function()? hideLoader,
  }) {
    return showLoader?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            AppStrings header,
            AppStrings body,
            CupertinoDialogActivity? activity,
            VoidCallback? closeCallback,
            AppStrings close)?
        cupertinoDialog,
    TResult Function()? showLoader,
    TResult Function()? hideLoader,
    required TResult orElse(),
  }) {
    if (showLoader != null) {
      return showLoader();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CommonCupertinoDialogAction value)
        cupertinoDialog,
    required TResult Function(CommonShowLoaderAction value) showLoader,
    required TResult Function(CommonHideLoaderAction value) hideLoader,
  }) {
    return showLoader(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CommonCupertinoDialogAction value)? cupertinoDialog,
    TResult? Function(CommonShowLoaderAction value)? showLoader,
    TResult? Function(CommonHideLoaderAction value)? hideLoader,
  }) {
    return showLoader?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CommonCupertinoDialogAction value)? cupertinoDialog,
    TResult Function(CommonShowLoaderAction value)? showLoader,
    TResult Function(CommonHideLoaderAction value)? hideLoader,
    required TResult orElse(),
  }) {
    if (showLoader != null) {
      return showLoader(this);
    }
    return orElse();
  }
}

abstract class CommonShowLoaderAction implements CommonUIActions {
  const factory CommonShowLoaderAction() = _$CommonShowLoaderActionImpl;
}

/// @nodoc
abstract class _$$CommonHideLoaderActionImplCopyWith<$Res> {
  factory _$$CommonHideLoaderActionImplCopyWith(
          _$CommonHideLoaderActionImpl value,
          $Res Function(_$CommonHideLoaderActionImpl) then) =
      __$$CommonHideLoaderActionImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CommonHideLoaderActionImplCopyWithImpl<$Res>
    extends _$CommonUIActionsCopyWithImpl<$Res, _$CommonHideLoaderActionImpl>
    implements _$$CommonHideLoaderActionImplCopyWith<$Res> {
  __$$CommonHideLoaderActionImplCopyWithImpl(
      _$CommonHideLoaderActionImpl _value,
      $Res Function(_$CommonHideLoaderActionImpl) _then)
      : super(_value, _then);

  /// Create a copy of CommonUIActions
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CommonHideLoaderActionImpl
    with DiagnosticableTreeMixin
    implements CommonHideLoaderAction {
  const _$CommonHideLoaderActionImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CommonUIActions.hideLoader()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'CommonUIActions.hideLoader'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommonHideLoaderActionImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            AppStrings header,
            AppStrings body,
            CupertinoDialogActivity? activity,
            VoidCallback? closeCallback,
            AppStrings close)
        cupertinoDialog,
    required TResult Function() showLoader,
    required TResult Function() hideLoader,
  }) {
    return hideLoader();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            AppStrings header,
            AppStrings body,
            CupertinoDialogActivity? activity,
            VoidCallback? closeCallback,
            AppStrings close)?
        cupertinoDialog,
    TResult? Function()? showLoader,
    TResult? Function()? hideLoader,
  }) {
    return hideLoader?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            AppStrings header,
            AppStrings body,
            CupertinoDialogActivity? activity,
            VoidCallback? closeCallback,
            AppStrings close)?
        cupertinoDialog,
    TResult Function()? showLoader,
    TResult Function()? hideLoader,
    required TResult orElse(),
  }) {
    if (hideLoader != null) {
      return hideLoader();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CommonCupertinoDialogAction value)
        cupertinoDialog,
    required TResult Function(CommonShowLoaderAction value) showLoader,
    required TResult Function(CommonHideLoaderAction value) hideLoader,
  }) {
    return hideLoader(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CommonCupertinoDialogAction value)? cupertinoDialog,
    TResult? Function(CommonShowLoaderAction value)? showLoader,
    TResult? Function(CommonHideLoaderAction value)? hideLoader,
  }) {
    return hideLoader?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CommonCupertinoDialogAction value)? cupertinoDialog,
    TResult Function(CommonShowLoaderAction value)? showLoader,
    TResult Function(CommonHideLoaderAction value)? hideLoader,
    required TResult orElse(),
  }) {
    if (hideLoader != null) {
      return hideLoader(this);
    }
    return orElse();
  }
}

abstract class CommonHideLoaderAction implements CommonUIActions {
  const factory CommonHideLoaderAction() = _$CommonHideLoaderActionImpl;
}
