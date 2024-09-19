import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uniqtrack/features/tracks/domain/entities/entities.dart';

part 'add_or_edit_memory_result.freezed.dart';

@freezed
class AddOrEditMemoryResult with _$AddOrEditMemoryResult {
  const factory AddOrEditMemoryResult.add({
    required Memory memory,
  }) = _AddMemoryResult;

  const factory AddOrEditMemoryResult.edit({
    required Memory memory,
  }) = _EditMemoryResult;

  const factory AddOrEditMemoryResult.remove({
    required Memory memory,
}) = _RemoveMemoryResult;
}
