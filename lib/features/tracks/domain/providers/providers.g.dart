// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$tracksHash() => r'38c0482c46b31ac893e537b5f5f39fba03699b8a';

/// See also [tracks].
@ProviderFor(tracks)
final tracksProvider = AutoDisposeStreamProvider<List<TrackUI>>.internal(
  tracks,
  name: r'tracksProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$tracksHash,
  dependencies: <ProviderOrFamily>[trackRepositoryProvider],
  allTransitiveDependencies: <ProviderOrFamily>{
    trackRepositoryProvider,
    ...?trackRepositoryProvider.allTransitiveDependencies
  },
);

typedef TracksRef = AutoDisposeStreamProviderRef<List<TrackUI>>;
String _$trackDetailsHash() => r'3f739c2edb54b2e130d65716f81c61288c3d1594';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [trackDetails].
@ProviderFor(trackDetails)
const trackDetailsProvider = TrackDetailsFamily();

/// See also [trackDetails].
class TrackDetailsFamily extends Family<AsyncValue<TrackUI?>> {
  /// See also [trackDetails].
  const TrackDetailsFamily();

  /// See also [trackDetails].
  TrackDetailsProvider call(
    String id,
  ) {
    return TrackDetailsProvider(
      id,
    );
  }

  @override
  TrackDetailsProvider getProviderOverride(
    covariant TrackDetailsProvider provider,
  ) {
    return call(
      provider.id,
    );
  }

  static final Iterable<ProviderOrFamily> _dependencies = <ProviderOrFamily>[
    trackRepositoryProvider,
    favouriteTrackIdsChangesUseCaseProvider
  ];

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static final Iterable<ProviderOrFamily> _allTransitiveDependencies =
      <ProviderOrFamily>{
    trackRepositoryProvider,
    ...?trackRepositoryProvider.allTransitiveDependencies,
    favouriteTrackIdsChangesUseCaseProvider,
    ...?favouriteTrackIdsChangesUseCaseProvider.allTransitiveDependencies
  };

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'trackDetailsProvider';
}

/// See also [trackDetails].
class TrackDetailsProvider extends AutoDisposeStreamProvider<TrackUI?> {
  /// See also [trackDetails].
  TrackDetailsProvider(
    String id,
  ) : this._internal(
          (ref) => trackDetails(
            ref as TrackDetailsRef,
            id,
          ),
          from: trackDetailsProvider,
          name: r'trackDetailsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$trackDetailsHash,
          dependencies: TrackDetailsFamily._dependencies,
          allTransitiveDependencies:
              TrackDetailsFamily._allTransitiveDependencies,
          id: id,
        );

  TrackDetailsProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
  }) : super.internal();

  final String id;

  @override
  Override overrideWith(
    Stream<TrackUI?> Function(TrackDetailsRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: TrackDetailsProvider._internal(
        (ref) => create(ref as TrackDetailsRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        id: id,
      ),
    );
  }

  @override
  AutoDisposeStreamProviderElement<TrackUI?> createElement() {
    return _TrackDetailsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is TrackDetailsProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin TrackDetailsRef on AutoDisposeStreamProviderRef<TrackUI?> {
  /// The parameter `id` of this provider.
  String get id;
}

class _TrackDetailsProviderElement
    extends AutoDisposeStreamProviderElement<TrackUI?> with TrackDetailsRef {
  _TrackDetailsProviderElement(super.provider);

  @override
  String get id => (origin as TrackDetailsProvider).id;
}

String _$userFavouriteTracksHash() =>
    r'86a8228157bc3fd701915fc3a334f2ca759e2f89';

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
    trackRepositoryProvider,
    favouriteTrackIdsChangesUseCaseProvider
  ],
  allTransitiveDependencies: <ProviderOrFamily>{
    trackRepositoryProvider,
    ...?trackRepositoryProvider.allTransitiveDependencies,
    favouriteTrackIdsChangesUseCaseProvider,
    ...?favouriteTrackIdsChangesUseCaseProvider.allTransitiveDependencies
  },
);

typedef UserFavouriteTracksRef = AutoDisposeStreamProviderRef<List<TrackUI>>;
String _$userTracksHash() => r'3d40294a527b5d3dd488bf8ead61e0234928fc51';

/// See also [userTracks].
@ProviderFor(userTracks)
final userTracksProvider = AutoDisposeStreamProvider<List<TrackUI>>.internal(
  userTracks,
  name: r'userTracksProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$userTracksHash,
  dependencies: <ProviderOrFamily>[trackRepositoryProvider],
  allTransitiveDependencies: <ProviderOrFamily>{
    trackRepositoryProvider,
    ...?trackRepositoryProvider.allTransitiveDependencies
  },
);

typedef UserTracksRef = AutoDisposeStreamProviderRef<List<TrackUI>>;
String _$watchTrackDetailsUseCaseHash() =>
    r'6fd015537de29eb7278515581de680ab1a3abb86';

/// See also [watchTrackDetailsUseCase].
@ProviderFor(watchTrackDetailsUseCase)
final watchTrackDetailsUseCaseProvider =
    AutoDisposeProvider<WatchTrackDetailsUseCase>.internal(
  watchTrackDetailsUseCase,
  name: r'watchTrackDetailsUseCaseProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$watchTrackDetailsUseCaseHash,
  dependencies: <ProviderOrFamily>[
    trackRepositoryProvider,
    favouriteTrackIdsChangesUseCaseProvider
  ],
  allTransitiveDependencies: <ProviderOrFamily>{
    trackRepositoryProvider,
    ...?trackRepositoryProvider.allTransitiveDependencies,
    favouriteTrackIdsChangesUseCaseProvider,
    ...?favouriteTrackIdsChangesUseCaseProvider.allTransitiveDependencies
  },
);

typedef WatchTrackDetailsUseCaseRef
    = AutoDisposeProviderRef<WatchTrackDetailsUseCase>;
String _$watchMyTrackUseCaseHash() =>
    r'6d34c95a61e12db4cec2ad9bd0918b77a46e59e1';

/// See also [watchMyTrackUseCase].
@ProviderFor(watchMyTrackUseCase)
final watchMyTrackUseCaseProvider =
    AutoDisposeProvider<WatchMyTrackUseCase>.internal(
  watchMyTrackUseCase,
  name: r'watchMyTrackUseCaseProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$watchMyTrackUseCaseHash,
  dependencies: <ProviderOrFamily>[
    favouriteTrackIdsChangesUseCaseProvider,
    trackRepositoryProvider
  ],
  allTransitiveDependencies: <ProviderOrFamily>{
    favouriteTrackIdsChangesUseCaseProvider,
    ...?favouriteTrackIdsChangesUseCaseProvider.allTransitiveDependencies,
    trackRepositoryProvider,
    ...?trackRepositoryProvider.allTransitiveDependencies
  },
);

typedef WatchMyTrackUseCaseRef = AutoDisposeProviderRef<WatchMyTrackUseCase>;
String _$addToFavouriteTracksUseCaseHash() =>
    r'e3a0ed925492a590dd18dbbb214b8ddb63409dbb';

/// See also [addToFavouriteTracksUseCase].
@ProviderFor(addToFavouriteTracksUseCase)
final addToFavouriteTracksUseCaseProvider =
    AutoDisposeProvider<AddFavouriteTrackUseCase>.internal(
  addToFavouriteTracksUseCase,
  name: r'addToFavouriteTracksUseCaseProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$addToFavouriteTracksUseCaseHash,
  dependencies: <ProviderOrFamily>[trackRepositoryProvider],
  allTransitiveDependencies: <ProviderOrFamily>{
    trackRepositoryProvider,
    ...?trackRepositoryProvider.allTransitiveDependencies
  },
);

typedef AddToFavouriteTracksUseCaseRef
    = AutoDisposeProviderRef<AddFavouriteTrackUseCase>;
String _$favouriteTrackIdsChangesUseCaseHash() =>
    r'18190001c186023975fd5a4d02b30cefd2c3d97f';

/// See also [favouriteTrackIdsChangesUseCase].
@ProviderFor(favouriteTrackIdsChangesUseCase)
final favouriteTrackIdsChangesUseCaseProvider =
    AutoDisposeProvider<FavouriteTrackIdsChangesUseCase>.internal(
  favouriteTrackIdsChangesUseCase,
  name: r'favouriteTrackIdsChangesUseCaseProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$favouriteTrackIdsChangesUseCaseHash,
  dependencies: <ProviderOrFamily>[trackRepositoryProvider],
  allTransitiveDependencies: <ProviderOrFamily>{
    trackRepositoryProvider,
    ...?trackRepositoryProvider.allTransitiveDependencies
  },
);

typedef FavouriteTrackIdsChangesUseCaseRef
    = AutoDisposeProviderRef<FavouriteTrackIdsChangesUseCase>;
String _$removeFromFavouriteTracksUseCaseHash() =>
    r'a837611df4bf77639340ffbd448d5bd76fe8b05c';

/// See also [removeFromFavouriteTracksUseCase].
@ProviderFor(removeFromFavouriteTracksUseCase)
final removeFromFavouriteTracksUseCaseProvider =
    AutoDisposeProvider<RemoveFavouriteTracksUseCase>.internal(
  removeFromFavouriteTracksUseCase,
  name: r'removeFromFavouriteTracksUseCaseProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$removeFromFavouriteTracksUseCaseHash,
  dependencies: <ProviderOrFamily>[trackRepositoryProvider],
  allTransitiveDependencies: <ProviderOrFamily>{
    trackRepositoryProvider,
    ...?trackRepositoryProvider.allTransitiveDependencies
  },
);

typedef RemoveFromFavouriteTracksUseCaseRef
    = AutoDisposeProviderRef<RemoveFavouriteTracksUseCase>;
String _$removeMemoryUseCaseHash() =>
    r'c880727f4aba169f4bb19fa85cff53fc7fdaa5a3';

/// See also [removeMemoryUseCase].
@ProviderFor(removeMemoryUseCase)
final removeMemoryUseCaseProvider =
    AutoDisposeProvider<RemoveMemoryUseCase>.internal(
  removeMemoryUseCase,
  name: r'removeMemoryUseCaseProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$removeMemoryUseCaseHash,
  dependencies: <ProviderOrFamily>[trackRepositoryProvider],
  allTransitiveDependencies: <ProviderOrFamily>{
    trackRepositoryProvider,
    ...?trackRepositoryProvider.allTransitiveDependencies
  },
);

typedef RemoveMemoryUseCaseRef = AutoDisposeProviderRef<RemoveMemoryUseCase>;
String _$removeTrackUseCaseHash() =>
    r'c0836b233f3d5812b7c04ab732bf1e9aadbb0009';

/// See also [removeTrackUseCase].
@ProviderFor(removeTrackUseCase)
final removeTrackUseCaseProvider =
    AutoDisposeProvider<RemoveTrackUseCase>.internal(
  removeTrackUseCase,
  name: r'removeTrackUseCaseProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$removeTrackUseCaseHash,
  dependencies: <ProviderOrFamily>[trackRepositoryProvider],
  allTransitiveDependencies: <ProviderOrFamily>{
    trackRepositoryProvider,
    ...?trackRepositoryProvider.allTransitiveDependencies
  },
);

typedef RemoveTrackUseCaseRef = AutoDisposeProviderRef<RemoveTrackUseCase>;
String _$watchFavouriteTrackDetailsUseCaseHash() =>
    r'c6aaa0c311610ffdcf90aa4684ccc804eae51a2c';

/// See also [watchFavouriteTrackDetailsUseCase].
@ProviderFor(watchFavouriteTrackDetailsUseCase)
final watchFavouriteTrackDetailsUseCaseProvider =
    AutoDisposeProvider<WatchFavouriteTrackUseCase>.internal(
  watchFavouriteTrackDetailsUseCase,
  name: r'watchFavouriteTrackDetailsUseCaseProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$watchFavouriteTrackDetailsUseCaseHash,
  dependencies: <ProviderOrFamily>[
    favouriteTrackIdsChangesUseCaseProvider,
    trackRepositoryProvider
  ],
  allTransitiveDependencies: <ProviderOrFamily>{
    favouriteTrackIdsChangesUseCaseProvider,
    ...?favouriteTrackIdsChangesUseCaseProvider.allTransitiveDependencies,
    trackRepositoryProvider,
    ...?trackRepositoryProvider.allTransitiveDependencies
  },
);

typedef WatchFavouriteTrackDetailsUseCaseRef
    = AutoDisposeProviderRef<WatchFavouriteTrackUseCase>;
String _$updateTrackUseCaseHash() =>
    r'5010237dbad2ab3287b86a8349122c101abfd700';

/// See also [updateTrackUseCase].
@ProviderFor(updateTrackUseCase)
final updateTrackUseCaseProvider =
    AutoDisposeProvider<UpdateTrackUseCase>.internal(
  updateTrackUseCase,
  name: r'updateTrackUseCaseProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$updateTrackUseCaseHash,
  dependencies: <ProviderOrFamily>[trackRepositoryProvider],
  allTransitiveDependencies: <ProviderOrFamily>{
    trackRepositoryProvider,
    ...?trackRepositoryProvider.allTransitiveDependencies
  },
);

typedef UpdateTrackUseCaseRef = AutoDisposeProviderRef<UpdateTrackUseCase>;
String _$updateMemoryUseCaseHash() =>
    r'740c662e520beeb41d5a5ec0be74c700ae19d70e';

/// See also [updateMemoryUseCase].
@ProviderFor(updateMemoryUseCase)
final updateMemoryUseCaseProvider =
    AutoDisposeProvider<UpdateMemoryUseCase>.internal(
  updateMemoryUseCase,
  name: r'updateMemoryUseCaseProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$updateMemoryUseCaseHash,
  dependencies: <ProviderOrFamily>[trackRepositoryProvider],
  allTransitiveDependencies: <ProviderOrFamily>{
    trackRepositoryProvider,
    ...?trackRepositoryProvider.allTransitiveDependencies
  },
);

typedef UpdateMemoryUseCaseRef = AutoDisposeProviderRef<UpdateMemoryUseCase>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
