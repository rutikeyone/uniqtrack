// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'accounts_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

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
    r'c6ef592e6f7d9822e2d0220fc516c4c5760d0262';

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
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
