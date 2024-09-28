// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store_factory_impl.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$storeFactoryHash() => r'411ad1b601de6c6c0844e186fe1cea2848272eb6';

/// See also [storeFactory].
@ProviderFor(storeFactory)
final storeFactoryProvider = AutoDisposeProvider<StoreFactory>.internal(
  storeFactory,
  name: r'storeFactoryProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$storeFactoryHash,
  dependencies: <ProviderOrFamily>{
    watchTrackDetailsUseCaseProvider,
    watchFavouriteTrackDetailsUseCaseProvider,
    watchMyTrackUseCaseProvider,
    addToFavouriteTracksUseCaseProvider,
    removeFromFavouriteTracksUseCaseProvider,
    removeTrackUseCaseProvider,
    removeMemoryUseCaseProvider,
    updateTrackUseCaseProvider,
    updateMemoryUseCaseProvider,
    trackRepositoryProvider
  },
  allTransitiveDependencies: <ProviderOrFamily>{
    watchTrackDetailsUseCaseProvider,
    ...?watchTrackDetailsUseCaseProvider.allTransitiveDependencies,
    watchFavouriteTrackDetailsUseCaseProvider,
    ...?watchFavouriteTrackDetailsUseCaseProvider.allTransitiveDependencies,
    watchMyTrackUseCaseProvider,
    ...?watchMyTrackUseCaseProvider.allTransitiveDependencies,
    addToFavouriteTracksUseCaseProvider,
    ...?addToFavouriteTracksUseCaseProvider.allTransitiveDependencies,
    removeFromFavouriteTracksUseCaseProvider,
    ...?removeFromFavouriteTracksUseCaseProvider.allTransitiveDependencies,
    removeTrackUseCaseProvider,
    ...?removeTrackUseCaseProvider.allTransitiveDependencies,
    removeMemoryUseCaseProvider,
    ...?removeMemoryUseCaseProvider.allTransitiveDependencies,
    updateTrackUseCaseProvider,
    ...?updateTrackUseCaseProvider.allTransitiveDependencies,
    updateMemoryUseCaseProvider,
    ...?updateMemoryUseCaseProvider.allTransitiveDependencies,
    trackRepositoryProvider,
    ...?trackRepositoryProvider.allTransitiveDependencies
  },
);

typedef StoreFactoryRef = AutoDisposeProviderRef<StoreFactory>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
