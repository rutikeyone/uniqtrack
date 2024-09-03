import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_nav_callback_store.freezed.dart';

@immutable
@freezed
class RegisterNavCallbackStore with _$RegisterNavCallbackStore {
  const factory RegisterNavCallbackStore({
    required VoidCallback navigateBack,
}) = _RegisterNavCallbackStore;
}