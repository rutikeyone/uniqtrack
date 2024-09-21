// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$userTracksHash() => r'03cf25bd9c1756a92cc979e6e5f0ac7ace824067';

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
    r'd6a510c0912bb2316b15aa247319f0768333ca5d';

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
String _$watchFavouriteTrackDetailsUseCaseHash() =>
    r'5e37f7e2c6e0be6d3f07dcf92b96e5dd965d3c7f';

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

/// See also [watchFavouriteTrackDetailsUseCase].
@ProviderFor(watchFavouriteTrackDetailsUseCase)
const watchFavouriteTrackDetailsUseCaseProvider =
    WatchFavouriteTrackDetailsUseCaseFamily();

/// See also [watchFavouriteTrackDetailsUseCase].
class WatchFavouriteTrackDetailsUseCaseFamily
    extends Family<WatchFavouriteTrackDetailsUseCase> {
  /// See also [watchFavouriteTrackDetailsUseCase].
  const WatchFavouriteTrackDetailsUseCaseFamily();

  /// See also [watchFavouriteTrackDetailsUseCase].
  WatchFavouriteTrackDetailsUseCaseProvider call(
    String id,
  ) {
    return WatchFavouriteTrackDetailsUseCaseProvider(
      id,
    );
  }

  @override
  WatchFavouriteTrackDetailsUseCaseProvider getProviderOverride(
    covariant WatchFavouriteTrackDetailsUseCaseProvider provider,
  ) {
    return call(
      provider.id,
    );
  }

  static final Iterable<ProviderOrFamily> _dependencies = <ProviderOrFamily>[
    favouriteTrackIdsChangesUseCaseProvider,
    accountsRepositoryProvider
  ];

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static final Iterable<ProviderOrFamily> _allTransitiveDependencies =
      <ProviderOrFamily>{
    favouriteTrackIdsChangesUseCaseProvider,
    ...?favouriteTrackIdsChangesUseCaseProvider.allTransitiveDependencies,
    accountsRepositoryProvider,
    ...?accountsRepositoryProvider.allTransitiveDependencies
  };

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'watchFavouriteTrackDetailsUseCaseProvider';
}

/// See also [watchFavouriteTrackDetailsUseCase].
class WatchFavouriteTrackDetailsUseCaseProvider
    extends AutoDisposeProvider<WatchFavouriteTrackDetailsUseCase> {
  /// See also [watchFavouriteTrackDetailsUseCase].
  WatchFavouriteTrackDetailsUseCaseProvider(
    String id,
  ) : this._internal(
          (ref) => watchFavouriteTrackDetailsUseCase(
            ref as WatchFavouriteTrackDetailsUseCaseRef,
            id,
          ),
          from: watchFavouriteTrackDetailsUseCaseProvider,
          name: r'watchFavouriteTrackDetailsUseCaseProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$watchFavouriteTrackDetailsUseCaseHash,
          dependencies: WatchFavouriteTrackDetailsUseCaseFamily._dependencies,
          allTransitiveDependencies: WatchFavouriteTrackDetailsUseCaseFamily
              ._allTransitiveDependencies,
          id: id,
        );

  WatchFavouriteTrackDetailsUseCaseProvider._internal(
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
    WatchFavouriteTrackDetailsUseCase Function(
            WatchFavouriteTrackDetailsUseCaseRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: WatchFavouriteTrackDetailsUseCaseProvider._internal(
        (ref) => create(ref as WatchFavouriteTrackDetailsUseCaseRef),
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
  AutoDisposeProviderElement<WatchFavouriteTrackDetailsUseCase>
      createElement() {
    return _WatchFavouriteTrackDetailsUseCaseProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is WatchFavouriteTrackDetailsUseCaseProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin WatchFavouriteTrackDetailsUseCaseRef
    on AutoDisposeProviderRef<WatchFavouriteTrackDetailsUseCase> {
  /// The parameter `id` of this provider.
  String get id;
}

class _WatchFavouriteTrackDetailsUseCaseProviderElement
    extends AutoDisposeProviderElement<WatchFavouriteTrackDetailsUseCase>
    with WatchFavouriteTrackDetailsUseCaseRef {
  _WatchFavouriteTrackDetailsUseCaseProviderElement(super.provider);

  @override
  String get id => (origin as WatchFavouriteTrackDetailsUseCaseProvider).id;
}

String _$watchMyTrackUseCaseHash() =>
    r'8a7c62fd3e87275640540b21120aae3bc2c0aea8';

/// See also [watchMyTrackUseCase].
@ProviderFor(watchMyTrackUseCase)
const watchMyTrackUseCaseProvider = WatchMyTrackUseCaseFamily();

/// See also [watchMyTrackUseCase].
class WatchMyTrackUseCaseFamily extends Family<WatchMyTrackUseCase> {
  /// See also [watchMyTrackUseCase].
  const WatchMyTrackUseCaseFamily();

  /// See also [watchMyTrackUseCase].
  WatchMyTrackUseCaseProvider call(
    String id,
  ) {
    return WatchMyTrackUseCaseProvider(
      id,
    );
  }

  @override
  WatchMyTrackUseCaseProvider getProviderOverride(
    covariant WatchMyTrackUseCaseProvider provider,
  ) {
    return call(
      provider.id,
    );
  }

  static final Iterable<ProviderOrFamily> _dependencies = <ProviderOrFamily>[
    favouriteTrackIdsChangesUseCaseProvider,
    accountsRepositoryProvider
  ];

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static final Iterable<ProviderOrFamily> _allTransitiveDependencies =
      <ProviderOrFamily>{
    favouriteTrackIdsChangesUseCaseProvider,
    ...?favouriteTrackIdsChangesUseCaseProvider.allTransitiveDependencies,
    accountsRepositoryProvider,
    ...?accountsRepositoryProvider.allTransitiveDependencies
  };

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'watchMyTrackUseCaseProvider';
}

/// See also [watchMyTrackUseCase].
class WatchMyTrackUseCaseProvider
    extends AutoDisposeProvider<WatchMyTrackUseCase> {
  /// See also [watchMyTrackUseCase].
  WatchMyTrackUseCaseProvider(
    String id,
  ) : this._internal(
          (ref) => watchMyTrackUseCase(
            ref as WatchMyTrackUseCaseRef,
            id,
          ),
          from: watchMyTrackUseCaseProvider,
          name: r'watchMyTrackUseCaseProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$watchMyTrackUseCaseHash,
          dependencies: WatchMyTrackUseCaseFamily._dependencies,
          allTransitiveDependencies:
              WatchMyTrackUseCaseFamily._allTransitiveDependencies,
          id: id,
        );

  WatchMyTrackUseCaseProvider._internal(
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
    WatchMyTrackUseCase Function(WatchMyTrackUseCaseRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: WatchMyTrackUseCaseProvider._internal(
        (ref) => create(ref as WatchMyTrackUseCaseRef),
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
  AutoDisposeProviderElement<WatchMyTrackUseCase> createElement() {
    return _WatchMyTrackUseCaseProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is WatchMyTrackUseCaseProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin WatchMyTrackUseCaseRef on AutoDisposeProviderRef<WatchMyTrackUseCase> {
  /// The parameter `id` of this provider.
  String get id;
}

class _WatchMyTrackUseCaseProviderElement
    extends AutoDisposeProviderElement<WatchMyTrackUseCase>
    with WatchMyTrackUseCaseRef {
  _WatchMyTrackUseCaseProviderElement(super.provider);

  @override
  String get id => (origin as WatchMyTrackUseCaseProvider).id;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
