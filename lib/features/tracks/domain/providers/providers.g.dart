// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$tracksHash() => r'156ec422c23ca05355c18efa5992d5df452d92fc';

/// See also [tracks].
@ProviderFor(tracks)
final tracksProvider = AutoDisposeStreamProvider<List<Track>>.internal(
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

typedef TracksRef = AutoDisposeStreamProviderRef<List<Track>>;
String _$trackDetailsHash() => r'4fd166ba904f338db18f90cd4a92808f206fafd4';

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
class TrackDetailsFamily extends Family<AsyncValue<TrackUI>> {
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
class TrackDetailsProvider extends AutoDisposeStreamProvider<TrackUI> {
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
    Stream<TrackUI> Function(TrackDetailsRef provider) create,
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
  AutoDisposeStreamProviderElement<TrackUI> createElement() {
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

mixin TrackDetailsRef on AutoDisposeStreamProviderRef<TrackUI> {
  /// The parameter `id` of this provider.
  String get id;
}

class _TrackDetailsProviderElement
    extends AutoDisposeStreamProviderElement<TrackUI> with TrackDetailsRef {
  _TrackDetailsProviderElement(super.provider);

  @override
  String get id => (origin as TrackDetailsProvider).id;
}

String _$watchTrackDetailsUseCaseHash() =>
    r'9d0d97ae5399cac5ddec85c9ab8cb607fd577855';

/// See also [watchTrackDetailsUseCase].
@ProviderFor(watchTrackDetailsUseCase)
const watchTrackDetailsUseCaseProvider = WatchTrackDetailsUseCaseFamily();

/// See also [watchTrackDetailsUseCase].
class WatchTrackDetailsUseCaseFamily extends Family<WatchTrackDetailsUseCase> {
  /// See also [watchTrackDetailsUseCase].
  const WatchTrackDetailsUseCaseFamily();

  /// See also [watchTrackDetailsUseCase].
  WatchTrackDetailsUseCaseProvider call(
    String id,
  ) {
    return WatchTrackDetailsUseCaseProvider(
      id,
    );
  }

  @override
  WatchTrackDetailsUseCaseProvider getProviderOverride(
    covariant WatchTrackDetailsUseCaseProvider provider,
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
  String? get name => r'watchTrackDetailsUseCaseProvider';
}

/// See also [watchTrackDetailsUseCase].
class WatchTrackDetailsUseCaseProvider
    extends AutoDisposeProvider<WatchTrackDetailsUseCase> {
  /// See also [watchTrackDetailsUseCase].
  WatchTrackDetailsUseCaseProvider(
    String id,
  ) : this._internal(
          (ref) => watchTrackDetailsUseCase(
            ref as WatchTrackDetailsUseCaseRef,
            id,
          ),
          from: watchTrackDetailsUseCaseProvider,
          name: r'watchTrackDetailsUseCaseProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$watchTrackDetailsUseCaseHash,
          dependencies: WatchTrackDetailsUseCaseFamily._dependencies,
          allTransitiveDependencies:
              WatchTrackDetailsUseCaseFamily._allTransitiveDependencies,
          id: id,
        );

  WatchTrackDetailsUseCaseProvider._internal(
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
    WatchTrackDetailsUseCase Function(WatchTrackDetailsUseCaseRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: WatchTrackDetailsUseCaseProvider._internal(
        (ref) => create(ref as WatchTrackDetailsUseCaseRef),
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
  AutoDisposeProviderElement<WatchTrackDetailsUseCase> createElement() {
    return _WatchTrackDetailsUseCaseProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is WatchTrackDetailsUseCaseProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin WatchTrackDetailsUseCaseRef
    on AutoDisposeProviderRef<WatchTrackDetailsUseCase> {
  /// The parameter `id` of this provider.
  String get id;
}

class _WatchTrackDetailsUseCaseProviderElement
    extends AutoDisposeProviderElement<WatchTrackDetailsUseCase>
    with WatchTrackDetailsUseCaseRef {
  _WatchTrackDetailsUseCaseProviderElement(super.provider);

  @override
  String get id => (origin as WatchTrackDetailsUseCaseProvider).id;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
