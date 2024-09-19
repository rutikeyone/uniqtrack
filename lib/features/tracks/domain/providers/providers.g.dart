// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$tracksHash() => r'36deb7a49afff63033002194dbc9c62bd1fa022e';

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
String _$trackDetailsHash() => r'417c9cf58b269a576d9f6ef5ed8e52dccb54f6ae';

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
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
