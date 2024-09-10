import 'dart:ui' as ui;

import 'package:flutter/services.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:uniqtrack/core/common/app_widget_toolkit.dart';
import 'package:uniqtrack/data/accounts/providers/accounts_provider.dart';
import 'package:uuid/uuid.dart';

part 'app_widget_toolkit_impl.g.dart';

@riverpod
AppWidgetToolkit appWidgetToolkit(AppWidgetToolkitRef ref) {
  final uuid = ref.watch(uuidProvider);

  return AppWidgetToolkitImpl(uuid: uuid);
}

class AppWidgetToolkitImpl implements AppWidgetToolkit {
  final Uuid _uuid;

  const AppWidgetToolkitImpl({
    required Uuid uuid,
  }) : _uuid = uuid;

  @override
  Future<BitmapDescriptor?> bytesFromAsset(String path, int width) async {
    final data = await rootBundle.load(path);
    final codec = await ui.instantiateImageCodec(data.buffer.asUint8List(),
        targetWidth: width);
    final fi = await codec.getNextFrame();
    final bytes = (await fi.image.toByteData(format: ui.ImageByteFormat.png))
        ?.buffer
        .asUint8List();
    final result = bytes != null ? BitmapDescriptor.fromBytes(bytes) : null;
    return result;
  }

  @override
  String generateUID() {
    return _uuid.v1();
  }
}
