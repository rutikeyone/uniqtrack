// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store_factory_impl.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$storeFactoryHash() => r'f5c3ead10e3a4ef2396fc3bae9365dd9db7468b1';

/// See also [storeFactory].
@ProviderFor(storeFactory)
final storeFactoryProvider = AutoDisposeProvider<StoreFactory>.internal(
  storeFactory,
  name: r'storeFactoryProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$storeFactoryHash,
  dependencies: <ProviderOrFamily>{
    appLocationHandlerProvider,
    trackRepositoryProvider,
    accountsRepositoryProvider,
    watchTrackDetailsUseCaseProvider,
    watchFavouriteTrackDetailsUseCaseProvider,
    watchMyTrackUseCaseProvider,
    addToFavouriteTracksUseCaseProvider,
    removeFromFavouriteTracksUseCaseProvider,
    removeTrackUseCaseProvider
  },
  allTransitiveDependencies: <ProviderOrFamily>{
    appLocationHandlerProvider,
    ...?appLocationHandlerProvider.allTransitiveDependencies,
    trackRepositoryProvider,
    ...?trackRepositoryProvider.allTransitiveDependencies,
    accountsRepositoryProvider,
    ...?accountsRepositoryProvider.allTransitiveDependencies,
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
    ...?removeTrackUseCaseProvider.allTransitiveDependencies
  },
);

typedef StoreFactoryRef = AutoDisposeProviderRef<StoreFactory>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
