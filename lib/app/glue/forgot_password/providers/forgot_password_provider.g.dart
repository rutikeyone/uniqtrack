// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forgot_password_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$forgotPasswordStoreHash() =>
    r'55774566837aa2e4f0c23cd4db4b065218dd823b';

/// See also [forgotPasswordStore].
@ProviderFor(forgotPasswordStore)
final forgotPasswordStoreProvider =
    AutoDisposeProvider<ForgotPasswordStoreBuilder>.internal(
  forgotPasswordStore,
  name: r'forgotPasswordStoreProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$forgotPasswordStoreHash,
  dependencies: <ProviderOrFamily>[storeFactoryProvider],
  allTransitiveDependencies: <ProviderOrFamily>{
    storeFactoryProvider,
    ...?storeFactoryProvider.allTransitiveDependencies
  },
);

typedef ForgotPasswordStoreRef
    = AutoDisposeProviderRef<ForgotPasswordStoreBuilder>;
String _$forgotPasswordRepositoryHash() =>
    r'1cb0d5cafcb1b6bdf1ce903ac54ce4f94e4e74f6';

/// See also [forgotPasswordRepository].
@ProviderFor(forgotPasswordRepository)
final forgotPasswordRepositoryProvider =
    AutoDisposeProvider<ForgotPasswordRepository>.internal(
  forgotPasswordRepository,
  name: r'forgotPasswordRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$forgotPasswordRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef ForgotPasswordRepositoryRef
    = AutoDisposeProviderRef<ForgotPasswordRepository>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
