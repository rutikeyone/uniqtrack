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
            StreamBuilder(
              initialData: store.previousTrackStream?.value,
              stream: store.previousTrackStream,
              builder: (context, snapshot) {
                final data = snapshot.data;

                if (data == null) {
                  return const SizedBox.shrink();
                }

                return Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Gap(AppDiments.dm1),
                    MapControllerButton(
                      iconWidget: UnconstrainedBox(
                        child: SvgPicture.asset(
                          AppAssets.icons.track,
                          width: AppDiments.dm28,
                          height: AppDiments.dm28,
                          colorFilter: ColorFilter.mode(
                              context.appColorsTheme.secondaryIconColor,
                              BlendMode.srcIn),
                        ),
                      ),
                      onPressed: store.animateCameraToRepeatTrack,
                      sizeIcon: AppDiments.dm24,
                      borderRadius: isMarkState
                          ? BorderRadius.zero
                          : BorderRadius.only(
                              bottomLeft: Radius.circular(AppDiments.dm4),
                              bottomRight: Radius.circular(AppDiments.dm4),
                            ),
                    ),
                  ],
                );
              },
            ),
            isMarkState ? Gap(AppDiments.dm1) : const SizedBox.shrink(),
            isMarkState
                ? MapControllerButton(
                    icon: Icons.location_on,
                    onPressed:
                        context.read<RecordTrackStore>().moveToUserPosition,
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
