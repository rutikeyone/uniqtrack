import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_actions.freezed.dart';

@freezed
class RegisterActions with _$RegisterActions {
  const RegisterActions._();

  const factory RegisterActions.showImageSourceChooser({
    required VoidCallback chooseImageFromGallery,
    required VoidCallback chooseImageFromCamera,
  }) = _RegisterShowImageSourceChooser;

  @override
  bool operator ==(Object other) => false;

  @override
  int get hashCode =>
      chooseImageFromGallery.hashCode + chooseImageFromCamera.hashCode;
}
