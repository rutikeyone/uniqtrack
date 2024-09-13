import 'package:flutter/foundation.dart';
import 'package:uniqtrack/features/accounts/presentation/forgot_password/stores/forgot_password_store.dart';
import 'package:uniqtrack/features/accounts/presentation/login/stores/login_store.dart';
import 'package:uniqtrack/features/accounts/presentation/register/stores/register_store.dart';
import 'package:uniqtrack/features/tracks/domain/entities/position.dart';
import 'package:uniqtrack/features/tracks/presentation/add_or_edit_edit_memory/stores/add_or_edit_memory_store.dart';
import 'package:uniqtrack/features/tracks/presentation/add_or_edit_record_track/stores/add_or_edit_record_track_store.dart';
import 'package:uniqtrack/features/tracks/presentation/photo_viewer/stores/photo_viewer_store.dart';
import 'package:uniqtrack/features/tracks/presentation/record_track/stores/record_track_store.dart';

abstract interface class StoreFactory {
  RegisterStore createRegisterStore();

  LoginStore createLoginStore();

  ForgotPasswordStore createForgotPasswordStore(String? email);

  RecordTrackStore createRecordTrackStore();

  AddOrEditRecordTrackStore createAddOrEditRecordTrackStore();

  AddOrEditMemoryStore createAddOrEditMemoryStore({
    required Position? position,
  });

  PhotoViewerStore createPhotoViewerStore({
    required Uint8List? bytes,
    required String? link,
  });
}
