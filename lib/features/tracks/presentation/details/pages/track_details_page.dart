import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobx/mobx.dart';
import 'package:provider/provider.dart';
import 'package:uniqtrack/app/navigation/stores/nav_callback_store.dart';
import 'package:uniqtrack/core/common/activity.dart';
import 'package:uniqtrack/core/common/context_extension.dart';
import 'package:uniqtrack/core/common_impl/app_widget_toolkit_impl.dart';
import 'package:uniqtrack/core/presentation/constants/assets/app_assets.dart';
import 'package:uniqtrack/core/presentation/widgets/common_app_bar.dart';
import 'package:uniqtrack/core/presentation/widgets/map_buttons.dart';
import 'package:uniqtrack/core/theme/app_diments.dart';
import 'package:uniqtrack/features/tracks/domain/entities/entities.dart';
import 'package:uniqtrack/features/tracks/presentation/details/store/details_store.dart';
import 'package:uniqtrack/features/tracks/presentation/details/store/states/states.dart';
import 'package:uniqtrack/features/tracks/presentation/details/widgets/details_modal_bottom_sheet.dart';

const _initialCenter = const LatLng(0, 0);
const _cameraPosition = CameraPosition(target: _initialCenter);

class TrackDetailsPage extends ConsumerStatefulWidget {
  const TrackDetailsPage({super.key});

  @override
  ConsumerState<TrackDetailsPage> createState() => _TrackDetailsPageState();
}

class _TrackDetailsPageState extends ConsumerState<TrackDetailsPage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  late final DetailsStore _store;
  late StreamSubscription<DetailsSheetState> _detailsStreamSubscription;
  late StreamSubscription<DetailsMapState> _detailsMapStreamSubscription;

  bool _bottomSheetShowed = false;

  late final ReactionDisposer _reactionActionDisposer;

  PersistentBottomSheetController? _bottomSheetController;

  final Set<Polyline> _polylines = {};
  final Set<Marker> _memoriesMarkers = {};
  final Set<Circle> _circles = {};

  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();

  //final _modalBottomHeight = 353.0;
  final _modalBottomHeight = 554.0;
  final _paddingHeight = 110.0;

  late final _detailsBottomPadding = _modalBottomHeight - _paddingHeight;

  @override
  void initState() {
    _store = context.read<DetailsStore>();
    _detailsStreamSubscription =
        _store.detailsSheetState.listen(_handleDetailsStateChanges);
    _detailsMapStreamSubscription =
        _store.detailsMapState.listen(_handleDetailsMapStateChanges);

    _reactionActionDisposer = reaction(
      (_) => _store.actions,
      _handleActionsChanges,
    );

    super.initState();
  }

  void _handleDetailsStateChanges(DetailsSheetState event) {
    event.whenOrNull(
      pure: _hideDetails,
      details: _showDetails,
    );
  }

  void _handleDetailsMapStateChanges(DetailsMapState value) {
    value.when(
      empty: _cleanMap,
      data: _updateMap,
    );
  }

  Future<void> _cleanMap() async {
    final emptyPositionsList = List<PositionData>.empty();
    final emptyMemoriesList = List<Memory>.empty();

    _updateLines(positionsData: emptyPositionsList);
    _updateCircles(positionsData: emptyPositionsList);
    await _updateMemories(memories: emptyMemoriesList);

    setState(() {});
  }

  Future<void> _updateMap(Track track, bool firstTime) async {
    final positions = track.positions ?? List<PositionData>.empty();
    final memories = track.memories ?? List<Memory>.empty();

    _updateLines(positionsData: positions);
    await _updateMemories(memories: memories);
    _updateCircles(positionsData: positions);
    if (firstTime) {
      _changeCameraPosition(positions: positions);
    }

    setState(() {});
  }

  void _updateLines({
    required List<PositionData> positionsData,
  }) {
    _polylines.clear();

    positionsData.forEach(
      (positionDataItem) {
        final positions = positionDataItem.positions ?? [];
        final polyline = _createPolyline(positions);
        _polylines.add(polyline);
      },
    );
  }

  void _updateCircles({
    required List<PositionData> positionsData,
  }) async {
    _circles.clear();

    positionsData.forEach(
      (item) {
        final positions = item.positions ?? [];

        _addMapCircles(
          positions: positions,
        );
      },
    );
  }

  Future<void> _updateMemories({
    required List<Memory> memories,
  }) async {
    final asset = await ref.read(appWidgetToolkitProvider).bytesFromAsset(
          AppAssets.icons.memoryMap,
          AppDiments.dm64.toInt(),
        );

    _memoriesMarkers.clear();

    memories.forEach(
      (item) {
        final latitude = item.position?.latitude;
        final longitude = item.position?.longitude;

        if (asset != null && latitude != null && longitude != null) {
          final id = "markerId:${latitude}${longitude}";

          final memoryMarker = Marker(
            markerId: MarkerId(id),
            anchor: const Offset(0.5, 1),
            position: LatLng(latitude, longitude),
            icon: asset,
            onTap: () {},
          );

          _memoriesMarkers.add(memoryMarker);
        }
      },
    );
  }

  Polyline _createPolyline(List<Position> positions) {
    final id = ref.read(appWidgetToolkitProvider).uid();

    final points = positions.map((item) {
      final latitude = item.latitude ?? 0.0;
      final longitude = item.longitude ?? 0.0;

      return LatLng(latitude, longitude);
    }).toList();

    final polyline = Polyline(
      polylineId: PolylineId(id),
      points: points,
      width: 3,
      consumeTapEvents: true,
      color: context.appMapTheme.secondaryUserLineColor,
      onTap: () {},
      zIndex: 2,
    );

    return polyline;
  }

  void _addMapCircles({
    required List<Position> positions,
  }) {
    final firstCoordinate = positions.firstOrNull;
    final lastCoordinate = positions.lastOrNull;

    final firstId = ref.read(appWidgetToolkitProvider).uid();
    final lastId = ref.read(appWidgetToolkitProvider).uid();

    if (firstCoordinate != null && positions.length > 1) {
      final latitude = firstCoordinate.latitude;
      final longitude = firstCoordinate.longitude;

      if (latitude != null && longitude != null) {
        final latLng = LatLng(latitude, longitude);

        final firstCircle = Circle(
          circleId: CircleId(firstId),
          center: latLng,
          strokeWidth: AppDiments.dm4.toInt(),
          fillColor: context.appMapTheme.secondaryUserLineColor,
          strokeColor: context.appMapTheme.secondaryUserLineColor,
          radius: AppDiments.dm1,
          zIndex: 1,
        );

        _circles.add(firstCircle);
      }
    }

    if (lastCoordinate != null && positions.length > 1) {
      final latitude = lastCoordinate.latitude;
      final longitude = lastCoordinate.longitude;

      if (latitude != null && longitude != null) {
        final latLng = LatLng(latitude, longitude);

        final firstCircle = Circle(
          circleId: CircleId(lastId),
          center: latLng,
          strokeWidth: AppDiments.dm4.toInt(),
          fillColor: context.appMapTheme.secondaryUserLineColor,
          strokeColor: context.appMapTheme.secondaryUserLineColor,
          radius: AppDiments.dm1,
          zIndex: 1,
        );

        _circles.add(firstCircle);
      }
    }
  }

  Future<void> _changeCameraPosition({
    required List<PositionData> positions,
  }) async {
    final points = _store.calculatePoints(positions);

    final bounds = LatLngBounds(
      southwest: points.value1,
      northeast: points.value2,
    );

    final cameraUpdate = CameraUpdate.newLatLngBounds(
      bounds,
      0,
    );

    await _animateCamera(cameraUpdate);
  }

  void _showDetails(TrackUI track) {
    if (!_bottomSheetShowed) {
      _bottomSheetShowed = true;

      _bottomSheetController = _scaffoldKey.currentState?.showBottomSheet(
        (context) {
          return DetailsModalBottomSheet(
            initialTrack: track,
            trackStream: _store.trackDetailsStream,
            height: _modalBottomHeight,
            onAddToFavouritesPressed: _store.addTrackToFavourites,
            onRemoveFromFavouritesPressed: _store.removeTrackFromFavourites,
            onDeletePressed: _store.deleteTrack,
          );
        },
        enableDrag: false,
        backgroundColor: context.theme.scaffoldBackgroundColor,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(12.0),
          ),
        ),
      );
    }
  }

  void _hideDetails() {
    if (_bottomSheetShowed) {
      _bottomSheetShowed = false;
      _bottomSheetController?.close();
      _bottomSheetController = null;
    }
  }

  void _handleActionsChanges(Activity<DetailsActions>? activity) {
    final action = activity?.get();
    if (action == null) return;

    action.when(
      navigateBack: _navigateBack,
      closeTrackDetailsDialog: closeTrackDetailsDialog,
      animateCamera: _animateCamera,
    );
  }

  void _navigateBack() {
    context.read<TrackDetailsNavCallbackStore>().navigateBack();
  }

  void closeTrackDetailsDialog() {
    if (_bottomSheetShowed) {
      _bottomSheetShowed = false;
      _bottomSheetController?.close();
    }
  }

  Future<void> _onMapCreated(GoogleMapController controller) async {
    await Future.delayed(const Duration(milliseconds: 400));
    _controller.complete(controller);
  }

  Future<void> _animateCamera(CameraUpdate cameraUpdate) async {
    final GoogleMapController controller = await _controller.future;
    _forceReRender(controller);
    await controller.animateCamera(cameraUpdate);
  }

  void _forceReRender(GoogleMapController controller) {
    if (Platform.isAndroid) {
      setState(() {
        controller.setMapStyle("[]");
      });
    }
  }

  @override
  void dispose() {
    _detailsStreamSubscription.cancel();
    _detailsMapStreamSubscription.cancel();
    _reactionActionDisposer();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, result) =>
          _store.onPopInvokedWithResult(didPop: didPop, result: result),
      child: Scaffold(
        key: _scaffoldKey,
        appBar: CommonAppBar(
          navigateBack: _store.onPopInvokedWithResult,
        ),
        resizeToAvoidBottomInset: false,
        body: Stack(
          children: [
            Positioned.fill(
              child: GoogleMap(
                circles: _circles,
                polylines: _polylines,
                markers: _memoriesMarkers,
                mapType: MapType.hybrid,
                zoomControlsEnabled: false,
                myLocationButtonEnabled: false,
                mapToolbarEnabled: false,
                initialCameraPosition: _cameraPosition,
                onMapCreated: _onMapCreated,
                padding: EdgeInsets.only(bottom: _detailsBottomPadding),
              ),
            ),
            MapButtons(
              controller: _controller,
              initialData: _store.animateShowEnabled.value,
              animateShowEnabled: _store.animateShowEnabled,
              onAnimateShowPressed: _store.animateCamera,
            ),
          ],
        ),
      ),
    );
  }
}
