// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store_factory_impl.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$storeFactoryHash() => r'aceb8f4c3b9f9d507c98072eec2c2e977a45f41c';

/// See also [storeFactory].
@ProviderFor(storeFactory)
final storeFactoryProvider = AutoDisposeProvider<StoreFactory>.internal(
  storeFactory,
  name: r'storeFactoryProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$storeFactoryHash,
  dependencies: <ProviderOrFamily>[
    recordTrackRepositoryProvider,
    appLocationHandlerProvider
  ],
  allTransitiveDependencies: <ProviderOrFamily>{
    recordTrackRepositoryProvider,
    ...?recordTrackRepositoryProvider.allTransitiveDependencies,
    appLocationHandlerProvider,
    ...?appLocationHandlerProvider.allTransitiveDependencies
  },
);

typedef StoreFactoryRef = AutoDisposeProviderRef<StoreFactory>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
