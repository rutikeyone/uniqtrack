// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_store_builder_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$loginStoreBuilderHash() => r'5cd7198d38cbe97ae86abac9ff2efdb832cea30c';

/// See also [loginStoreBuilder].
@ProviderFor(loginStoreBuilder)
final loginStoreBuilderProvider =
    AutoDisposeProvider<LoginStoreBuilder>.internal(
  loginStoreBuilder,
  name: r'loginStoreBuilderProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$loginStoreBuilderHash,
  dependencies: <ProviderOrFamily>[storeFactoryProvider],
  allTransitiveDependencies: <ProviderOrFamily>{
    storeFactoryProvider,
    ...?storeFactoryProvider.allTransitiveDependencies
  },
);

typedef LoginStoreBuilderRef = AutoDisposeProviderRef<LoginStoreBuilder>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
