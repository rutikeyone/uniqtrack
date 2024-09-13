import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_or_edit_memory_mode_state.freezed.dart';

@freezed
class AddOrEditMemoryModeState with _$AddOrEditMemoryModeState {
  const AddOrEditMemoryModeState._();

  const factory AddOrEditMemoryModeState.add() = _AddMemoryModeState;
  const factory AddOrEditMemoryModeState.edit() = _EditMemoryModeState;
}
