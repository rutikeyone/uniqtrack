
import 'package:flutter/foundation.dart';

abstract interface class AppImagePicker {
  Future<Uint8List?> getImage();
}
