import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobx/mobx.dart';
import 'package:provider/provider.dart';
import 'package:uniqtrack/app/navigation/stores/nav_callback_store.dart';
import 'package:uniqtrack/core/common/activity.dart';
import 'package:uniqtrack/core/common/extensions/context_extension.dart';
import 'package:uniqtrack/core/common/extensions/iterable_extensions.dart';
import 'package:uniqtrack/core/common/strings/app_strings.dart';
import 'package:uniqtrack/core/common_impl/app_widget_toolkit_impl.dart';
import 'package:uniqtrack/core/presentation/constants/assets/app_assets.dart';
import 'package:uniqtrack/core/presentation/widgets/app_elevated_button.dart';
import 'package:uniqtrack/core/presentation/widgets/common_app_bar.dart';
import 'package:uniqtrack/core/presentation/widgets/map_controller_button.dart';
import 'package:uniqtrack/core/theme/app_diments.dart';
import 'package:uniqtrack/features/tracks/domain/entities/entities.dart';
import 'package:uniqtrack/features/tracks/presentation/record_track/stores/record_track_store.dart';
import 'package:uniqtrack/features/tracks/presentation/record_track/stores/states/states.dart';
import 'package:uniqtrack/features/tracks/presentation/record_track/widgets/memory_details_bottom_sheet/memory_details_bottom_sheet.dart';
import 'package:uniqtrack/features/tracks/presentation/record_track/widgets/record_track_bottom_sheet/record_track_modal_bottom_sheet.dart';
import 'package:uniqtrack/generated/l10n.dart';

part '../widgets/record_map_buttons.dart';

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

  StreamSubscription<TrackUI?>? _repeatTrackSubscription;

  late final ReactionDisposer _reactionActionsDisposer;
  late final ReactionDisposer _reactionUserLocationDisposer;
  late final ReactionDisposer _trackRecordStatusStateDisposer;

  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();

  final Set<Marker> _userMarkers = {};
  final Set<Marker> _memoriesMarkers = {};
  final Set<Polyline> _polylines = {};
  final Set<Circle> _circles = {};

  final Set<Polyline> _repeatPolylines = {};
  final Set<Circle> _repeatCircles = {};

  Set<Polyline> get _allPolylines =>
      Set.from([..._polylines, ..._repeatPolylines]);

  Set<Marker> get _markers => Set.from([..._userMarkers, ..._memoriesMarkers]);

  Set<Circle> get _allCircles => Set.from([..._circles, ..._repeatCircles]);

  late final GlobalKey<ScaffoldState> _scaffoldKey;
  PersistentBottomSheetController? _bottomSheetRecordTrackController;
  PersistentBottomSheetController? _bottomSheetMemoryDetailsController;

  bool _bottomSheetRecordTrackShowed = false;
  bool _bottomSheetMemoryShowed = false;

  BitmapDescriptor? _userMarkerAsset;

  @override
  void initState() {
    _store = context.read<RecordTrackStore>();
    _scaffoldKey = GlobalKey<ScaffoldState>();

    _repeatTrackSubscription =
        _store.previousTrackStream?.listen(_handleRepeatTrack);

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

  void _handleRepeatTrack(TrackUI? track) {
    final data = track?.track;
    if (data == null) return;
    final positionsData = data.positions ?? List.empty();

    _updateRepeatPolylines(positionsData);
    _updateRepeatCircles(positionsData);

    setState(() {});
  }

  void _updateRepeatPolylines(List<PositionData> positionsData) {
    _repeatPolylines.clear();

    positionsData.forEach(
      (positionDataItem) {
        final positions = positionDataItem.positions ?? [];
        final polyline = _createPolyline(
          positions,
          color: context.appMapTheme.secondaryUserLineColor,
          zIndex: 1,
        );
        _repeatPolylines.add(polyline);
      },
    );
  }

  void _updateRepeatCircles(List<PositionData> positionsData) {
    _repeatCircles.clear();

    positionsData.forEach(
      (item) {
        final positions = item.positions ?? [];

        _addMapRepeatCircles(
          positions: positions,
        );
      },
    );
  }

  void _handleReactionActionChanges(Activity<RecordTrackActions>? activity) {
    final action = activity?.get();
    if (action == null) return;

    action.when(
      initStreamPositions: _handleInitStreamPositionsAction,
      moveToUserPosition: _moveToUserPosition,
      showDetailsRecordingData: _showDetailsRecordData,
      hideDetailsRecordingData: _hideDetailsRecordData,
      navigateBack: _navigateBack,
      navigateToAddMemory: _navigateToAddMemory,
      navigateToEditMemory: _navigateToEditMemory,
      navigateToAddRecordTrack: _navigateToAddRecordTrack,
      showMemoryDetails: _showMemoryDetails,
      hideMemoryDetails: _hideMemoryDetailsData,
      animateCamera: _animateCamera,
    );
  }

  Future<void> _animateCamera(CameraUpdate cameraUpdate) async {
    final GoogleMapController controller = await _controller.future;
    _forceReRender(controller);
    await controller.animateCamera(cameraUpdate);
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
    state.whenOrNull(
      mark: _handleUserLocationMarkStateChanged,
    );
  }

  Future<void> _handleUserLocationMarkStateChanged(
      Position currentPosition) async {
    await _changeCurrentUserPosition(currentPosition);

    setState(() {});
  }

  void _handleTrackRecordChanges(TrackRecordStatusState state) {
    state.map(
      withoutRecording: _handleWithoutRecordingState,
      recording: _handleRecordingState,
    );
  }

  Future<void> _handleWithoutRecordingState(_) async {
    final emptyPositions = List<Position>.empty();
    final emptyPositionsData = List<PositionData>.empty();
    final emptyMemories = List<Memory>.empty();

    final currentPosition = _store.currentPosition;

    _updateLines(
      positions: emptyPositions,
      positionsData: emptyPositionsData,
    );

    _updateCircles(
      positions: emptyPositions,
      positionsData: emptyPositionsData,
      recording: false,
      isPaintFirstPoint: false,
    );

    await _updateMemories(
      memories: emptyMemories,
    );

    if (currentPosition != null) {
      await _changeCurrentUserPosition(currentPosition);
    }

    setState(() {});
  }

  Future<void> _handleRecordingState(
      TrackRecordingStatusState statusState) async {
    final currentPosition = _store.currentPosition;

    _updateLines(
      positionsData: statusState.positionsData,
      positions: statusState.positions,
    );

    _updateCircles(
      positions: statusState.positions,
      positionsData: statusState.positionsData,
      recording: statusState.isRecording,
      isPaintFirstPoint: statusState.isPaintFirstPoint,
    );

    await _updateMemories(
      memories: statusState.memories,
    );

    if (currentPosition != null) {
      await _changeCurrentUserPosition(currentPosition);
    }

    setState(() {});
  }

  Future<void> _changeCurrentUserPosition(Position position) async {
    final latitude = position.latitude;
    final longitude = position.longitude;

    _userMarkerAsset = _userMarkerAsset ??
        await ref.read(appWidgetToolkitProvider).bytesFromAsset(
              AppAssets.icons.userMarker,
              AppDiments.dm84.toInt(),
            );

    final data = _userMarkerAsset;

    if (data != null && latitude != null && longitude != null) {
      final id = "userId:${latitude}${longitude}";

      _userMarkers.clear();

      final userMarker = Marker(
        markerId: MarkerId(id),
        anchor: const Offset(0.5, 0.5),
        position: LatLng(latitude, longitude),
        icon: data,
      );

      _userMarkers.add(userMarker);
    }
  }

  Future<void> onMapCreated(GoogleMapController controller) async {
    await Future.delayed(const Duration(milliseconds: 400));
    _controller.complete(controller);
  }

  void _updateLines({
    required List<PositionData> positionsData,
    required List<Position> positions,
  }) {
    _polylines.clear();

    positionsData.forEach(
      (positionDataItem) {
        final positions = positionDataItem.positions ?? [];
        final polyline = _createPolyline(positions);
        _polylines.add(polyline);
      },
    );

    final polyline = _createPolyline(positions);

    _polylines.add(polyline);
  }

  Polyline _createPolyline(
    List<Position> positions, {
    Color? color,
    int? zIndex,
  }) {
    final id = ref.read(appWidgetToolkitProvider).uid();

    final points = positions.map((item) {
      final latitude = item.latitude ?? 0.0;
      final longitude = item.longitude ?? 0.0;

      return LatLng(latitude, longitude);
    }).toList();

    final polyline = Polyline(
      polylineId: PolylineId(id),
      points: points,
      width: AppDiments.dm4.toInt(),
      consumeTapEvents: true,
      color: color ?? context.appMapTheme.primaryUserLineColor,
      onTap: () {},
      zIndex: zIndex ?? 2,
    );

    return polyline;
  }

  void _updateCircles({
    required List<PositionData> positionsData,
    required List<Position> positions,
    required bool isPaintFirstPoint,
    required bool recording,
  }) async {
    final prevCircles = _circles;

    _circles.clear();

    positionsData.forEach(
      (item) {
        final positions = item.positions ?? [];

        _addMapCircles(
          positions: positions,
          showLastCircle: true,
          prevCircles: prevCircles,
        );
      },
    );

    _addMapCircles(
      positions: positions,
      showLastCircle: false,
      prevCircles: prevCircles,
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
            onTap: () => _store.showMemoryDetails(item),
          );

          _memoriesMarkers.add(memoryMarker);
        }
      },
    );
  }

  void _addMapCircles({
    required List<Position> positions,
    required bool showLastCircle,
    required Set<Circle> prevCircles,
  }) {
    final firstCoordinate = positions.firstOrNull;
    final lastCoordinate = positions.lastOrNull;

    if (firstCoordinate != null && positions.length > 1) {
      final latitude = firstCoordinate.latitude;
      final longitude = firstCoordinate.longitude;

      if (latitude != null && longitude != null) {
        final latLng = LatLng(latitude, longitude);

        final id = firstCoordinate.toString();
        final containsCircle =
            prevCircles.firstWhereOrNull((item) => item.circleId.value == id) !=
                null;

        if (!containsCircle) {
          final firstCircle = Circle(
            circleId: CircleId(id),
            center: latLng,
            strokeWidth: AppDiments.dm4.toInt(),
            fillColor: context.appMapTheme.primaryUserLineColor,
            strokeColor: context.appMapTheme.primaryUserLineColor,
            radius: AppDiments.dm1,
            zIndex: 1,
          );

          _circles.add(firstCircle);
        }
      }
    }

    if (lastCoordinate != null && showLastCircle) {
      final latitude = lastCoordinate.latitude;
      final longitude = lastCoordinate.longitude;

      if (latitude != null && longitude != null) {
        final latLng = LatLng(latitude, longitude);
        final id = latLng.toString();

        final containsCircle =
            prevCircles.firstWhereOrNull((item) => item.circleId.value == id) !=
                null;

        if (!containsCircle) {
          final lastCircle = Circle(
            circleId: CircleId(id),
            center: latLng,
            strokeWidth: AppDiments.dm4.toInt(),
            fillColor: context.appMapTheme.primaryUserLineColor,
            strokeColor: context.appMapTheme.primaryUserLineColor,
            radius: AppDiments.dm1,
            zIndex: 1,
          );

          _circles.add(lastCircle);
        }
      }
    }
  }

  void _addMapRepeatCircles({
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

        _repeatCircles.add(firstCircle);
      }
    }

    if (lastCoordinate != null) {
      final latitude = lastCoordinate.latitude;
      final longitude = lastCoordinate.longitude;

      if (latitude != null && longitude != null) {
        final latLng = LatLng(latitude, longitude);

        final lastCircle = Circle(
          circleId: CircleId(lastId),
          center: latLng,
          strokeWidth: AppDiments.dm4.toInt(),
          fillColor: context.appMapTheme.secondaryUserLineColor,
          strokeColor: context.appMapTheme.secondaryUserLineColor,
          radius: AppDiments.dm1,
          zIndex: 1,
        );

        _repeatCircles.add(lastCircle);
      }
    }
  }

  void _showDetailsRecordData() {
    final store = context.read<RecordTrackStore>();
    final duration = const Duration(milliseconds: 300);

    if (_bottomSheetRecordTrackShowed) return;
    _bottomSheetRecordTrackShowed = true;

    final argument = RecordTrackModalBottomSheetArgument(
      scaffoldKey: _scaffoldKey,
      stream: store.trackRecordStatusStateStream,
      initialData: store.trackRecordStatusState,
      onPausePressed: store.pauseRecordTrack,
      onStopPressed: store.stopRecordTrack,
      onContinuePressed: store.continueRecordTrack,
      onAddMemoryPressed: store.addMemory,
      onDeletePressed: store.deleteRecordTrack,
      onSavePressed: store.saveRecordTrack,
    );

    Future.delayed(duration, () {
      _bottomSheetRecordTrackController = RecordTrackModalBottomSheet.show(
        context: context,
        argument: argument,
      );
    });
  }

  void _hideDetailsRecordData() {
    if (_bottomSheetRecordTrackShowed) {
      _bottomSheetRecordTrackShowed = false;
      _bottomSheetRecordTrackController?.close();
      _bottomSheetRecordTrackController = null;
    }
  }

  Future<void> _moveToUserPosition(Position position, double zoom) async {
    final latitude = position.latitude;
    final longitude = position.longitude;

    if (latitude != null && longitude != null) {
      final latLng = LatLng(latitude, longitude);
      final cameraUpdate = CameraUpdate.newLatLngZoom(latLng, zoom);

      _animateCamera(cameraUpdate);
    }
  }

  void _forceReRender(GoogleMapController controller) {
    if (Platform.isAndroid) {
      setState(() {
        controller.setMapStyle("[]");
      });
    }
  }

  void _navigateBack() {
    context.read<RecordTrackNavCallbackStore>().navigateBack();
  }

  Future<void> _navigateToAddMemory(Position? position) async {
    final result = await context
        .read<RecordTrackNavCallbackStore>()
        .navigateToAddMemory(position);

    _store.addMemoryWithData(result);
  }

  Future<void> _navigateToEditMemory(Memory memory) async {
    final result = await context
        .read<RecordTrackNavCallbackStore>()
        .navigateToEditMemory(memory);

    _store.editMemoryWithData(result);
  }

  void _navigateToAddRecordTrack(Track track) {
    context.read<RecordTrackNavCallbackStore>().navigateToAddRecordTrack(track);
  }

  void _showMemoryDetails(Memory memory) {
    final navCallbackStore = context.read<RecordTrackNavCallbackStore>();
    final duration = const Duration(milliseconds: 300);

    if (!_bottomSheetRecordTrackShowed && (!_bottomSheetMemoryShowed)) {
      _bottomSheetMemoryShowed = true;

      Future.delayed(duration, () {
        _bottomSheetMemoryDetailsController = MemoryDetailsBottomSheet.show(
          context: context,
          scaffoldKey: _scaffoldKey,
          initialData: _store.memoryDetailsStream.valueOrNull,
          memoryStream: _store.memoryDetailsStream,
          navigateToPhotoViewer: navCallbackStore.navigateToPhotoViewer,
          onNavigateBackPressed: _store.hideMemoryDetails,
          onDeletePressed: _store.deleteMemory,
          onEditMemoryPressed: _store.editMemory,
          initialUserCreatorData: true,
        );
      });
    }
  }

  void _hideMemoryDetailsData() {
    if (!_bottomSheetRecordTrackShowed && _bottomSheetMemoryShowed) {
      _bottomSheetMemoryShowed = false;

      _bottomSheetMemoryDetailsController?.close();
      _bottomSheetMemoryDetailsController = null;
    }
  }

  @override
  void dispose() {
    _repeatTrackSubscription?.cancel();
    _repeatTrackSubscription = null;
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
      onPopInvokedWithResult: (didPop, result) =>
          store.onPopInvokedWithResult(didPop: didPop, result: result),
      child: Scaffold(
        appBar:
            CommonAppBar(navigateBack: () => store.onPopInvokedWithResult()),
        resizeToAvoidBottomInset: false,
        key: _scaffoldKey,
        body: Stack(
          children: [
            Positioned.fill(
              child: GoogleMap(
                circles: _allCircles,
                polylines: _allPolylines,
                markers: _markers,
                mapType: MapType.hybrid,
                zoomControlsEnabled: false,
                myLocationButtonEnabled: false,
                mapToolbarEnabled: false,
                initialCameraPosition: _initialCameraPosition,
                onMapCreated: onMapCreated,
              ),
            ),
            _RecordMapButtons(controller: _controller),
            _RecordTrackButton(),
          ],
        ),
      ),
    );
  }
}
