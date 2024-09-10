import 'package:google_maps_flutter/google_maps_flutter.dart';

abstract interface class AppWidgetToolkit {
  Future<BitmapDescriptor?> bytesFromAsset(String path, int width);

  String generateUID();
}
