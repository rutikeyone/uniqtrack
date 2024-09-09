import 'dart:async';
import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:mobx/mobx.dart';
import 'package:provider/provider.dart';
import 'package:uniqtrack/core/common/activity.dart';
import 'package:uniqtrack/core/common/context_extension.dart';
import 'package:uniqtrack/core/common/strings/app_strings.dart';
import 'package:uniqtrack/core/presentation/constants/assets/app_assets.dart';
import 'package:uniqtrack/core/presentation/toolskits/widget_toolkits.dart';
import 'package:uniqtrack/core/presentation/widgets/app_elevated_button.dart';
import 'package:uniqtrack/core/theme/app_diments.dart';
import 'package:uniqtrack/features/record_track/domain/entities/position.dart';
import 'package:uniqtrack/features/record_track/presentation/stores/record_track_store.dart';
import 'package:uniqtrack/features/record_track/presentation/stores/states/states.dart';
import 'package:uniqtrack/generated/l10n.dart';

const _initialCameraPosition = CameraPosition(
  target: LatLng(43.5992, 39.7257),
  zoom: 16.0,
);

class RecordTrackPage extends StatefulWidget {
  const RecordTrackPage({super.key});

  @override
  State<RecordTrackPage> createState() => _RecordTrackPageState();
}

class _RecordTrackPageState extends State<RecordTrackPage> {
  late final RecordTrackStore _store;

  late final ReactionDisposer _reactionActionsDisposer;
  late final ReactionDisposer _reactionUserLocationDisposer;

  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();

  final Set<Marker> _markers = {};

  @override
  void initState() {
    _store = context.read<RecordTrackStore>();

    _reactionActionsDisposer = reaction(
      (_) => _store.actions,
      _handleReactionActionChanged,
    );

    _reactionUserLocationDisposer = reaction(
      (_) => _store.userLocationState,
      _handleUserLocationChanged,
    );

    super.initState();
  }

  void _handleReactionActionChanged(Activity<RecordTrackActions>? activity) {
    final action = activity?.get();
    if (action == null) return;

    action.when(
      initStreamPositions: _handleInitStreamPositionsAction,
    );
  }

  void _handleInitStreamPositionsAction(
    void Function(String title, String body) callback,
    AppStrings title,
    AppStrings body,
  ) {
    callback.call(
      context.fromAppStrings(title),
      context.fromAppStrings(body),
    );
  }

  void _handleUserLocationChanged(UserLocationState state) {
    state.whenOrNull(mark: _handleUserLocationMarkStateChanged);
  }

  void _handleUserLocationMarkStateChanged(
    Position currentPosition,
    List<Position> positions,
  ) {
    _changeCurrentUserPosition(currentPosition);
  }

  Future<void> _changeCurrentUserPosition(Position position) async {
    final latitude = position.latitude;
    final longitude = position.longitude;

    final asset = await WidgetToolkits.bytesFromAsset(
      AppAssets.icons.userMarker,
      AppDiments.dm84.toInt(),
    );

    if (asset != null) {
      final id = "userId:${latitude}${longitude}";

      _markers.clear();

      final userMarker = Marker(
        markerId: MarkerId(id),
        anchor: const Offset(0.5, 0.5),
        position: LatLng(latitude, longitude),
        icon: asset,
      );

      _markers.add(userMarker);

      setState(() {});
    }
  }

  Future<void> onMapCreated(GoogleMapController controller) async {
    await Future.delayed(const Duration(milliseconds: 400));
    _controller.complete(controller);
  }

  @override
  void dispose() {
    _reactionActionsDisposer();
    _reactionUserLocationDisposer();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned.fill(
              child: GoogleMap(
                markers: _markers,
                mapType: MapType.hybrid,
                zoomControlsEnabled: false,
                initialCameraPosition: _initialCameraPosition,
                onMapCreated: onMapCreated,
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
                  icon: Padding(
                    padding: const EdgeInsets.only(left: AppDiments.dm4),
                    child: SvgPicture.asset(
                      AppAssets.icons.play,
                      width: AppDiments.dm24,
                      height: AppDiments.dm24,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
