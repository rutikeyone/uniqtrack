// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$positionConverterHash() => r'295cce727f6ac205430008006f24d521cd5f99db';

/// See also [positionConverter].
@ProviderFor(positionConverter)
final positionConverterProvider =
    AutoDisposeProvider<PositionConverter>.internal(
  positionConverter,
  name: r'positionConverterProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$positionConverterHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef PositionConverterRef = AutoDisposeProviderRef<PositionConverter>;
String _$positionDataConverterHash() =>
    r'5524b8e7539cb178402456de62c3efe887173ced';

/// See also [positionDataConverter].
@ProviderFor(positionDataConverter)
final positionDataConverterProvider =
    AutoDisposeProvider<PositionDataConverter>.internal(
  positionDataConverter,
  name: r'positionDataConverterProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$positionDataConverterHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef PositionDataConverterRef
    = AutoDisposeProviderRef<PositionDataConverter>;
String _$memoryConverterHash() => r'3ae941408dd7b03a908a6289040319865ee3b068';

/// See also [memoryConverter].
@ProviderFor(memoryConverter)
final memoryConverterProvider = AutoDisposeProvider<MemoryConverter>.internal(
  memoryConverter,
  name: r'memoryConverterProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$memoryConverterHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef MemoryConverterRef = AutoDisposeProviderRef<MemoryConverter>;
String _$trackConverterHash() => r'04c367f3998e7db175aefaf8e671685c49034f9a';

/// See also [trackConverter].
@ProviderFor(trackConverter)
final trackConverterProvider = AutoDisposeProvider<TrackConverter>.internal(
  trackConverter,
  name: r'trackConverterProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$trackConverterHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef TrackConverterRef = AutoDisposeProviderRef<TrackConverter>;
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
String _$hasAuthenticationUseCaseHash() =>
    r'fcfce2379cddc6603f69f692e7cb3b46825a0065';

/// See also [hasAuthenticationUseCase].
@ProviderFor(hasAuthenticationUseCase)
final hasAuthenticationUseCaseProvider =
    AutoDisposeProvider<HasAuthenticationUseCase>.internal(
  hasAuthenticationUseCase,
  name: r'hasAuthenticationUseCaseProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$hasAuthenticationUseCaseHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef HasAuthenticationUseCaseRef
    = AutoDisposeProviderRef<HasAuthenticationUseCase>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
