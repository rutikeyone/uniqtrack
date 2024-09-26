import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:generic_usecase/generic_usecase.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:uniqtrack/app/factories/stores/store_factory.dart';
import 'package:uniqtrack/app/glue/accounts/providers/providers.dart';
import 'package:uniqtrack/app/glue/tracks/providers/providers.dart';
import 'package:uniqtrack/app/navigation/arguments/args.dart';
import 'package:uniqtrack/core/common/app_location_handler/app_location_handler.dart';
import 'package:uniqtrack/core/common/app_permission_handler/app_permission_handler.dart';
import 'package:uniqtrack/core/common/common_ui/common_ui_delegate.dart';
import 'package:uniqtrack/core/common/exceptions/exceptions.dart';
import 'package:uniqtrack/core/common_impl/app_location_handler_impl.dart';
import 'package:uniqtrack/core/common_impl/app_permission_handler_impl.dart';
import 'package:uniqtrack/core/common_impl/common_ui/common_ui_delegate_notifier.dart';
import 'package:uniqtrack/data/accounts/providers/providers.dart';
import 'package:uniqtrack/features/accounts/domain/accounts_repository.dart';
import 'package:uniqtrack/features/accounts/domain/user_changes_use_case.dart';
import 'package:uniqtrack/features/accounts/presentation/forgot_password/stores/forgot_password_store.dart';
import 'package:uniqtrack/features/accounts/presentation/login/stores/login_store.dart';
import 'package:uniqtrack/features/accounts/presentation/register/stores/register_store.dart';
import 'package:uniqtrack/features/tracks/domain/add_favourite_track_use_case.dart';
import 'package:uniqtrack/features/tracks/domain/entities/entities.dart';
import 'package:uniqtrack/features/tracks/domain/image_repository.dart';
import 'package:uniqtrack/features/tracks/domain/providers/providers.dart';
import 'package:uniqtrack/features/tracks/domain/remove_favourite_track_use_case.dart';
import 'package:uniqtrack/features/tracks/domain/remove_memory_use_case.dart';
import 'package:uniqtrack/features/tracks/domain/remove_track_use_case.dart';
import 'package:uniqtrack/features/tracks/domain/track_repository.dart';
import 'package:uniqtrack/features/tracks/domain/update_memory_use_case.dart';
import 'package:uniqtrack/features/tracks/domain/update_track_use_case.dart';
import 'package:uniqtrack/features/tracks/domain/watch_favourite_track_use_case.dart';
import 'package:uniqtrack/features/tracks/domain/watch_my_track_use_case.dart';
import 'package:uniqtrack/features/tracks/domain/watch_track_use_case.dart';
import 'package:uniqtrack/features/tracks/presentation/add_or_edit_memory/stores/add_or_edit_memory_store.dart';
import 'package:uniqtrack/features/tracks/presentation/add_or_edit_record_track/stores/add_or_edit_record_track_store.dart';
import 'package:uniqtrack/features/tracks/presentation/details/store/details_store.dart';
import 'package:uniqtrack/features/tracks/presentation/photo_viewer/stores/photo_viewer_store.dart';
import 'package:uniqtrack/features/tracks/presentation/record_track/stores/record_track_store.dart';
import 'package:uuid/uuid.dart';

part 'store_factory_impl.g.dart';

@Riverpod(dependencies: [
  watchTrackDetailsUseCase,
  watchFavouriteTrackDetailsUseCase,
  watchMyTrackUseCase,
  addToFavouriteTracksUseCase,
  removeFromFavouriteTracksUseCase,
  removeTrackUseCase,
  removeMemoryUseCase,
  updateTrackUseCase,
  updateMemoryUseCase,
  appLocationHandler,
  trackRepository,
])
StoreFactory storeFactory(StoreFactoryRef ref) {
  final commonUIDelegate = ref.watch(commonUIDelegateNotifierProvider.notifier);

  final userChangesUseCase = ref.watch(userChangesUseCaseProvider);
  final watchTrackDetailsUseCase = ref.watch(watchTrackDetailsUseCaseProvider);
  final watchFavouriteTrackDetailsUseCase =
      ref.watch(watchFavouriteTrackDetailsUseCaseProvider);
  final watchMyTrackDetailsUseCase = ref.watch(watchMyTrackUseCaseProvider);
  final addToFavouritesTracksUseCase =
      ref.watch(addToFavouriteTracksUseCaseProvider);
  final removeFromFavouriteTracksUseCase =
      ref.watch(removeFromFavouriteTracksUseCaseProvider);
  final removeTrackUseCase = ref.watch(removeTrackUseCaseProvider);
  final removeMemoryUseCase = ref.watch(removeMemoryUseCaseProvider);
  final updateTrackUseCase = ref.watch(updateTrackUseCaseProvider);
  final updateMemoryUseCase = ref.watch(updateMemoryUseCaseProvider);

  final appPermissionHandler = ref.watch(appPermissionHandlerProvider);
  final appLocationHandler = ref.watch(appLocationHandlerProvider);

  final trackRepository = ref.watch(trackRepositoryProvider);
  final imagesRepository = ref.watch(imageRepositoryProvider);
  final accountsRepository = ref.watch(accountsRepositoryProvider);

  final uuid = ref.watch(uuidProvider);

  return StoreFactoryImpl(
    commonUIDelegate: commonUIDelegate,
    userChangesUseCase: userChangesUseCase,
    appPermissionHandler: appPermissionHandler,
    recordTrackRepository: trackRepository,
    appLocationHandler: appLocationHandler,
    chooseImagesRepository: imagesRepository,
    accountsRepository: accountsRepository,
    uuid: uuid,
    watchFavouriteTrackDetailsUseCase: watchFavouriteTrackDetailsUseCase,
    watchMyTrackUseCase: watchMyTrackDetailsUseCase,
    addToFavouritesTracksUseCase: addToFavouritesTracksUseCase,
    removeFromFavouriteTracksUseCase: removeFromFavouriteTracksUseCase,
    removeTrackUseCase: removeTrackUseCase,
    watchTrackDetailsUseCase: watchTrackDetailsUseCase,
    removeMemoryUseCase: removeMemoryUseCase,
    updateTrackUseCase: updateTrackUseCase,
    updateMemoryUseCase: updateMemoryUseCase,
  );
}

class StoreFactoryImpl implements StoreFactory {
  final AccountsRepository _accountsRepository;
  final ImageRepository _imagesRepository;
  final TrackRepository _recordTrackRepository;

  final Uuid _uuid;

  final CommonUIDelegate _commonUIDelegate;
  final AppLocationHandler _appLocationHandler;

  final UserChangesUseCase _authStateChangesUseCase;
  final AddFavouriteTrackUseCase _addToFavouriteTracksUseCase;
  final RemoveFavouriteTracksUseCase _removeFavouriteTrackUseCase;
  final RemoveTrackUseCase _removeTrackUseCase;
  final WatchTrackDetailsUseCase _watchTrackDetailsUseCase;
  final WatchMyTrackUseCase _watchMyTrackUseCase;
  final WatchFavouriteTrackUseCase _watchFavouriteDetailsUseCase;
  final RemoveMemoryUseCase _removeMemoryUseCase;
  final UpdateTrackUseCase _updateTrackUseCase;
  final UpdateMemoryUseCase _updateMemoryUseCase;

  const StoreFactoryImpl({
    required Uuid uuid,
    required CommonUIDelegate commonUIDelegate,
    required AccountsRepository accountsRepository,
    required UserChangesUseCase userChangesUseCase,
    required AppPermissionHandler appPermissionHandler,
    required AppLocationHandler appLocationHandler,
    required ImageRepository chooseImagesRepository,
    required TrackRepository recordTrackRepository,
    required WatchFavouriteTrackUseCase watchFavouriteTrackDetailsUseCase,
    required AddFavouriteTrackUseCase addToFavouritesTracksUseCase,
    required RemoveFavouriteTracksUseCase removeFromFavouriteTracksUseCase,
    required RemoveTrackUseCase removeTrackUseCase,
    required WatchTrackDetailsUseCase watchTrackDetailsUseCase,
    required WatchMyTrackUseCase watchMyTrackUseCase,
    required RemoveMemoryUseCase removeMemoryUseCase,
    required UpdateTrackUseCase updateTrackUseCase,
    required UpdateMemoryUseCase updateMemoryUseCase,
  })  : _uuid = uuid,
        _accountsRepository = accountsRepository,
        _recordTrackRepository = recordTrackRepository,
        _imagesRepository = chooseImagesRepository,
        _commonUIDelegate = commonUIDelegate,
        _appLocationHandler = appLocationHandler,
        _authStateChangesUseCase = userChangesUseCase,
        _watchMyTrackUseCase = watchMyTrackUseCase,
        _watchTrackDetailsUseCase = watchTrackDetailsUseCase,
        _watchFavouriteDetailsUseCase = watchFavouriteTrackDetailsUseCase,
        _addToFavouriteTracksUseCase = addToFavouritesTracksUseCase,
        _removeFavouriteTrackUseCase = removeFromFavouriteTracksUseCase,
        _removeTrackUseCase = removeTrackUseCase,
        _removeMemoryUseCase = removeMemoryUseCase,
        _updateTrackUseCase = updateTrackUseCase,
        _updateMemoryUseCase = updateMemoryUseCase;

  @override
  RegisterStore createRegisterStore() {
    return RegisterStore(
      accountsRepository: _accountsRepository,
      commonUIDelegate: _commonUIDelegate,
    );
  }

  @override
  LoginStore createLoginStore() {
    return LoginStore(
      accountsRepository: _accountsRepository,
      commonUIDelegate: _commonUIDelegate,
      authStateChangesUseCase: _authStateChangesUseCase,
    );
  }

  @override
  ForgotPasswordStore createForgotPasswordStore(String? email) {
    return ForgotPasswordStore(
      emailArgument: email,
      commonUIDelegate: _commonUIDelegate,
      accountsRepository: _accountsRepository,
    );
  }

  @override
  RecordTrackStore createRecordTrackStore({
    required Track? track,
    required DetailsMode? mode,
  }) {
    return RecordTrackStore(
      recordTrackRepository: _recordTrackRepository,
      commonUIDelegate: _commonUIDelegate,
      appLocationHandler: _appLocationHandler,
      watchTrackUseCase: mode?.when(
        tracks: () => _watchTrackDetailsUseCase,
        myTracks: () => _watchMyTrackUseCase,
        myFavouriteTracks: () => _watchFavouriteDetailsUseCase,
      ),
      previousTrack: track,
    );
  }

  @override
  AddOrEditRecordTrackStore createAddOrEditRecordTrackStore({
    required Track? track,
  }) {
    return AddOrEditRecordTrackStore(
      track: track,
      commonUIDelegate: _commonUIDelegate,
      recordTrackRepository: _recordTrackRepository,
      updateTrackUseCase: _updateTrackUseCase,
      deleteTrackUseCase: _removeTrackUseCase,
    );
  }

  @override
  AddOrEditMemoryStore createAddOrEditMemoryStore({
    required Position? position,
    required Memory? memory,
    required Track? track,
  }) {
    return AddOrEditMemoryStore(
      imagesRepository: _imagesRepository,
      commonUIDelegate: _commonUIDelegate,
      uuid: _uuid,
      updateMemoryUseCase: _updateMemoryUseCase,
      removeMemoryUseCase: _removeMemoryUseCase,
      position: position,
      memory: memory,
      track: track,
    );
  }

  @override
  PhotoViewerStore createPhotoViewerStore({
    required Uint8List? bytes,
    required String? link,
  }) {
    return PhotoViewerStore(
      bytes: bytes,
      link: link,
    );
  }

  @override
  DetailsStore createDetailsStore({
    required String? id,
    required bool canDelete,
    required bool closeWhenRemoveFromFavourites,
    required DetailsMode mode,
  }) {
    final StreamUsecase<String, TrackUI?> watchTrackDetailsUseCase = mode.when(
      tracks: () => _watchTrackDetailsUseCase,
      myTracks: () => _watchMyTrackUseCase,
      myFavouriteTracks: () => _watchFavouriteDetailsUseCase,
    );

    final Usecase<Track, Either<AppError, void>>? removeTrackUseCase =
        mode.maybeWhen(
      myFavouriteTracks: () => null,
      orElse: () => _removeTrackUseCase,
    );

    return DetailsStore(
      id: id,
      canDelete: canDelete,
      closeWhenRemoveFromFavourites: closeWhenRemoveFromFavourites,
      watchTrackDetailsUseCase: watchTrackDetailsUseCase,
      removeMemoryUseCase: _removeMemoryUseCase,
      addToFavouriteTracksUseCase: _addToFavouriteTracksUseCase,
      removeTrackUseCase: removeTrackUseCase,
      removeFavouriteTrackUseCase: _removeFavouriteTrackUseCase,
      commonUIDelegate: _commonUIDelegate,
    );
  }
}
