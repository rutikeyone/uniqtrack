// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store_factory_impl.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$storeFactoryHash() => r'be9fa6126eed728ad82489b8d2a00d05dab7faa4';

/// See also [storeFactory].
@ProviderFor(storeFactory)
final storeFactoryProvider = AutoDisposeProvider<StoreFactory>.internal(
  storeFactory,
  name: r'storeFactoryProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$storeFactoryHash,
  dependencies: <ProviderOrFamily>[
    trackRepositoryProvider,
    appLocationHandlerProvider,
    accountsRepositoryProvider
  ],
  allTransitiveDependencies: <ProviderOrFamily>{
    trackRepositoryProvider,
    ...?trackRepositoryProvider.allTransitiveDependencies,
    appLocationHandlerProvider,
    ...?appLocationHandlerProvider.allTransitiveDependencies,
    accountsRepositoryProvider,
    ...?accountsRepositoryProvider.allTransitiveDependencies
  },
);

typedef StoreFactoryRef = AutoDisposeProviderRef<StoreFactory>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
