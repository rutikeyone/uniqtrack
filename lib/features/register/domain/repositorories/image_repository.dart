import 'package:flutter/foundation.dart';

abstract interface class ImageRepository {

  Future<Uint8List?> chooseImageFromGallery();

  Future<Uint8List?> chooseImageFromCamera();


}