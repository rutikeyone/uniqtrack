// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$genderMapperHash() => r'8d83282002f38e0dfa9bdb5fc2a09ffe080ae7c0';

/// See also [genderMapper].
@ProviderFor(genderMapper)
final genderMapperProvider = AutoDisposeProvider<GenderMapper>.internal(
  genderMapper,
  name: r'genderMapperProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$genderMapperHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef GenderMapperRef = AutoDisposeProviderRef<GenderMapper>;
String _$fileMapperHash() => r'0df58cf20bcfccdaac6ebe019ae8b9fdd746439b';

/// See also [fileMapper].
@ProviderFor(fileMapper)
final fileMapperProvider = AutoDisposeProvider<FileMapper>.internal(
  fileMapper,
  name: r'fileMapperProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$fileMapperHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef FileMapperRef = AutoDisposeProviderRef<FileMapper>;
String _$registerRepositoryHash() =>
    r'dbf2aef338bedfe3f2fe83b7e32eecda7dd52296';

/// See also [registerRepository].
@ProviderFor(registerRepository)
final registerRepositoryProvider =
    AutoDisposeProvider<RegisterRepository>.internal(
  registerRepository,
  name: r'registerRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$registerRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef RegisterRepositoryRef = AutoDisposeProviderRef<RegisterRepository>;
String _$registerStoreBuilderHash() =>
    r'a5f2b4198c63e2fc18f045fbbc7079f7cf6fbef9';

/// See also [registerStoreBuilder].
@ProviderFor(registerStoreBuilder)
final registerStoreBuilderProvider =
    AutoDisposeProvider<RegisterStoreBuilder>.internal(
  registerStoreBuilder,
  name: r'registerStoreBuilderProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$registerStoreBuilderHash,
  dependencies: <ProviderOrFamily>[storeFactoryProvider],
  allTransitiveDependencies: <ProviderOrFamily>{
    storeFactoryProvider,
    ...?storeFactoryProvider.allTransitiveDependencies
  },
);

typedef RegisterStoreBuilderRef = AutoDisposeProviderRef<RegisterStoreBuilder>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
