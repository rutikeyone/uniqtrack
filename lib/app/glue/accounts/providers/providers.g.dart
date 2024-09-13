// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$userMapperHash() => r'7cf32933d2f5449fcb6366c727647920f689f0b2';

/// See also [userMapper].
@ProviderFor(userMapper)
final userMapperProvider = AutoDisposeProvider<UserMapperImpl>.internal(
  userMapper,
  name: r'userMapperProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$userMapperHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef UserMapperRef = AutoDisposeProviderRef<UserMapperImpl>;
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
String _$accountsRepositoryHash() =>
    r'363e7ba6aad3631b4218449ed5404c9fbac63bf1';

/// See also [accountsRepository].
@ProviderFor(accountsRepository)
final accountsRepositoryProvider =
    AutoDisposeProvider<AccountsRepository>.internal(
  accountsRepository,
  name: r'accountsRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$accountsRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef AccountsRepositoryRef = AutoDisposeProviderRef<AccountsRepository>;
String _$signOutUseCaseHash() => r'dcc3b3e08e58b468ba0f040809af7d30563221fb';

/// See also [signOutUseCase].
@ProviderFor(signOutUseCase)
final signOutUseCaseProvider = AutoDisposeProvider<SignOutUseCase>.internal(
  signOutUseCase,
  name: r'signOutUseCaseProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$signOutUseCaseHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef SignOutUseCaseRef = AutoDisposeProviderRef<SignOutUseCase>;
String _$userChangesUseCaseHash() =>
    r'7f8a12bc3fe51877f3707ae73ad9876c126dd545';

/// See also [userChangesUseCase].
@ProviderFor(userChangesUseCase)
final userChangesUseCaseProvider =
    AutoDisposeProvider<UserChangesUseCase>.internal(
  userChangesUseCase,
  name: r'userChangesUseCaseProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$userChangesUseCaseHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef UserChangesUseCaseRef = AutoDisposeProviderRef<UserChangesUseCase>;
String _$authStateChangesUseCaseHash() =>
    r'9cb2ddb2b5a6b7b554eb75b6453e10a27471120f';

/// See also [authStateChangesUseCase].
@ProviderFor(authStateChangesUseCase)
final authStateChangesUseCaseProvider =
    AutoDisposeProvider<AuthStateChangesUseCase>.internal(
  authStateChangesUseCase,
  name: r'authStateChangesUseCaseProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$authStateChangesUseCaseHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef AuthStateChangesUseCaseRef
    = AutoDisposeProviderRef<AuthStateChangesUseCase>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
