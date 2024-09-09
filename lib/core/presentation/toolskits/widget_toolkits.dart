import 'dart:ui' as ui;

import 'package:flutter/services.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class WidgetToolkits {

  static Future<BitmapDescriptor?> bytesFromAsset(String path, int width) async {
    final data = await rootBundle.load(path);
    final codec = await ui.instantiateImageCodec(data.buffer.asUint8List(), targetWidth: width);
    final fi = await codec.getNextFrame();
    final bytes = (await fi.image.toByteData(format: ui.ImageByteFormat.png))?.buffer.asUint8List();
    final result = bytes != null ? BitmapDescriptor.fromBytes(bytes) : null;
    return result;
  }

}