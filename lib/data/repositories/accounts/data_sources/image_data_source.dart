import 'package:flutter/foundation.dart';

abstract interface class ImageDataSource {
  Future<Uint8List?> chooseImage();
}
