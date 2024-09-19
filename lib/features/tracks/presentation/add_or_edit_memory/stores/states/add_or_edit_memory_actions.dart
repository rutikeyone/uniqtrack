import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uniqtrack/features/tracks/presentation/add_or_edit_memory/add_or_edit_memory_result.dart';

part 'add_or_edit_memory_actions.freezed.dart';

@immutable
@freezed
class AddOrEditMemoryActions with _$AddOrEditMemoryActions {
  const AddOrEditMemoryActions._();

  const factory AddOrEditMemoryActions.showImageSourceChooser({
    required VoidCallback chooseImageFromGallery,
    required VoidCallback chooseImageFromCamera,
  }) = _AddOrEditMemoryShowImageSourceChooserAction;

  const factory AddOrEditMemoryActions.navigateWithResult({
    required AddOrEditMemoryResult result,
  }) = _AddOrEditNavigateWithResultAction;

  @override
  bool operator ==(Object other) => false;

  @override
  int get hashCode {
    return maybeMap(
      orElse: () => 0,
      showImageSourceChooser: (data) {
        return data.chooseImageFromCamera.hashCode +
            data.chooseImageFromGallery.hashCode;
      },
    );
  }
}
