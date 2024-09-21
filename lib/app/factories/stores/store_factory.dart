import 'package:flutter/foundation.dart';
import 'package:uniqtrack/app/navigation/arguments/args.dart';
import 'package:uniqtrack/features/accounts/presentation/forgot_password/stores/forgot_password_store.dart';
import 'package:uniqtrack/features/accounts/presentation/login/stores/login_store.dart';
import 'package:uniqtrack/features/accounts/presentation/register/stores/register_store.dart';
import 'package:uniqtrack/features/tracks/domain/entities/entities.dart';
import 'package:uniqtrack/features/tracks/presentation/add_or_edit_memory/stores/add_or_edit_memory_store.dart';
import 'package:uniqtrack/features/tracks/presentation/add_or_edit_record_track/stores/add_or_edit_record_track_store.dart';
import 'package:uniqtrack/features/tracks/presentation/details/store/details_store.dart';
import 'package:uniqtrack/features/tracks/presentation/photo_viewer/stores/photo_viewer_store.dart';
import 'package:uniqtrack/features/tracks/presentation/record_track/stores/record_track_store.dart';

abstract interface class StoreFactory {
  RegisterStore createRegisterStore();

  LoginStore createLoginStore();

  ForgotPasswordStore createForgotPasswordStore(String? email);

  RecordTrackStore createRecordTrackStore();

  AddOrEditRecordTrackStore createAddOrEditRecordTrackStore({
    required Track? track,
  });

  AddOrEditMemoryStore createAddOrEditMemoryStore({
    required Position? position,
    required Memory? memory,
  });

  PhotoViewerStore createPhotoViewerStore({
    required Uint8List? bytes,
    required String? link,
  });

  DetailsStore createDetailsStore({
    required String id,
    required bool canDelete,
    required bool closeWhenRemoveFromFavourites,
    required DetailsMode mode,
  });
}
