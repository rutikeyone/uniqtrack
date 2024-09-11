import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:uniqtrack/core/common/app_widget_toolkit.dart';
import 'package:uniqtrack/data/accounts/providers/accounts_provider.dart';
import 'package:uniqtrack/generated/l10n.dart';
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
  String uid() {
    return _uuid.v1();
  }

  @override
  String? distance({
    required double? distance,
    required BuildContext context,
  }) {
    final distanceInKm = distance != null ? distance / 1000 : null;

    final distanceFormatted = distance != null && distanceInKm != null
        ? distance > 1000
            ? S.of(context).km(distanceInKm.toStringAsFixed(1))
            : S.of(context).value_m(distance.toStringAsFixed(1))
        : null;

    return distanceFormatted;
  }

  @override
  String duration({
    required int duration,
    required BuildContext context,
  }) {
    final sec = duration % 60;
    final min = (duration / 60).floor();
    final minute = min.toString().length <= 1 ? "0$min" : "$min";
    final second = sec.toString().length <= 1 ? "0$sec" : "$sec";
    return "$minute:$second";
  }

  @override
  String mPerSecInKmPerHr({
    required int duration,
    required double distance,
    required BuildContext context,
  }) {
    final durationInHours = duration / 3600;
    final distanceInKm = distance / 1000;

    if (durationInHours > 0) {
      return (distanceInKm / durationInHours).toStringAsFixed(1);
    } else {
      return 0.toStringAsFixed(1);
    }
  }
}
