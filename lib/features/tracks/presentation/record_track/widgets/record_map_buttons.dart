part of '../pages/record_track_page.dart';

class _RecordMapButtons extends StatefulWidget {
  final Completer<GoogleMapController> controller;

  const _RecordMapButtons({
    required this.controller,
  });

  @override
  State<_RecordMapButtons> createState() => _RecordMapButtonsState();
}

class _RecordMapButtonsState extends State<_RecordMapButtons> {
  Future<void> _zoomIn() async {
    final _controller = await widget.controller.future;
    _controller.animateCamera(CameraUpdate.zoomIn());
  }

  Future<void> _zoomOut() async {
    final _controller = await widget.controller.future;
    _controller.animateCamera(CameraUpdate.zoomOut());
  }

  Future<void> _animateCameraToCurrentPosition() async {
    final store = context.read<RecordTrackStore>();
    final position = store.userLocationState.whenOrNull(
      mark: (position) => position,
    );

    final latitude = position?.latitude;
    final longitude = position?.longitude;

    if (latitude != null && longitude != null) {
      final lngLat = LatLng(latitude, longitude);
      final _controller = await widget.controller.future;

      final zoom = 18.0;
      final cameraUpdate = CameraUpdate.newLatLngZoom(lngLat, zoom);

      _controller.animateCamera(cameraUpdate);
    }
  }

  @override
  Widget build(BuildContext context) {
    final store = context.read<RecordTrackStore>();

    return Positioned(
      top: AppDiments.dm42,
      right: AppDiments.dm16,
      child: Observer(builder: (context) {
        final userLocationState = store.userLocationState;
        final isMarkState = userLocationState.map(
          mark: (_) => true,
          empty: (_) => false,
        );

        return Column(
          children: [
            MapControllerButton(
              icon: Icons.add,
              onPressed: _zoomIn,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(AppDiments.dm4),
                topRight: Radius.circular(AppDiments.dm4),
              ),
            ),
            Gap(AppDiments.dm1),
            MapControllerButton(
              icon: Icons.remove,
              onPressed: _zoomOut,
              borderRadius: !isMarkState
                  ? BorderRadius.only(
                      bottomLeft: Radius.circular(AppDiments.dm4),
                      bottomRight: Radius.circular(AppDiments.dm4),
                    )
                  : null,
            ),
            isMarkState ? Gap(AppDiments.dm1) : const SizedBox.shrink(),
            isMarkState
                ? MapControllerButton(
                    icon: Icons.location_on,
                    onPressed: _animateCameraToCurrentPosition,
                    sizeIcon: AppDiments.dm24,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(AppDiments.dm4),
                      bottomRight: Radius.circular(AppDiments.dm4),
                    ),
                  )
                : const SizedBox.shrink(),
          ],
        );
      }),
    );
  }
}
