import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:uniqtrack/core/common/context_extension.dart';
import 'package:uniqtrack/core/presentation/widgets/app_elevated_button.dart';
import 'package:uniqtrack/core/theme/app_colors.dart';
import 'package:uniqtrack/core/theme/app_diments.dart';
import 'package:uniqtrack/generated/l10n.dart';

const _initialCameraPosition = CameraPosition(
  target: LatLng(43.5992, 39.7257),
  zoom: 16.0,
);

class RecordTrackPage extends StatelessWidget {
  const RecordTrackPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned.fill(
              child: GoogleMap(
                zoomControlsEnabled: false,
                initialCameraPosition: _initialCameraPosition,
              ),
            ),
            Positioned(
              bottom: AppDiments.dm40,
              left: AppDiments.dm16,
              right: AppDiments.dm16,
              child: SizedBox(
                height: AppDiments.dm48,
                child: AppElevatedButton(
                  onPressed: () {},
                  text: S.of(context).startRecording,
                  textStyle: context.textTheme.labelLarge,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
