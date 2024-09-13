import 'package:flutter/foundation.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:uniqtrack/app/factories/stores/store_factory.dart';
import 'package:uniqtrack/features/tracks/presentation/photo_viewer/stores/photo_viewer_store.dart';

class PhotoViewerStoreBuilderImpl implements PhotoViewerStoreBuilder {
  final StoreFactory _storeFactory;

  const PhotoViewerStoreBuilderImpl({required StoreFactory storeFactory})
      : _storeFactory = storeFactory;

  @override
  PhotoViewerStore create(
    BuildContext context, {
    required Uint8List? bytes,
    required String? link,
  }) {
    return _storeFactory.createPhotoViewerStore(
      bytes: bytes,
      link: link,
    );
  }
}
