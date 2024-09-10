// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'record_track_store_builder_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

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
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
