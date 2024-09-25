part of 'entities.dart';

@freezed
class MemoryUI with _$MemoryUI {
  const factory MemoryUI({
    required Memory memory,
    required bool currentUserCreator,
  }) = _MemoryUI;
}
