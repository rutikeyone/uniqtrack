import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:uniqtrack/app/navigation/arguments/args.dart';
import 'package:uniqtrack/app/navigation/paths/add_or_edit_memory_path.dart';
import 'package:uniqtrack/app/navigation/paths/add_or_edit_record_track_path.dart';
import 'package:uniqtrack/app/navigation/paths/forgot_password_path.dart';
import 'package:uniqtrack/app/navigation/paths/photo_viewer_path.dart';
import 'package:uniqtrack/app/navigation/paths/record_track_path.dart';
import 'package:uniqtrack/app/navigation/paths/register_path.dart';
import 'package:uniqtrack/app/navigation/stores/nav_callback_store.dart';
import 'package:uniqtrack/features/tracks/domain/converters/position_converter.dart';

abstract class NavCallbackStoreBuilder {
  static ForgotPasswordNavCallbackStore createForgotPasswordNavCallbackStore({
    required ForgotPasswordPath path,
    required BuildContext context,
  }) {
    return ForgotPasswordNavCallbackStore(navigateBack: context.pop);
  }

  static RegisterNavCallbackStore createRegisterNavCallbackStore(
      BuildContext context) {
    return RegisterNavCallbackStore(
      navigateBack: context.pop,
    );
  }

  static LoginNavCallbackStore createLoginNavCallbackStore({
    required BuildContext context,
    required RegisterPath registerPath,
    required ForgotPasswordPath forgotPasswordPath,
    required ForgotPasswordArgsConverter converter,
  }) {
    final navCallbackStore = LoginNavCallbackStore(
      navigateToRegister: () => context.push(registerPath.path),
      navigateToForgotPassword: (email) {
        final args = ForgotPasswordArgs(email: email);
        final queryParameters = forgotPasswordPath.queryParameters(
          args: args,
          converter: converter,
        );
        final forgotPath = forgotPasswordPath.query(queryParameters);

        context.push(forgotPath.path);
      },
    );

    return navCallbackStore;
  }

  static RecordTrackNavCallbackStore createRecordTrackNavCallbackStore({
    required BuildContext context,
    required AddOrEditMemoryPath addOrEditMemoryPath,
    required AddOrEditRecordTrackPath addOrEditRecordTrackPath,
    required PhotoViewerPath photoViewerPath,
    required AddOrEditRecordTrackConverter addOrEditRecordTrackConverter,
    required PositionConverter positionConverter,
    required PhotoViewerConverter photoViewerConverter,
  }) {
    final navCallbackStore = RecordTrackNavCallbackStore(
      navigateBack: context.pop,
      navigateToAddMemory: (data) {
        final queryParameters =
            addOrEditMemoryPath.queryParameters(data, positionConverter);

        final path = addOrEditMemoryPath.query(queryParameters).path;

        return context.push(path);
      },
      navigateToAddRecordTrack: (track) {
        final queryParameters = addOrEditRecordTrackPath.queryParameters(
          track: track,
          converter: addOrEditRecordTrackConverter,
        );

        final path = addOrEditRecordTrackPath.query(queryParameters).path;
        context.push(path);
      },
      navigateToPhotoViewerByBytes: (data) {
        final queryParameters = photoViewerPath.queryParameters(
          bytes: data,
          link: null,
          converter: photoViewerConverter,
        );

        final path = photoViewerPath.query(queryParameters).path;

        context.push(path);
      },
      navigateToPhotoViewerByLink: (data) {
        final queryParameters = photoViewerPath.queryParameters(
          bytes: null,
          link: data,
          converter: photoViewerConverter,
        );

        final path = photoViewerPath.query(queryParameters).path;

        context.push(path);
      },
    );

    return navCallbackStore;
  }

  static AddOrEditRecordTrackNavCallbackStore
      createAddOrEditRecordTrackNavCallbackStore({
    required BuildContext context,
  }) {
    final navCallbackStore = AddOrEditRecordTrackNavCallbackStore(
      navigateBack: context.pop,
    );

    return navCallbackStore;
  }

  static CommunityNavCallbackStore createCommunityNavCallbackStore({
    required RecordTrackPath recordTrackPath,
    required BuildContext context,
  }) {
    final navCallbackStore = CommunityNavCallbackStore(
      navigateToTrackTracking: () => context.push(recordTrackPath.path),
    );

    return navCallbackStore;
  }

  static AddOrEditMemoryNavCallbackStore createAddOrEditMemoryNavCallbackStore({
    required BuildContext context,
    required PhotoViewerPath photoViewerPath,
    required PhotoViewerConverter photoViewerConverter,
  }) {
    final navCallbackStore = AddOrEditMemoryNavCallbackStore(
      navigateBack: context.pop,
      navigateToPhotoViewerByBytes: (data) {
        final queryParameters = photoViewerPath.queryParameters(
          bytes: data,
          link: null,
          converter: photoViewerConverter,
        );

        final path = photoViewerPath.query(queryParameters).path;

        context.push(path);
      },
      navigateToPhotoViewerByLink: (data) {
        final queryParameters = photoViewerPath.queryParameters(
          bytes: null,
          link: data,
          converter: photoViewerConverter,
        );

        final path = photoViewerPath.query(queryParameters).path;

        context.push(path);
      },
      navigateWithResult: (memory) => context.pop(memory),
    );

    return navCallbackStore;
  }
}
