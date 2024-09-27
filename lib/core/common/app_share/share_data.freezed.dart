// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'share_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ShareData _$ShareDataFromJson(Map<String, dynamic> json) {
  return _ShareData.fromJson(json);
}

/// @nodoc
mixin _$ShareData {
  List<String> get en => throw _privateConstructorUsedError;
  List<String> get ru => throw _privateConstructorUsedError;

  /// Serializes this ShareData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ShareData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ShareDataCopyWith<ShareData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShareDataCopyWith<$Res> {
  factory $ShareDataCopyWith(ShareData value, $Res Function(ShareData) then) =
      _$ShareDataCopyWithImpl<$Res, ShareData>;
  @useResult
  $Res call({List<String> en, List<String> ru});
}

/// @nodoc
class _$ShareDataCopyWithImpl<$Res, $Val extends ShareData>
    implements $ShareDataCopyWith<$Res> {
  _$ShareDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ShareData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? en = null,
    Object? ru = null,
  }) {
    return _then(_value.copyWith(
      en: null == en
          ? _value.en
          : en // ignore: cast_nullable_to_non_nullable
              as List<String>,
      ru: null == ru
          ? _value.ru
          : ru // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ShareDataImplCopyWith<$Res>
    implements $ShareDataCopyWith<$Res> {
  factory _$$ShareDataImplCopyWith(
          _$ShareDataImpl value, $Res Function(_$ShareDataImpl) then) =
      __$$ShareDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<String> en, List<String> ru});
}

/// @nodoc
class __$$ShareDataImplCopyWithImpl<$Res>
    extends _$ShareDataCopyWithImpl<$Res, _$ShareDataImpl>
    implements _$$ShareDataImplCopyWith<$Res> {
  __$$ShareDataImplCopyWithImpl(
      _$ShareDataImpl _value, $Res Function(_$ShareDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of ShareData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? en = null,
    Object? ru = null,
  }) {
    return _then(_$ShareDataImpl(
      en: null == en
          ? _value._en
          : en // ignore: cast_nullable_to_non_nullable
              as List<String>,
      ru: null == ru
          ? _value._ru
          : ru // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ShareDataImpl implements _ShareData {
  const _$ShareDataImpl(
      {required final List<String> en, required final List<String> ru})
      : _en = en,
        _ru = ru;

  factory _$ShareDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ShareDataImplFromJson(json);

  final List<String> _en;
  @override
  List<String> get en {
    if (_en is EqualUnmodifiableListView) return _en;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_en);
  }

  final List<String> _ru;
  @override
  List<String> get ru {
    if (_ru is EqualUnmodifiableListView) return _ru;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ru);
  }

  @override
  String toString() {
    return 'ShareData(en: $en, ru: $ru)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShareDataImpl &&
            const DeepCollectionEquality().equals(other._en, _en) &&
            const DeepCollectionEquality().equals(other._ru, _ru));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_en),
      const DeepCollectionEquality().hash(_ru));

  /// Create a copy of ShareData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ShareDataImplCopyWith<_$ShareDataImpl> get copyWith =>
      __$$ShareDataImplCopyWithImpl<_$ShareDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ShareDataImplToJson(
      this,
    );
  }
}

abstract class _ShareData implements ShareData {
  const factory _ShareData(
      {required final List<String> en,
      required final List<String> ru}) = _$ShareDataImpl;

  factory _ShareData.fromJson(Map<String, dynamic> json) =
      _$ShareDataImpl.fromJson;

  @override
  List<String> get en;
  @override
  List<String> get ru;

  /// Create a copy of ShareData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ShareDataImplCopyWith<_$ShareDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
