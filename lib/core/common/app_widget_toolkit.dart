import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

abstract interface class AppWidgetToolkit {
  Future<BitmapDescriptor?> bytesFromAsset(String path, int width);

  String uid();

  String? distance({
    required double? distance,
    required BuildContext context,
  });

  String duration({
    required int duration,
    required BuildContext context,
  });

  String mPerSecInKmPerHr({
    required int duration,
    required double distance,
    required BuildContext context,
  });
}
