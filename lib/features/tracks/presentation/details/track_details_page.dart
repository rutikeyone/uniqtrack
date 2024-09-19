import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

const _initialCenter = const LatLng(0, 0);
const _initialCameraPosition = CameraPosition(target: _initialCenter);

class TrackDetailsPage extends StatelessWidget {
  const TrackDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: GoogleMap(
        mapType: MapType.hybrid,
        zoomControlsEnabled: false,
        myLocationButtonEnabled: false,
        mapToolbarEnabled: false,
        initialCameraPosition: _initialCameraPosition,
      ),
    );
  }
}
