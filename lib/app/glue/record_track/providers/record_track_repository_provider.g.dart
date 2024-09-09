// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'record_track_repository_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

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
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
