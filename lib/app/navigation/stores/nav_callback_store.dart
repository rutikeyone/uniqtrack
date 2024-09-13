import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uniqtrack/features/accounts/domain/entities/entities.dart';
import 'package:uniqtrack/features/tracks/domain/entities/position.dart';

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

@immutable
@freezed
class RecordTrackNavCallbackStore with _$RecordTrackNavCallbackStore {
  const factory RecordTrackNavCallbackStore({
    required VoidCallback navigateBack,
    required Future<Memory?> Function(Position?) navigateToAddMemory,
    required VoidCallback navigateToAddRecordTrack,
    required void Function(Uint8List?) navigateToPhotoViewerByBytes,
    required void Function(String?) navigateToPhotoViewerByLink,
  }) = _RecordTrackNavCallbackStore;
}

@immutable
@freezed
class AddOrEditRecordTrackNavCallbackStore
    with _$AddOrEditRecordTrackNavCallbackStore {
  const factory AddOrEditRecordTrackNavCallbackStore({
    required VoidCallback navigateBack,
  }) = _AddOrEditRecordTrackNavCallbackStore;
}

@immutable
@freezed
class AddOrEditMemoryNavCallbackStore with _$AddOrEditMemoryNavCallbackStore {
  const factory AddOrEditMemoryNavCallbackStore({
    required VoidCallback navigateBack,
    required void Function(Uint8List) navigateToPhotoViewerByBytes,
    required void Function(String) navigateToPhotoViewerByLink,
    required void Function(Memory) navigateWithResult,
  }) = _AddOrEditMemoryNavCallbackStore;
}
