import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:uniqtrack/core/common/context_extension.dart';
import 'package:uniqtrack/core/presentation/constants/assets/app_assets.dart';
import 'package:uniqtrack/core/presentation/widgets/map_controller_button.dart';
import 'package:uniqtrack/core/theme/app_diments.dart';

class MapButtons extends StatefulWidget {
  final Completer<GoogleMapController> controller;
  final VoidCallback onAnimateShowPressed;

  final Stream<bool> animateShowEnabled;
  final bool? initialData;

  const MapButtons({
    required this.controller,
    required this.onAnimateShowPressed,
    required this.initialData,
    required this.animateShowEnabled,
  });

  @override
  State<MapButtons> createState() => _RecordMapButtonsState();
}

class _RecordMapButtonsState extends State<MapButtons> {
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
    return Positioned(
      top: AppDiments.dm42,
      right: AppDiments.dm16,
      child: StreamBuilder<bool>(
          initialData: widget.initialData,
          stream: widget.animateShowEnabled,
          builder: (context, snapshot) {
            final animateShowEnabled = snapshot.data ?? false;

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
                  borderRadius: animateShowEnabled
                      ? null
                      : BorderRadius.only(
                          bottomRight: Radius.circular(AppDiments.dm4),
                          bottomLeft: Radius.circular(AppDiments.dm4),
                        ),
                ),
                animateShowEnabled
                    ? Gap(AppDiments.dm1)
                    : const SizedBox.shrink(),
                animateShowEnabled
                    ? MapControllerButton(
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
                        onPressed: widget.onAnimateShowPressed,
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
