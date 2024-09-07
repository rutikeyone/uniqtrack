import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_actions.freezed.dart';

@immutable
@freezed
class RegisterActions with _$RegisterActions {
  const RegisterActions._();

  const factory RegisterActions.hideFocus() = _RegisterHideFocusAction;

  const factory RegisterActions.navigateBack() = _RegisterNavigateBackAction;

  const factory RegisterActions.showImageSourceChooser({
    required VoidCallback chooseImageFromGallery,
    required VoidCallback chooseImageFromCamera,
  }) = _RegisterShowImageSourceChooserAction;

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
