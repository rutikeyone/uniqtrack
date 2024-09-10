import 'dart:async';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobx/mobx.dart';
import 'package:provider/provider.dart';
import 'package:uniqtrack/core/common/activity.dart';
import 'package:uniqtrack/core/common/context_extension.dart';
import 'package:uniqtrack/core/common/strings/app_strings.dart';
import 'package:uniqtrack/core/common_impl/app_widget_toolkit_impl.dart';
import 'package:uniqtrack/core/presentation/constants/assets/app_assets.dart';
import 'package:uniqtrack/core/presentation/widgets/app_elevated_button.dart';
import 'package:uniqtrack/core/theme/app_diments.dart';
import 'package:uniqtrack/features/record_track/domain/entities/position.dart';
import 'package:uniqtrack/features/record_track/presentation/stores/record_track_store.dart';
import 'package:uniqtrack/features/record_track/presentation/stores/states/states.dart';
import 'package:uniqtrack/features/record_track/presentation/widgets/record_track_modal_bottom_sheet.dart';
import 'package:uniqtrack/generated/l10n.dart';

part '../widgets/record_track_button.dart';

const _initialCenter = const LatLng(0, 0);
const _initialCameraPosition = CameraPosition(target: _initialCenter);

class RecordTrackPage extends ConsumerStatefulWidget {
  const RecordTrackPage({super.key});

  @override
  ConsumerState<RecordTrackPage> createState() => _RecordTrackPageState();
}

class _RecordTrackPageState extends ConsumerState<RecordTrackPage> {
  late final RecordTrackStore _store;

  late final ReactionDisposer _reactionActionsDisposer;
  late final ReactionDisposer _reactionUserLocationDisposer;
  late final ReactionDisposer _trackRecordStatusStateDisposer;

  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();

  final Set<Marker> _markers = {};
  final Set<Polyline> _polylines = {};
  final Set<Circle> _circles = {};

  bool _bottomSheetShowed = false;

  final _key = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    _store = context.read<RecordTrackStore>();

    _reactionActionsDisposer = reaction(
      (_) => _store.actions,
      _handleReactionActionChanges,
    );

    _reactionUserLocationDisposer = reaction(
      (_) => _store.userLocationState,
      _handleUserLocationChanges,
    );

    _trackRecordStatusStateDisposer = reaction(
      (_) => _store.trackRecordStatusState,
      _handleTrackRecordChanges,
    );

    super.initState();
  }

  void _handleReactionActionChanges(Activity<RecordTrackActions>? activity) {
    final action = activity?.get();
    if (action == null) return;

    action.when(
      initStreamPositions: _handleInitStreamPositionsAction,
      moveToUserPosition: _moveToUserPosition,
      showDetailsRecordingData: _showDetailsRecordData,
      hideDetailsRecordingData: _hideDetailsRecordData,
      showConfirmToFinishRecordDialog: _showConfirmToFinishRecordDialog,
      navigateBack: _navigateBack,
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

  void _handleUserLocationChanges(UserLocationState state) {
    state.whenOrNull(mark: _handleUserLocationMarkStateChanged);
  }

  void _handleUserLocationMarkStateChanged(Position currentPosition) {
    _changeCurrentUserPosition(currentPosition);
  }

  void _handleTrackRecordChanges(TrackRecordStatusState state) {
    state.when(
      withoutRecording: _handleWithoutRecordingState,
      recording: _handleRecordingState,
    );
  }

  void _handleWithoutRecordingState() {}

  void _handleRecordingState(
    List<Position> positions,
    double distance,
    int duration,
    RecordTrackModeState mode,
  ) {
    _updateLines(positions);
    _updateCircles(positions);
  }

  Future<void> _changeCurrentUserPosition(Position position) async {
    final latitude = position.latitude;
    final longitude = position.longitude;

    final asset = await ref.read(appWidgetToolkitProvider).bytesFromAsset(
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

  void _updateLines(List<Position> positions) {
    final id = ref.read(appWidgetToolkitProvider).generateUID();

    final points = positions.map((item) {
      final latitude = item.latitude;
      final longitude = item.longitude;
      return LatLng(latitude, longitude);
    }).toList();

    _polylines.clear();

    final polyline = Polyline(
        polylineId: PolylineId(id),
        points: points,
        width: 3,
        consumeTapEvents: true,
        color: context.appMapTheme.userLineColor,
        onTap: () {},
        zIndex: 2);

    _polylines.add(polyline);
  }

  Future<void> _updateCircles(List<Position> positions) async {
    _circles.clear();

    final firstCoordinate = positions.firstOrNull;
    final lastCoordinate = positions.lastOrNull;

    final firstId = ref.read(appWidgetToolkitProvider).generateUID();
    final lastId = ref.read(appWidgetToolkitProvider).generateUID();

    if (firstCoordinate != null) {
      final latitude = firstCoordinate.latitude;
      final longitude = firstCoordinate.longitude;
      final latLng = LatLng(latitude, longitude);

      final firstCircle = Circle(
        circleId: CircleId(firstId),
        center: latLng,
        strokeWidth: AppDiments.dm4.toInt(),
        fillColor: context.appMapTheme.userLineColor,
        strokeColor: context.appMapTheme.userLineColor,
        radius: AppDiments.dm1,
        zIndex: 1,
      );

      _circles.add(firstCircle);
    }

    if (lastCoordinate != null) {
      final latitude = lastCoordinate.latitude;
      final longitude = lastCoordinate.longitude;
      final latLng = LatLng(latitude, longitude);

      final lastCircle = Circle(
        circleId: CircleId(lastId),
        center: latLng,
        strokeWidth: AppDiments.dm4.toInt(),
        fillColor: context.appMapTheme.userLineColor,
        strokeColor: context.appMapTheme.userLineColor,
        radius: AppDiments.dm0,
        zIndex: 1,
      );

      _circles.add(lastCircle);
    }
  }

  void _showDetailsRecordData() {
    final store = context.read<RecordTrackStore>();
    final duration = const Duration(milliseconds: 300);

    if (_bottomSheetShowed) return;
    _bottomSheetShowed = true;

    Future.delayed(duration, () {
      RecordTrackModalBottomSheet.show(
        scaffoldKey: _key,
        context: context,
        stream: store.trackRecordStatusStateStream,
        initialData: store.trackRecordStatusState,
      );
    });
  }

  void _hideDetailsRecordData() {}

  Future<void> _moveToUserPosition(Position position, double zoom) async {
    final latLng = LatLng(position.latitude, position.longitude);
    final cameraUpdate = CameraUpdate.newLatLngZoom(latLng, zoom);

    _animateCamera(cameraUpdate);
  }

  Future<void> _animateCamera(CameraUpdate cameraUpdate) async {
    final GoogleMapController controller = await _controller.future;
    _forceReRender(controller);
    await controller.moveCamera(cameraUpdate);
  }

  void _forceReRender(GoogleMapController controller) {
    if (Platform.isAndroid) {
      setState(() {
        controller.setMapStyle("[]");
      });
    }
  }

  void _showConfirmToFinishRecordDialog() {}

  void _navigateBack() {
  }

  @override
  void dispose() {
    _reactionActionsDisposer();
    _reactionUserLocationDisposer();
    _trackRecordStatusStateDisposer();
    _store.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final store = context.read<RecordTrackStore>();

    return PopScope(
      canPop: false,
      onPopInvokedWithResult: store.onPopInvokedWithResult,
      child: Scaffold(
        key: _key,
        body: SafeArea(
          child: Stack(
            children: [
              Positioned.fill(
                child: GoogleMap(
                  circles: _circles,
                  polylines: _polylines,
                  markers: _markers,
                  mapType: MapType.hybrid,
                  zoomControlsEnabled: false,
                  initialCameraPosition: _initialCameraPosition,
                  onMapCreated: onMapCreated,
                ),
              ),
              _RecordTrackButton(),
            ],
          ),
        ),
      ),
    );
  }
}
