// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$userTracksHash() => r'b4803fff7e3f1044e65600acf9d163cd87bc7bde';

/// See also [userTracks].
@ProviderFor(userTracks)
final userTracksProvider = AutoDisposeStreamProvider<List<Track>>.internal(
  userTracks,
  name: r'userTracksProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$userTracksHash,
  dependencies: <ProviderOrFamily>[accountsRepositoryProvider],
  allTransitiveDependencies: <ProviderOrFamily>{
    accountsRepositoryProvider,
    ...?accountsRepositoryProvider.allTransitiveDependencies
  },
);

typedef UserTracksRef = AutoDisposeStreamProviderRef<List<Track>>;
String _$addToFavouriteTracksUseCaseHash() =>
    r'39b191e983fd875fb982639b62d51127619da516';

/// See also [addToFavouriteTracksUseCase].
@ProviderFor(addToFavouriteTracksUseCase)
final addToFavouriteTracksUseCaseProvider =
    AutoDisposeProvider<AddToFavouriteTracksUseCase>.internal(
  addToFavouriteTracksUseCase,
  name: r'addToFavouriteTracksUseCaseProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$addToFavouriteTracksUseCaseHash,
  dependencies: <ProviderOrFamily>[accountsRepositoryProvider],
  allTransitiveDependencies: <ProviderOrFamily>{
    accountsRepositoryProvider,
    ...?accountsRepositoryProvider.allTransitiveDependencies
  },
);

typedef AddToFavouriteTracksUseCaseRef
    = AutoDisposeProviderRef<AddToFavouriteTracksUseCase>;
String _$favouriteTrackIdsChangesUseCaseHash() =>
    r'507c86cfed1656681b248f57dea3d29f9bee60d9';

/// See also [favouriteTrackIdsChangesUseCase].
@ProviderFor(favouriteTrackIdsChangesUseCase)
final favouriteTrackIdsChangesUseCaseProvider =
    AutoDisposeProvider<FavouriteTrackIdsChangesUseCase>.internal(
  favouriteTrackIdsChangesUseCase,
  name: r'favouriteTrackIdsChangesUseCaseProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$favouriteTrackIdsChangesUseCaseHash,
  dependencies: <ProviderOrFamily>[accountsRepositoryProvider],
  allTransitiveDependencies: <ProviderOrFamily>{
    accountsRepositoryProvider,
    ...?accountsRepositoryProvider.allTransitiveDependencies
  },
);

typedef FavouriteTrackIdsChangesUseCaseRef
    = AutoDisposeProviderRef<FavouriteTrackIdsChangesUseCase>;
String _$signOutUseCaseHash() => r'd5796939dff4ba349c91ce3a9d20c2ca45fdb9cb';

/// See also [signOutUseCase].
@ProviderFor(signOutUseCase)
final signOutUseCaseProvider = AutoDisposeProvider<SignOutUseCase>.internal(
  signOutUseCase,
  name: r'signOutUseCaseProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$signOutUseCaseHash,
  dependencies: <ProviderOrFamily>[accountsRepositoryProvider],
  allTransitiveDependencies: <ProviderOrFamily>{
    accountsRepositoryProvider,
    ...?accountsRepositoryProvider.allTransitiveDependencies
  },
);

typedef SignOutUseCaseRef = AutoDisposeProviderRef<SignOutUseCase>;
String _$removeFromFavouriteTracksUseCaseHash() =>
    r'7d4967327d32b92484ba2f1288899a50ffa70715';

/// See also [removeFromFavouriteTracksUseCase].
@ProviderFor(removeFromFavouriteTracksUseCase)
final removeFromFavouriteTracksUseCaseProvider =
    AutoDisposeProvider<RemoveFromFavouriteTracksUseCase>.internal(
  removeFromFavouriteTracksUseCase,
  name: r'removeFromFavouriteTracksUseCaseProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$removeFromFavouriteTracksUseCaseHash,
  dependencies: <ProviderOrFamily>[accountsRepositoryProvider],
  allTransitiveDependencies: <ProviderOrFamily>{
    accountsRepositoryProvider,
    ...?accountsRepositoryProvider.allTransitiveDependencies
  },
);

typedef RemoveFromFavouriteTracksUseCaseRef
    = AutoDisposeProviderRef<RemoveFromFavouriteTracksUseCase>;
String _$removeTrackUseCaseHash() =>
    r'bab6232790eb0634a615b85613e4f80b69e68b17';

/// See also [removeTrackUseCase].
@ProviderFor(removeTrackUseCase)
final removeTrackUseCaseProvider =
    AutoDisposeProvider<RemoveTrackUseCase>.internal(
  removeTrackUseCase,
  name: r'removeTrackUseCaseProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$removeTrackUseCaseHash,
  dependencies: <ProviderOrFamily>[accountsRepositoryProvider],
  allTransitiveDependencies: <ProviderOrFamily>{
    accountsRepositoryProvider,
    ...?accountsRepositoryProvider.allTransitiveDependencies
  },
);

typedef RemoveTrackUseCaseRef = AutoDisposeProviderRef<RemoveTrackUseCase>;
String _$userFavouriteTracksHash() =>
    r'427032af11fa8df49dc74a86fa7d1ef7f0f37e57';

/// See also [userFavouriteTracks].
@ProviderFor(userFavouriteTracks)
final userFavouriteTracksProvider =
    AutoDisposeStreamProvider<List<TrackUI>>.internal(
  userFavouriteTracks,
  name: r'userFavouriteTracksProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$userFavouriteTracksHash,
  dependencies: <ProviderOrFamily>[
    accountsRepositoryProvider,
    favouriteTrackIdsChangesUseCaseProvider
  ],
  allTransitiveDependencies: <ProviderOrFamily>{
    accountsRepositoryProvider,
    ...?accountsRepositoryProvider.allTransitiveDependencies,
    favouriteTrackIdsChangesUseCaseProvider,
    ...?favouriteTrackIdsChangesUseCaseProvider.allTransitiveDependencies
  },
);

typedef UserFavouriteTracksRef = AutoDisposeStreamProviderRef<List<TrackUI>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
