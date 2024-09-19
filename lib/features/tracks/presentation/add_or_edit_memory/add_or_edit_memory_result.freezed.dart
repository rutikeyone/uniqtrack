// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_or_edit_memory_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AddOrEditMemoryResult {
  Memory get memory => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Memory memory) add,
    required TResult Function(Memory memory) edit,
    required TResult Function(Memory memory) remove,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Memory memory)? add,
    TResult? Function(Memory memory)? edit,
    TResult? Function(Memory memory)? remove,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Memory memory)? add,
    TResult Function(Memory memory)? edit,
    TResult Function(Memory memory)? remove,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddMemoryResult value) add,
    required TResult Function(_EditMemoryResult value) edit,
    required TResult Function(_RemoveMemoryResult value) remove,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddMemoryResult value)? add,
    TResult? Function(_EditMemoryResult value)? edit,
    TResult? Function(_RemoveMemoryResult value)? remove,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddMemoryResult value)? add,
    TResult Function(_EditMemoryResult value)? edit,
    TResult Function(_RemoveMemoryResult value)? remove,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of AddOrEditMemoryResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AddOrEditMemoryResultCopyWith<AddOrEditMemoryResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddOrEditMemoryResultCopyWith<$Res> {
  factory $AddOrEditMemoryResultCopyWith(AddOrEditMemoryResult value,
          $Res Function(AddOrEditMemoryResult) then) =
      _$AddOrEditMemoryResultCopyWithImpl<$Res, AddOrEditMemoryResult>;
  @useResult
  $Res call({Memory memory});

  $MemoryCopyWith<$Res> get memory;
}

/// @nodoc
class _$AddOrEditMemoryResultCopyWithImpl<$Res,
        $Val extends AddOrEditMemoryResult>
    implements $AddOrEditMemoryResultCopyWith<$Res> {
  _$AddOrEditMemoryResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AddOrEditMemoryResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? memory = null,
  }) {
    return _then(_value.copyWith(
      memory: null == memory
          ? _value.memory
          : memory // ignore: cast_nullable_to_non_nullable
              as Memory,
    ) as $Val);
  }

  /// Create a copy of AddOrEditMemoryResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MemoryCopyWith<$Res> get memory {
    return $MemoryCopyWith<$Res>(_value.memory, (value) {
      return _then(_value.copyWith(memory: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AddMemoryResultImplCopyWith<$Res>
    implements $AddOrEditMemoryResultCopyWith<$Res> {
  factory _$$AddMemoryResultImplCopyWith(_$AddMemoryResultImpl value,
          $Res Function(_$AddMemoryResultImpl) then) =
      __$$AddMemoryResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Memory memory});

  @override
  $MemoryCopyWith<$Res> get memory;
}

/// @nodoc
class __$$AddMemoryResultImplCopyWithImpl<$Res>
    extends _$AddOrEditMemoryResultCopyWithImpl<$Res, _$AddMemoryResultImpl>
    implements _$$AddMemoryResultImplCopyWith<$Res> {
  __$$AddMemoryResultImplCopyWithImpl(
      _$AddMemoryResultImpl _value, $Res Function(_$AddMemoryResultImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddOrEditMemoryResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? memory = null,
  }) {
    return _then(_$AddMemoryResultImpl(
      memory: null == memory
          ? _value.memory
          : memory // ignore: cast_nullable_to_non_nullable
              as Memory,
    ));
  }
}

/// @nodoc

class _$AddMemoryResultImpl implements _AddMemoryResult {
  const _$AddMemoryResultImpl({required this.memory});

  @override
  final Memory memory;

  @override
  String toString() {
    return 'AddOrEditMemoryResult.add(memory: $memory)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddMemoryResultImpl &&
            (identical(other.memory, memory) || other.memory == memory));
  }

  @override
  int get hashCode => Object.hash(runtimeType, memory);

  /// Create a copy of AddOrEditMemoryResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddMemoryResultImplCopyWith<_$AddMemoryResultImpl> get copyWith =>
      __$$AddMemoryResultImplCopyWithImpl<_$AddMemoryResultImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Memory memory) add,
    required TResult Function(Memory memory) edit,
    required TResult Function(Memory memory) remove,
  }) {
    return add(memory);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Memory memory)? add,
    TResult? Function(Memory memory)? edit,
    TResult? Function(Memory memory)? remove,
  }) {
    return add?.call(memory);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Memory memory)? add,
    TResult Function(Memory memory)? edit,
    TResult Function(Memory memory)? remove,
    required TResult orElse(),
  }) {
    if (add != null) {
      return add(memory);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddMemoryResult value) add,
    required TResult Function(_EditMemoryResult value) edit,
    required TResult Function(_RemoveMemoryResult value) remove,
  }) {
    return add(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddMemoryResult value)? add,
    TResult? Function(_EditMemoryResult value)? edit,
    TResult? Function(_RemoveMemoryResult value)? remove,
  }) {
    return add?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddMemoryResult value)? add,
    TResult Function(_EditMemoryResult value)? edit,
    TResult Function(_RemoveMemoryResult value)? remove,
    required TResult orElse(),
  }) {
    if (add != null) {
      return add(this);
    }
    return orElse();
  }
}

abstract class _AddMemoryResult implements AddOrEditMemoryResult {
  const factory _AddMemoryResult({required final Memory memory}) =
      _$AddMemoryResultImpl;

  @override
  Memory get memory;

  /// Create a copy of AddOrEditMemoryResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddMemoryResultImplCopyWith<_$AddMemoryResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EditMemoryResultImplCopyWith<$Res>
    implements $AddOrEditMemoryResultCopyWith<$Res> {
  factory _$$EditMemoryResultImplCopyWith(_$EditMemoryResultImpl value,
          $Res Function(_$EditMemoryResultImpl) then) =
      __$$EditMemoryResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Memory memory});

  @override
  $MemoryCopyWith<$Res> get memory;
}

/// @nodoc
class __$$EditMemoryResultImplCopyWithImpl<$Res>
    extends _$AddOrEditMemoryResultCopyWithImpl<$Res, _$EditMemoryResultImpl>
    implements _$$EditMemoryResultImplCopyWith<$Res> {
  __$$EditMemoryResultImplCopyWithImpl(_$EditMemoryResultImpl _value,
      $Res Function(_$EditMemoryResultImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddOrEditMemoryResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? memory = null,
  }) {
    return _then(_$EditMemoryResultImpl(
      memory: null == memory
          ? _value.memory
          : memory // ignore: cast_nullable_to_non_nullable
              as Memory,
    ));
  }
}

/// @nodoc

class _$EditMemoryResultImpl implements _EditMemoryResult {
  const _$EditMemoryResultImpl({required this.memory});

  @override
  final Memory memory;

  @override
  String toString() {
    return 'AddOrEditMemoryResult.edit(memory: $memory)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditMemoryResultImpl &&
            (identical(other.memory, memory) || other.memory == memory));
  }

  @override
  int get hashCode => Object.hash(runtimeType, memory);

  /// Create a copy of AddOrEditMemoryResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EditMemoryResultImplCopyWith<_$EditMemoryResultImpl> get copyWith =>
      __$$EditMemoryResultImplCopyWithImpl<_$EditMemoryResultImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Memory memory) add,
    required TResult Function(Memory memory) edit,
    required TResult Function(Memory memory) remove,
  }) {
    return edit(memory);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Memory memory)? add,
    TResult? Function(Memory memory)? edit,
    TResult? Function(Memory memory)? remove,
  }) {
    return edit?.call(memory);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Memory memory)? add,
    TResult Function(Memory memory)? edit,
    TResult Function(Memory memory)? remove,
    required TResult orElse(),
  }) {
    if (edit != null) {
      return edit(memory);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddMemoryResult value) add,
    required TResult Function(_EditMemoryResult value) edit,
    required TResult Function(_RemoveMemoryResult value) remove,
  }) {
    return edit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddMemoryResult value)? add,
    TResult? Function(_EditMemoryResult value)? edit,
    TResult? Function(_RemoveMemoryResult value)? remove,
  }) {
    return edit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddMemoryResult value)? add,
    TResult Function(_EditMemoryResult value)? edit,
    TResult Function(_RemoveMemoryResult value)? remove,
    required TResult orElse(),
  }) {
    if (edit != null) {
      return edit(this);
    }
    return orElse();
  }
}

abstract class _EditMemoryResult implements AddOrEditMemoryResult {
  const factory _EditMemoryResult({required final Memory memory}) =
      _$EditMemoryResultImpl;

  @override
  Memory get memory;

  /// Create a copy of AddOrEditMemoryResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EditMemoryResultImplCopyWith<_$EditMemoryResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemoveMemoryResultImplCopyWith<$Res>
    implements $AddOrEditMemoryResultCopyWith<$Res> {
  factory _$$RemoveMemoryResultImplCopyWith(_$RemoveMemoryResultImpl value,
          $Res Function(_$RemoveMemoryResultImpl) then) =
      __$$RemoveMemoryResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Memory memory});

  @override
  $MemoryCopyWith<$Res> get memory;
}

/// @nodoc
class __$$RemoveMemoryResultImplCopyWithImpl<$Res>
    extends _$AddOrEditMemoryResultCopyWithImpl<$Res, _$RemoveMemoryResultImpl>
    implements _$$RemoveMemoryResultImplCopyWith<$Res> {
  __$$RemoveMemoryResultImplCopyWithImpl(_$RemoveMemoryResultImpl _value,
      $Res Function(_$RemoveMemoryResultImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddOrEditMemoryResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? memory = null,
  }) {
    return _then(_$RemoveMemoryResultImpl(
      memory: null == memory
          ? _value.memory
          : memory // ignore: cast_nullable_to_non_nullable
              as Memory,
    ));
  }
}

/// @nodoc

class _$RemoveMemoryResultImpl implements _RemoveMemoryResult {
  const _$RemoveMemoryResultImpl({required this.memory});

  @override
  final Memory memory;

  @override
  String toString() {
    return 'AddOrEditMemoryResult.remove(memory: $memory)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveMemoryResultImpl &&
            (identical(other.memory, memory) || other.memory == memory));
  }

  @override
  int get hashCode => Object.hash(runtimeType, memory);

  /// Create a copy of AddOrEditMemoryResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoveMemoryResultImplCopyWith<_$RemoveMemoryResultImpl> get copyWith =>
      __$$RemoveMemoryResultImplCopyWithImpl<_$RemoveMemoryResultImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Memory memory) add,
    required TResult Function(Memory memory) edit,
    required TResult Function(Memory memory) remove,
  }) {
    return remove(memory);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Memory memory)? add,
    TResult? Function(Memory memory)? edit,
    TResult? Function(Memory memory)? remove,
  }) {
    return remove?.call(memory);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Memory memory)? add,
    TResult Function(Memory memory)? edit,
    TResult Function(Memory memory)? remove,
    required TResult orElse(),
  }) {
    if (remove != null) {
      return remove(memory);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddMemoryResult value) add,
    required TResult Function(_EditMemoryResult value) edit,
    required TResult Function(_RemoveMemoryResult value) remove,
  }) {
    return remove(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddMemoryResult value)? add,
    TResult? Function(_EditMemoryResult value)? edit,
    TResult? Function(_RemoveMemoryResult value)? remove,
  }) {
    return remove?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddMemoryResult value)? add,
    TResult Function(_EditMemoryResult value)? edit,
    TResult Function(_RemoveMemoryResult value)? remove,
    required TResult orElse(),
  }) {
    if (remove != null) {
      return remove(this);
    }
    return orElse();
  }
}

abstract class _RemoveMemoryResult implements AddOrEditMemoryResult {
  const factory _RemoveMemoryResult({required final Memory memory}) =
      _$RemoveMemoryResultImpl;

  @override
  Memory get memory;

  /// Create a copy of AddOrEditMemoryResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RemoveMemoryResultImplCopyWith<_$RemoveMemoryResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
