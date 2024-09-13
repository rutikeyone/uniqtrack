// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'position_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PositionData {
  List<Position>? get positions => throw _privateConstructorUsedError;

  /// Create a copy of PositionData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PositionDataCopyWith<PositionData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PositionDataCopyWith<$Res> {
  factory $PositionDataCopyWith(
          PositionData value, $Res Function(PositionData) then) =
      _$PositionDataCopyWithImpl<$Res, PositionData>;
  @useResult
  $Res call({List<Position>? positions});
}

/// @nodoc
class _$PositionDataCopyWithImpl<$Res, $Val extends PositionData>
    implements $PositionDataCopyWith<$Res> {
  _$PositionDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PositionData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? positions = freezed,
  }) {
    return _then(_value.copyWith(
      positions: freezed == positions
          ? _value.positions
          : positions // ignore: cast_nullable_to_non_nullable
              as List<Position>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PositionDataImplCopyWith<$Res>
    implements $PositionDataCopyWith<$Res> {
  factory _$$PositionDataImplCopyWith(
          _$PositionDataImpl value, $Res Function(_$PositionDataImpl) then) =
      __$$PositionDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Position>? positions});
}

/// @nodoc
class __$$PositionDataImplCopyWithImpl<$Res>
    extends _$PositionDataCopyWithImpl<$Res, _$PositionDataImpl>
    implements _$$PositionDataImplCopyWith<$Res> {
  __$$PositionDataImplCopyWithImpl(
      _$PositionDataImpl _value, $Res Function(_$PositionDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of PositionData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? positions = freezed,
  }) {
    return _then(_$PositionDataImpl(
      positions: freezed == positions
          ? _value._positions
          : positions // ignore: cast_nullable_to_non_nullable
              as List<Position>?,
    ));
  }
}

/// @nodoc

class _$PositionDataImpl implements _PositionData {
  const _$PositionDataImpl({required final List<Position>? positions})
      : _positions = positions;

  final List<Position>? _positions;
  @override
  List<Position>? get positions {
    final value = _positions;
    if (value == null) return null;
    if (_positions is EqualUnmodifiableListView) return _positions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'PositionData(positions: $positions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PositionDataImpl &&
            const DeepCollectionEquality()
                .equals(other._positions, _positions));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_positions));

  /// Create a copy of PositionData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PositionDataImplCopyWith<_$PositionDataImpl> get copyWith =>
      __$$PositionDataImplCopyWithImpl<_$PositionDataImpl>(this, _$identity);
}

abstract class _PositionData implements PositionData {
  const factory _PositionData({required final List<Position>? positions}) =
      _$PositionDataImpl;

  @override
  List<Position>? get positions;

  /// Create a copy of PositionData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PositionDataImplCopyWith<_$PositionDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
