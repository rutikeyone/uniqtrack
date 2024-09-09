import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'nav_callback_store.freezed.dart';

@immutable
@freezed
class ForgotPasswordNavCallbackStore with _$ForgotPasswordNavCallbackStore {
  const factory ForgotPasswordNavCallbackStore({
    required VoidCallback navigateBack,
  }) = _ForgotPasswordNavCallbackStore;
}

@immutable
@freezed
class LoginNavCallbackStore with _$LoginNavCallbackStore {
  const factory LoginNavCallbackStore({
    required VoidCallback navigateToRegister,
    required Function(String) navigateToForgotPassword,
  }) = _LoginNavCallbackStore;
}

@immutable
@freezed
class RegisterNavCallbackStore with _$RegisterNavCallbackStore {
  const factory RegisterNavCallbackStore({
    required VoidCallback navigateBack,
  }) = _RegisterNavCallbackStore;
}

@immutable
@freezed
class CommunityNavCallbackStore with _$CommunityNavCallbackStore {
  const factory CommunityNavCallbackStore({
    required VoidCallback navigateToTrackTracking,
  }) = _CommunityNavCallbackStore;
}
