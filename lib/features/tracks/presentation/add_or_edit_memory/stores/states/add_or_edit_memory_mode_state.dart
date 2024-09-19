import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uniqtrack/features/tracks/domain/entities/entities.dart';

part 'add_or_edit_memory_mode_state.freezed.dart';

@freezed
class AddOrEditMemoryModeState with _$AddOrEditMemoryModeState {
  const AddOrEditMemoryModeState._();

  const factory AddOrEditMemoryModeState.pure() = _PureMemoryModeState;

  const factory AddOrEditMemoryModeState.add({
    required Position position,
  }) = _AddMemoryModeState;

  const factory AddOrEditMemoryModeState.edit({
    required Memory memory,
  }) = _EditMemoryModeState;
}
