import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_navigation_callback_storage.freezed.dart';

@freezed
class LoginNavigationCallbackStorage with _$LoginNavigationCallbackStorage {
  const factory LoginNavigationCallbackStorage({
    required VoidCallback navigateToRegister,
  }) = _LoginNavigationCallbackStorage;
}
