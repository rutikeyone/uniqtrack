import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_nav_callback_store.freezed.dart';

@immutable
@freezed
class LoginNavCallbackStore with _$LoginNavCallbackStore {
  const factory LoginNavCallbackStore({
    required VoidCallback navigateToRegister,
    required VoidCallback navigateToForgotPassword,
  }) = _LoginNavCallbackStore;
}
