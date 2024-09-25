import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:uniqtrack/app/navigation/arguments/args.dart';
import 'package:uniqtrack/app/navigation/paths/add_or_edit_memory_path.dart';
import 'package:uniqtrack/app/navigation/paths/add_or_edit_record_track_path.dart';
import 'package:uniqtrack/app/navigation/paths/forgot_password_path.dart';
import 'package:uniqtrack/app/navigation/paths/my_favourite_tracks_path.dart';
import 'package:uniqtrack/app/navigation/paths/my_tracks_path.dart';
import 'package:uniqtrack/app/navigation/paths/photo_viewer_path.dart';
import 'package:uniqtrack/app/navigation/paths/record_track_path.dart';
import 'package:uniqtrack/app/navigation/paths/register_path.dart';
import 'package:uniqtrack/app/navigation/paths/details_path.dart';
import 'package:uniqtrack/app/navigation/stores/nav_callback_store.dart';

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
    required AddOrEditRecordTrackArgsConverter addOrEditRecordTrackConverter,
    required PhotoViewerConverter photoViewerConverter,
    required AddOrEditMemoryArgsConverter addOrEditMemoryArgsConverter,
  }) {
    final navCallbackStore = RecordTrackNavCallbackStore(
      navigateBack: context.pop,
      navigateToAddMemory: (data) {
        final queryParameters = addOrEditMemoryPath.queryParameters(
          position: data,
          memory: null,
          track: null,
          converter: addOrEditMemoryArgsConverter,
        );

        final path = addOrEditMemoryPath.query(queryParameters).path;

        return context.push(path);
      },
      navigateToEditMemory: (data) {
        final queryParameters = addOrEditMemoryPath.queryParameters(
          position: null,
          track: null,
          memory: data,
          converter: addOrEditMemoryArgsConverter,
        );

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
      navigateToPhotoViewer: (data) {
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
    required BuildContext context,
    required RecordTrackPath recordTrackPath,
    required DetailsPath trackDetailsPath,
    required AddOrEditRecordTrackPath editRecordTrackPath,
    required DetailsArgsConverter detailsArgsConverter,
    required AddOrEditRecordTrackArgsConverter editRecordTrackArgsConverter,
  }) {
    final navCallbackStore = CommunityNavCallbackStore(
      closeDialog: context.pop,
      navigateToTrackTracking: () => context.push(recordTrackPath.path),
      navigateToTrackDetails: (track) {
        final id = track.id;
        if (id == null) return;

        final queryParameters = trackDetailsPath.queryParameters(
          id: id,
          mode: DetailsMode.tracks(),
          detailsConverter: detailsArgsConverter,
        );

        final path = trackDetailsPath.query(queryParameters).path;

        context.push(path);
      },
      navigateToEditTrack: (track) {
        if (track == null) return;

        final queryParameters = editRecordTrackPath.queryParameters(
          track: track,
          converter: editRecordTrackArgsConverter,
        );

        final path = editRecordTrackPath.query(queryParameters).path;

        context.push(path);
      },
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
      navigateToPhotoViewer: (data) {
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

  static MyTracksNavCallbackStore createMyTracksNavCallbackStore({
    required BuildContext context,
    required DetailsPath detailsPath,
    required AddOrEditRecordTrackPath editTrackPath,
    required DetailsArgsConverter detailsArgsConverter,
    required AddOrEditRecordTrackArgsConverter editRecordTrackArgsConverter,
  }) {
    return MyTracksNavCallbackStore(
      closeDialog: context.pop,
      navigateToTrackDetails: (track) {
        final id = track.id;
        if (id == null) return;

        final queryParameters = detailsPath.queryParameters(
          id: id,
          mode: DetailsMode.myTracks(),
          detailsConverter: detailsArgsConverter,
        );

        final path = detailsPath.query(queryParameters).path;

        context.push(path);
      },
      navigateToEditTrack: (track) {
        if (track == null) return;

        final queryParameters = editTrackPath.queryParameters(
          track: track,
          converter: editRecordTrackArgsConverter,
        );

        final path = editTrackPath.query(queryParameters).path;

        context.push(path);
      },
    );
  }

  static MyFavouriteTracksNavCallbackStore
      createMyFavouriteTracksNavCallbackStore({
    required BuildContext context,
    required DetailsPath trackDetailsPath,
    required DetailsArgsConverter detailsArgsConverter,
  }) {
    return MyFavouriteTracksNavCallbackStore(
      navigateToTrackDetails: (track) {
        final id = track.id;
        if (id == null) return;

        final queryParameters = trackDetailsPath.queryParameters(
          id: id,
          mode: DetailsMode.myFavouriteTracks(),
          detailsConverter: detailsArgsConverter,
        );

        final path = trackDetailsPath.query(queryParameters).path;

        context.push(path);
      },
    );
  }

  static DetailsNavCallbackStore createDetailsNavCallbackStore({
    required BuildContext context,
    required PhotoViewerPath photoViewerPath,
    required RecordTrackPath trackingPath,
    required RecordTrackArgsConverter recordTrackConverter,
    required PhotoViewerConverter photoViewerConverter,
    required AddOrEditRecordTrackArgsConverter
        addOrEditRecordTrackArgsConverter,
    required AddOrEditMemoryArgsConverter addOrEditMemoryArgsConverter,
    required DetailsMode? mode,
    AddOrEditRecordTrackPath? editRecordTrackPath,
    AddOrEditMemoryPath? editMemoryPath,
  }) {
    return DetailsNavCallbackStore(
      navigateBack: context.pop,
      navigateToPhotoViewer: (value) {
        final args = PhotoViewerArgs(
          bytes: null,
          link: value,
        );

        final queryParameters = photoViewerConverter.toJson(args);
        final path = photoViewerPath.query(queryParameters).path;

        context.push(path);
      },
      navigateToRecordTrack: (track) {
        final args = RecordTrackArgs(
          track: track,
          mode: mode,
        );

        final queryParameters = recordTrackConverter.toJson(args);
        final path = trackingPath.query(queryParameters).path;

        context.push(path);
      },
      navigateToEditTrack: editRecordTrackPath != null
          ? (track) {
              if (track == null) return;

              final queryParameters = editRecordTrackPath.queryParameters(
                track: track,
                converter: addOrEditRecordTrackArgsConverter,
              );

              final path = editRecordTrackPath.query(queryParameters).path;

              context.push(path);
            }
          : null,
      navigateToEditMemory: editMemoryPath != null
          ? (track, memory) {
              if (track == null || memory == null) return;

              final queryParameters = editMemoryPath.queryParameters(
                position: null,
                track: track,
                memory: memory,
                converter: addOrEditMemoryArgsConverter,
              );

              final path = editMemoryPath.query(queryParameters).path;

              context.push(path);
            }
          : null,
    );
  }

  static ProfileNavCallbackStore createProfileNavCallbackStore({
    required BuildContext context,
    required MyTracksPath myTracksPath,
    required MyFavouriteTracksPath myFavouriteTracksPath,
  }) {
    return ProfileNavCallbackStore(
      navigateToMyTracks: () => context.push(myTracksPath.path),
      navigateToMyFavouriteTracks: () =>
          context.push(myFavouriteTracksPath.path),
    );
  }
}
