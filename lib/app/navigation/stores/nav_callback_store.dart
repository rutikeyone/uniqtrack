import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uniqtrack/features/tracks/domain/entities/entities.dart';
import 'package:uniqtrack/features/tracks/presentation/add_or_edit_memory/add_or_edit_memory_result.dart';

part 'nav_callback_store.freezed.dart';

@freezed
class ForgotPasswordNavCallbackStore with _$ForgotPasswordNavCallbackStore {
  const factory ForgotPasswordNavCallbackStore({
    required VoidCallback navigateBack,
  }) = _ForgotPasswordNavCallbackStore;
}

@freezed
class LoginNavCallbackStore with _$LoginNavCallbackStore {
  const factory LoginNavCallbackStore({
    required VoidCallback navigateToRegister,
    required Function(String) navigateToForgotPassword,
  }) = _LoginNavCallbackStore;
}

@freezed
class RegisterNavCallbackStore with _$RegisterNavCallbackStore {
  const factory RegisterNavCallbackStore({
    required VoidCallback navigateBack,
  }) = _RegisterNavCallbackStore;
}

@freezed
class CommunityNavCallbackStore with _$CommunityNavCallbackStore {
  const factory CommunityNavCallbackStore({
    required VoidCallback navigateToTrackTracking,
    required VoidCallback closeDialog,
    required void Function(Track) navigateToTrackDetails,
    required void Function(Track?) navigateToEditTrack,
  }) = _CommunityNavCallbackStore;
}

@freezed
class RecordTrackNavCallbackStore with _$RecordTrackNavCallbackStore {
  const factory RecordTrackNavCallbackStore({
    required VoidCallback navigateBack,
    required Future<AddOrEditMemoryResult?> Function(Position?)
        navigateToAddMemory,
    required Future<AddOrEditMemoryResult?> Function(Memory)
        navigateToEditMemory,
    required void Function(Track) navigateToAddRecordTrack,
    required void Function(String?) navigateToPhotoViewer,
  }) = _RecordTrackNavCallbackStore;
}

@freezed
class AddOrEditRecordTrackNavCallbackStore
    with _$AddOrEditRecordTrackNavCallbackStore {
  const factory AddOrEditRecordTrackNavCallbackStore({
    required VoidCallback navigateBack,
  }) = _AddOrEditRecordTrackNavCallbackStore;
}

@freezed
class AddOrEditMemoryNavCallbackStore with _$AddOrEditMemoryNavCallbackStore {
  const factory AddOrEditMemoryNavCallbackStore({
    required VoidCallback navigateBack,
    required void Function(String) navigateToPhotoViewer,
    required void Function(AddOrEditMemoryResult) navigateWithResult,
  }) = _AddOrEditMemoryNavCallbackStore;
}

@freezed
class ProfileNavCallbackStore with _$ProfileNavCallbackStore {
  const factory ProfileNavCallbackStore({
    required VoidCallback navigateToMyTracks,
    required VoidCallback navigateToMyFavouriteTracks,
  }) = _ProfileNavCallbackStore;
}

@freezed
class MyTracksNavCallbackStore with _$MyTracksNavCallbackStore {
  const factory MyTracksNavCallbackStore({
    required VoidCallback closeDialog,
    required void Function(Track) navigateToTrackDetails,
    required void Function(Track?) navigateToEditTrack,
  }) = _MyTracksNavCallbackStore;
}

@freezed
class MyFavouriteTracksNavCallbackStore
    with _$MyFavouriteTracksNavCallbackStore {
  const factory MyFavouriteTracksNavCallbackStore({
    required void Function(Track track) navigateToTrackDetails,
  }) = _MyFavouriteTracksNavCallbackStore;
}

@freezed
class DetailsNavCallbackStore with _$DetailsNavCallbackStore {
  const factory DetailsNavCallbackStore({
    required VoidCallback navigateBack,
    required void Function(String?) navigateToPhotoViewer,
    required void Function(Track?) navigateToRecordTrack,
    void Function(Track?)? navigateToEditTrack,
    void Function(Track?, Memory?)? navigateToEditMemory,
  }) = _TrackDetailsNavCallbackStore;
}
