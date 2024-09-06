// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'accounts_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$galleryDataSourceHash() => r'a6d9dd71036e371e8d518577ccc98031d6070526';

/// See also [galleryDataSource].
@ProviderFor(galleryDataSource)
final galleryDataSourceProvider = AutoDisposeProvider<ImageDataSource>.internal(
  galleryDataSource,
  name: r'galleryDataSourceProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$galleryDataSourceHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef GalleryDataSourceRef = AutoDisposeProviderRef<ImageDataSource>;
String _$cameraDataSourceHash() => r'155fba641d6804ea5a02047206c6f60ddfbec03a';

/// See also [cameraDataSource].
@ProviderFor(cameraDataSource)
final cameraDataSourceProvider = AutoDisposeProvider<ImageDataSource>.internal(
  cameraDataSource,
  name: r'cameraDataSourceProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$cameraDataSourceHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef CameraDataSourceRef = AutoDisposeProviderRef<ImageDataSource>;
String _$imageDataRepositoryHash() =>
    r'd74b6cfb0544ee7ac45075d013aaa028825d24ad';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [imageDataRepository].
@ProviderFor(imageDataRepository)
const imageDataRepositoryProvider = ImageDataRepositoryFamily();

/// See also [imageDataRepository].
class ImageDataRepositoryFamily extends Family<ImageDataRepository> {
  /// See also [imageDataRepository].
  const ImageDataRepositoryFamily();

  /// See also [imageDataRepository].
  ImageDataRepositoryProvider call({
    required ImageDataSource imageSource,
  }) {
    return ImageDataRepositoryProvider(
      imageSource: imageSource,
    );
  }

  @override
  ImageDataRepositoryProvider getProviderOverride(
    covariant ImageDataRepositoryProvider provider,
  ) {
    return call(
      imageSource: provider.imageSource,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'imageDataRepositoryProvider';
}

/// See also [imageDataRepository].
class ImageDataRepositoryProvider
    extends AutoDisposeProvider<ImageDataRepository> {
  /// See also [imageDataRepository].
  ImageDataRepositoryProvider({
    required ImageDataSource imageSource,
  }) : this._internal(
          (ref) => imageDataRepository(
            ref as ImageDataRepositoryRef,
            imageSource: imageSource,
          ),
          from: imageDataRepositoryProvider,
          name: r'imageDataRepositoryProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$imageDataRepositoryHash,
          dependencies: ImageDataRepositoryFamily._dependencies,
          allTransitiveDependencies:
              ImageDataRepositoryFamily._allTransitiveDependencies,
          imageSource: imageSource,
        );

  ImageDataRepositoryProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.imageSource,
  }) : super.internal();

  final ImageDataSource imageSource;

  @override
  Override overrideWith(
    ImageDataRepository Function(ImageDataRepositoryRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: ImageDataRepositoryProvider._internal(
        (ref) => create(ref as ImageDataRepositoryRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        imageSource: imageSource,
      ),
    );
  }

  @override
  AutoDisposeProviderElement<ImageDataRepository> createElement() {
    return _ImageDataRepositoryProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ImageDataRepositoryProvider &&
        other.imageSource == imageSource;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, imageSource.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin ImageDataRepositoryRef on AutoDisposeProviderRef<ImageDataRepository> {
  /// The parameter `imageSource` of this provider.
  ImageDataSource get imageSource;
}

class _ImageDataRepositoryProviderElement
    extends AutoDisposeProviderElement<ImageDataRepository>
    with ImageDataRepositoryRef {
  _ImageDataRepositoryProviderElement(super.provider);

  @override
  ImageDataSource get imageSource =>
      (origin as ImageDataRepositoryProvider).imageSource;
}

String _$accountsDataRepositoryHash() =>
    r'8261169b0aaf6faeb60e04be394b6589904fa1ad';

/// See also [accountsDataRepository].
@ProviderFor(accountsDataRepository)
final accountsDataRepositoryProvider =
    AutoDisposeProvider<AccountsDataRepository>.internal(
  accountsDataRepository,
  name: r'accountsDataRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$accountsDataRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef AccountsDataRepositoryRef
    = AutoDisposeProviderRef<AccountsDataRepository>;
String _$uuidHash() => r'93ceb3977b7374fc0dfde75246f4746b64edb0e3';

/// See also [uuid].
@ProviderFor(uuid)
final uuidProvider = AutoDisposeProvider<Uuid>.internal(
  uuid,
  name: r'uuidProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$uuidHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef UuidRef = AutoDisposeProviderRef<Uuid>;
String _$firebaseFireStoreHash() => r'e20e43188dac9db8a5676ae945634c271a6084e0';

/// See also [firebaseFireStore].
@ProviderFor(firebaseFireStore)
final firebaseFireStoreProvider =
    AutoDisposeProvider<FirebaseFirestore>.internal(
  firebaseFireStore,
  name: r'firebaseFireStoreProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$firebaseFireStoreHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef FirebaseFireStoreRef = AutoDisposeProviderRef<FirebaseFirestore>;
String _$imagePickerHash() => r'4ade97b98e4e2b1423bb08eb64f280b92f8ac945';

/// See also [imagePicker].
@ProviderFor(imagePicker)
final imagePickerProvider = AutoDisposeProvider<ImagePicker>.internal(
  imagePicker,
  name: r'imagePickerProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$imagePickerHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef ImagePickerRef = AutoDisposeProviderRef<ImagePicker>;
String _$firebaseAuthHash() => r'7791bf70ce0f01bf991a53a76abc915478673c0b';

/// See also [firebaseAuth].
@ProviderFor(firebaseAuth)
final firebaseAuthProvider = AutoDisposeProvider<FirebaseAuth>.internal(
  firebaseAuth,
  name: r'firebaseAuthProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$firebaseAuthHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef FirebaseAuthRef = AutoDisposeProviderRef<FirebaseAuth>;
String _$firebaseStorageHash() => r'9ece783a064077980d64000c5d6f0b1846ff5c4c';

/// See also [firebaseStorage].
@ProviderFor(firebaseStorage)
final firebaseStorageProvider = AutoDisposeProvider<FirebaseStorage>.internal(
  firebaseStorage,
  name: r'firebaseStorageProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$firebaseStorageHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef FirebaseStorageRef = AutoDisposeProviderRef<FirebaseStorage>;
String _$appErrorHandlerHash() => r'cc0cc226e4b2ae9bbbf6f14fe86a8f90c1d06ffa';

/// See also [appErrorHandler].
@ProviderFor(appErrorHandler)
final appErrorHandlerProvider = AutoDisposeProvider<AppErrorHandler>.internal(
  appErrorHandler,
  name: r'appErrorHandlerProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$appErrorHandlerHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef AppErrorHandlerRef = AutoDisposeProviderRef<AppErrorHandler>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
