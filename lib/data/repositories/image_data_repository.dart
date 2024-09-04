import 'package:flutter/foundation.dart';

abstract class ImageDataRepository {
  Future<Uint8List?> chooseImage();
}
