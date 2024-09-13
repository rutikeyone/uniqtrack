// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$addOrEditMemoryStoreBuilderHash() =>
    r'cbfac6afa766a8af1b82b876a3779f17548fdd3e';

/// See also [addOrEditMemoryStoreBuilder].
@ProviderFor(addOrEditMemoryStoreBuilder)
final addOrEditMemoryStoreBuilderProvider =
    AutoDisposeProvider<AddOrEditMemoryStoreBuilder>.internal(
  addOrEditMemoryStoreBuilder,
  name: r'addOrEditMemoryStoreBuilderProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$addOrEditMemoryStoreBuilderHash,
  dependencies: <ProviderOrFamily>[storeFactoryProvider],
  allTransitiveDependencies: <ProviderOrFamily>{
    storeFactoryProvider,
    ...?storeFactoryProvider.allTransitiveDependencies
  },
);

typedef AddOrEditMemoryStoreBuilderRef
    = AutoDisposeProviderRef<AddOrEditMemoryStoreBuilder>;
String _$addOrEditRecordStoreBuilderHash() =>
    r'2f8adc9b64c337bc8b2ed8f91fab624a82a71289';

/// See also [addOrEditRecordStoreBuilder].
@ProviderFor(addOrEditRecordStoreBuilder)
final addOrEditRecordStoreBuilderProvider =
    AutoDisposeProvider<AddOrEditRecordTrackStoreBuilder>.internal(
  addOrEditRecordStoreBuilder,
  name: r'addOrEditRecordStoreBuilderProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$addOrEditRecordStoreBuilderHash,
  dependencies: <ProviderOrFamily>[storeFactoryProvider],
  allTransitiveDependencies: <ProviderOrFamily>{
    storeFactoryProvider,
    ...?storeFactoryProvider.allTransitiveDependencies
  },
);

typedef AddOrEditRecordStoreBuilderRef
    = AutoDisposeProviderRef<AddOrEditRecordTrackStoreBuilder>;
String _$photoViewerStoreBuilderHash() =>
    r'5603d76189f1733280122aa2d7b391f1bfa6a9fc';

/// See also [photoViewerStoreBuilder].
@ProviderFor(photoViewerStoreBuilder)
final photoViewerStoreBuilderProvider =
    AutoDisposeProvider<PhotoViewerStoreBuilder>.internal(
  photoViewerStoreBuilder,
  name: r'photoViewerStoreBuilderProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$photoViewerStoreBuilderHash,
  dependencies: <ProviderOrFamily>[storeFactoryProvider],
  allTransitiveDependencies: <ProviderOrFamily>{
    storeFactoryProvider,
    ...?storeFactoryProvider.allTransitiveDependencies
  },
);

typedef PhotoViewerStoreBuilderRef
    = AutoDisposeProviderRef<PhotoViewerStoreBuilder>;
String _$recordTrackStoreBuilderHash() =>
    r'b947d90a5b3e0b59577f94664186959e65f68203';

/// See also [recordTrackStoreBuilder].
@ProviderFor(recordTrackStoreBuilder)
final recordTrackStoreBuilderProvider =
    AutoDisposeProvider<RecordTrackStoreBuilder>.internal(
  recordTrackStoreBuilder,
  name: r'recordTrackStoreBuilderProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$recordTrackStoreBuilderHash,
  dependencies: <ProviderOrFamily>[storeFactoryProvider],
  allTransitiveDependencies: <ProviderOrFamily>{
    storeFactoryProvider,
    ...?storeFactoryProvider.allTransitiveDependencies
  },
);

typedef RecordTrackStoreBuilderRef
    = AutoDisposeProviderRef<RecordTrackStoreBuilder>;
String _$positionMapperHash() => r'82554729c37203f0c96ce55538e067a5ad9fb14d';

/// See also [positionMapper].
@ProviderFor(positionMapper)
final positionMapperProvider = AutoDisposeProvider<PositionMapper>.internal(
  positionMapper,
  name: r'positionMapperProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$positionMapperHash,
  dependencies: const <ProviderOrFamily>[],
  allTransitiveDependencies: const <ProviderOrFamily>{},
);

typedef PositionMapperRef = AutoDisposeProviderRef<PositionMapper>;
String _$recordTrackRepositoryHash() =>
    r'407fe1a4806fffa4c33f5a53d01495a3796a2bb4';

/// See also [recordTrackRepository].
@ProviderFor(recordTrackRepository)
final recordTrackRepositoryProvider =
    AutoDisposeProvider<RecordTrackRepository>.internal(
  recordTrackRepository,
  name: r'recordTrackRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$recordTrackRepositoryHash,
  dependencies: <ProviderOrFamily>[
    appLocationHandlerProvider,
    positionMapperProvider
  ],
  allTransitiveDependencies: <ProviderOrFamily>{
    appLocationHandlerProvider,
    ...?appLocationHandlerProvider.allTransitiveDependencies,
    positionMapperProvider,
    ...?positionMapperProvider.allTransitiveDependencies
  },
);

typedef RecordTrackRepositoryRef
    = AutoDisposeProviderRef<RecordTrackRepository>;
String _$chooseImageRepositoryHash() =>
    r'b70445a13b472d2d5305750ecbff64fc8b173240';

/// See also [chooseImageRepository].
@ProviderFor(chooseImageRepository)
final chooseImageRepositoryProvider =
    AutoDisposeProvider<ChooseImageRepository>.internal(
  chooseImageRepository,
  name: r'chooseImageRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$chooseImageRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef ChooseImageRepositoryRef
    = AutoDisposeProviderRef<ChooseImageRepository>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member