import 'package:flutter/foundation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:uniqtrack/app/navigation/arguments/args.dart';
import 'package:uniqtrack/data/accounts/providers/providers.dart';
import 'package:uniqtrack/features/accounts/domain/add_to_favourite_tracks_use_case.dart';
import 'package:uniqtrack/features/accounts/domain/providers/providers.dart';
import 'package:uniqtrack/features/accounts/domain/remove_from_favourite_tracks_use_case.dart';
import 'package:uniqtrack/features/accounts/domain/remove_track_use_case.dart';
import 'package:uniqtrack/features/accounts/domain/user_changes_use_case.dart';
import 'package:uniqtrack/app/factories/stores/store_factory.dart';
import 'package:uniqtrack/app/glue/accounts/providers/providers.dart';

import 'package:uniqtrack/app/glue/tracks/providers/providers.dart';
import 'package:uniqtrack/core/common/app_location_handler/app_location_handler.dart';
import 'package:uniqtrack/core/common/app_permission_handler/app_permission_handler.dart';
import 'package:uniqtrack/core/common/common_ui/common_ui_delegate.dart';
import 'package:uniqtrack/core/common_impl/app_location_handler_impl.dart';
import 'package:uniqtrack/core/common_impl/app_permission_handler_impl.dart';
import 'package:uniqtrack/core/common_impl/common_ui/common_ui_delegate_notifier.dart';
import 'package:uniqtrack/features/accounts/domain/accounts_repository.dart';
import 'package:uniqtrack/features/accounts/domain/watch_favourite_track_details_use_case.dart';
import 'package:uniqtrack/features/accounts/domain/watch_my_track_use_case.dart';
import 'package:uniqtrack/features/accounts/presentation/forgot_password/stores/forgot_password_store.dart';
import 'package:uniqtrack/features/accounts/presentation/login/stores/login_store.dart';
import 'package:uniqtrack/features/accounts/presentation/register/stores/register_store.dart';
import 'package:uniqtrack/features/tracks/domain/entities/entities.dart';
import 'package:uniqtrack/features/tracks/domain/image_repository.dart';
import 'package:uniqtrack/features/tracks/domain/providers/providers.dart';
import 'package:uniqtrack/features/tracks/domain/track_repository.dart';
import 'package:uniqtrack/features/tracks/domain/watch_track_details_use_case.dart';
import 'package:uniqtrack/features/tracks/presentation/add_or_edit_memory/stores/add_or_edit_memory_store.dart';
import 'package:uniqtrack/features/tracks/presentation/add_or_edit_record_track/stores/add_or_edit_record_track_store.dart';
import 'package:uniqtrack/features/tracks/presentation/details/store/details_store.dart';
import 'package:uniqtrack/features/tracks/presentation/photo_viewer/stores/photo_viewer_store.dart';
import 'package:uniqtrack/features/tracks/presentation/record_track/stores/record_track_store.dart';
import 'package:uuid/uuid.dart';

part 'store_factory_impl.g.dart';

@Riverpod(dependencies: [
  appLocationHandler,
  trackRepository,
  accountsRepository,
  watchTrackDetailsUseCase,
  watchFavouriteTrackDetailsUseCase,
  watchMyTrackUseCase,
  addToFavouriteTracksUseCase,
  removeFromFavouriteTracksUseCase,
  removeTrackUseCase,
])
StoreFactory storeFactory(StoreFactoryRef ref) {
  final commonUIDelegate = ref.watch(commonUIDelegateNotifierProvider.notifier);

  final userChangesUseCase = ref.watch(userChangesUseCaseProvider);

  final appPermissionHandler = ref.watch(appPermissionHandlerProvider);
  final appLocationHandler = ref.watch(appLocationHandlerProvider);

  final trackRepository = ref.watch(trackRepositoryProvider);
  final imagesRepository = ref.watch(imageRepositoryProvider);
  final accountsRepository = ref.watch(accountsRepositoryProvider);

  final uuid = ref.watch(uuidProvider);

  final watchTrackDetailsUseCaseBuilder =
      (String id) => ref.watch(watchTrackDetailsUseCaseProvider(id));
  final watchFavouriteTrackDetailsUseCaseBuilder =
      (String id) => ref.watch(watchFavouriteTrackDetailsUseCaseProvider(id));
  final watchMyTrackDetailsUseCaseBuilder =
      (String id) => ref.watch(watchMyTrackUseCaseProvider(id));

  final addToFavouritesTracksUseCase =
      ref.watch(addToFavouriteTracksUseCaseProvider);

  final removeFromFavouriteTracksUseCase =
      ref.watch(removeFromFavouriteTracksUseCaseProvider);
  final removeTrackUseCase = ref.watch(removeTrackUseCaseProvider);

  return StoreFactoryImpl(
    commonUIDelegate: commonUIDelegate,
    userChangesUseCase: userChangesUseCase,
    appPermissionHandler: appPermissionHandler,
    recordTrackRepository: trackRepository,
    appLocationHandler: appLocationHandler,
    chooseImagesRepository: imagesRepository,
    accountsRepository: accountsRepository,
    uuid: uuid,
    watchTrackDetailsUseCaseBuilder: watchTrackDetailsUseCaseBuilder,
    watchFavouriteTrackDetailsUseCaseBuilder:
        watchFavouriteTrackDetailsUseCaseBuilder,
    watchMyTrackUseCaseBuilder: watchMyTrackDetailsUseCaseBuilder,
    addToFavouritesTracksUseCase: addToFavouritesTracksUseCase,
    removeFromFavouriteTracksUseCase: removeFromFavouriteTracksUseCase,
    removeTrackUseCase: removeTrackUseCase,
  );
}

class StoreFactoryImpl implements StoreFactory {
  final AccountsRepository _accountsRepository;
  final CommonUIDelegate _commonUIDelegate;
  final UserChangesUseCase _authStateChangesUseCase;
  final AppLocationHandler _appLocationHandler;
  final ImageRepository _imagesRepository;
  final TrackRepository _recordTrackRepository;
  final Uuid _uuid;
  final AddToFavouriteTracksUseCase _addToFavouriteTracksUseCase;
  final RemoveFromFavouriteTracksUseCase _removeFromFavouriteTracksUseCase;
  final RemoveTrackUseCase _removeTrackUseCase;

  final WatchTrackDetailsUseCase Function(String)
      _watchTrackDetailsUseCaseBuilder;
  final WatchFavouriteTrackDetailsUseCase Function(String)
      _watchFavouriteDetailsUseCaseBuilder;
  final WatchMyTrackUseCase Function(String) _watchMyTrackUseCaseBuilder;

  const StoreFactoryImpl({
    required Uuid uuid,
    required CommonUIDelegate commonUIDelegate,
    required AccountsRepository accountsRepository,
    required UserChangesUseCase userChangesUseCase,
    required AppPermissionHandler appPermissionHandler,
    required AppLocationHandler appLocationHandler,
    required ImageRepository chooseImagesRepository,
    required TrackRepository recordTrackRepository,
    required WatchTrackDetailsUseCase Function(String)
        watchTrackDetailsUseCaseBuilder,
    required WatchFavouriteTrackDetailsUseCase Function(String)
        watchFavouriteTrackDetailsUseCaseBuilder,
    required WatchMyTrackUseCase Function(String) watchMyTrackUseCaseBuilder,
    required AddToFavouriteTracksUseCase addToFavouritesTracksUseCase,
    required RemoveFromFavouriteTracksUseCase removeFromFavouriteTracksUseCase,
    required RemoveTrackUseCase removeTrackUseCase,
  })  : _uuid = uuid,
        _accountsRepository = accountsRepository,
        _commonUIDelegate = commonUIDelegate,
        _authStateChangesUseCase = userChangesUseCase,
        _appLocationHandler = appLocationHandler,
        _imagesRepository = chooseImagesRepository,
        _recordTrackRepository = recordTrackRepository,
        _watchTrackDetailsUseCaseBuilder = watchTrackDetailsUseCaseBuilder,
        _watchFavouriteDetailsUseCaseBuilder =
            watchFavouriteTrackDetailsUseCaseBuilder,
        _addToFavouriteTracksUseCase = addToFavouritesTracksUseCase,
        _removeFromFavouriteTracksUseCase = removeFromFavouriteTracksUseCase,
        _removeTrackUseCase = removeTrackUseCase,
        _watchMyTrackUseCaseBuilder = watchMyTrackUseCaseBuilder;

  @override
  RegisterStore createRegisterStore() {
    return RegisterStore(
      accountsRepository: _accountsRepository,
      commonUIDelegate: _commonUIDelegate,
      authStateChangesUseCase: _authStateChangesUseCase,
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
  RecordTrackStore createRecordTrackStore() {
    return RecordTrackStore(
      recordTrackRepository: _recordTrackRepository,
      commonUIDelegate: _commonUIDelegate,
      appLocationHandler: _appLocationHandler,
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
    );
  }

  @override
  AddOrEditMemoryStore createAddOrEditMemoryStore({
    required Position? position,
    required Memory? memory,
  }) {
    return AddOrEditMemoryStore(
      imagesRepository: _imagesRepository,
      commonUIDelegate: _commonUIDelegate,
      position: position,
      uuid: _uuid,
      memory: memory,
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
    required String id,
    required bool canDelete,
    required bool closeWhenRemoveFromFavourites,
    required DetailsMode mode,
  }) {
    return DetailsStore(
      id: id,
      canDelete: canDelete,
      closeWhenRemoveFromFavourites: closeWhenRemoveFromFavourites,
      watchTrackDetailsUseCase: mode.when(
        tracks: () => _watchTrackDetailsUseCaseBuilder(id),
        myTracks: () => _watchMyTrackUseCaseBuilder(id),
        myFavouriteTracks: () => _watchFavouriteDetailsUseCaseBuilder(id),
      ),
      addToFavouriteTracksUseCase: _addToFavouriteTracksUseCase,
      removeFromFavouriteTracksUseCase: _removeFromFavouriteTracksUseCase,
      removeTrackUseCase: _removeTrackUseCase,
      commonUIDelegate: _commonUIDelegate,
    );
  }
}
