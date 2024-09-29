import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobx/mobx.dart';
import 'package:provider/provider.dart';
import 'package:rxdart/rxdart.dart';
import 'package:uniqtrack/app/navigation/stores/nav_callback_store.dart';
import 'package:uniqtrack/core/common/activity.dart';
import 'package:uniqtrack/core/common/extensions/context_extension.dart';
import 'package:uniqtrack/core/common/extensions/iterable_position_data_extensions.dart';
import 'package:uniqtrack/core/common/strings/app_strings.dart';
import 'package:uniqtrack/core/common_impl/app_widget_toolkit_impl.dart';
import 'package:uniqtrack/core/common_impl/common_ui/common_ui_delegate_notifier.dart';
import 'package:uniqtrack/core/presentation/constants/assets/app_assets.dart';
import 'package:uniqtrack/core/presentation/widgets/common_app_bar.dart';
import 'package:uniqtrack/core/presentation/widgets/map_buttons.dart';
import 'package:uniqtrack/core/theme/app_diments.dart';
import 'package:uniqtrack/features/tracks/domain/entities/entities.dart';
import 'package:uniqtrack/features/tracks/presentation/details/store/details_store.dart';
import 'package:uniqtrack/features/tracks/presentation/details/store/states/states.dart';
import 'package:uniqtrack/features/tracks/presentation/details/widgets/details_modal_bottom_sheet.dart';
import 'package:uniqtrack/features/tracks/presentation/record_track/widgets/memory_details_bottom_sheet/memory_details_bottom_sheet.dart';

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
  late final DetailsNavCallbackStore _navCallbackStore;

  late StreamSubscription<DetailsMapState> _detailsMapStreamSubscription;
  late StreamSubscription<DetailsSheetState> _detailsSheetStreamSubscription;

  bool _detailsBottomSheetShowed = false;
  bool _memoryBottomSheetShowed = false;

  late final ReactionDisposer _reactionActionDisposer;

  PersistentBottomSheetController? _detailsBottomSheetController;
  PersistentBottomSheetController? _memoryBottomSheetController;

  final Set<Polyline> _polylines = {};
  final Set<Marker> _memoriesMarkers = {};
  final Set<Circle> _circles = {};

  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();

  final double appBarHeight = 55.0;

  late double _detailsBottomPadding = 0.0;

  @override
  void initState() {
    _store = context.read<DetailsStore>();
    _navCallbackStore = context.read<DetailsNavCallbackStore>();

    _store.trackDetailsStream.listen(_handleTrackDetailsStateChanges);

    _detailsMapStreamSubscription =
        _store.detailsMapState.listen(_handleDetailsMapStateChanges);

    _detailsSheetStreamSubscription =
        _store.detailsSheetState.listen(_handleDetailsSheetState);

    _reactionActionDisposer = reaction(
      (_) => _store.actions,
      _handleActionsChanges,
    );

    super.initState();
  }

  void _handleTrackDetailsStateChanges((bool, TrackUI?) value) {
    final firstTime = value.$1;
    final track = value.$2;
    if (firstTime && track == null) {
      if (!mounted) return;

      final header = AppStrings.notification();
      final body = AppStrings.theContentHasBeenDeleted();

      ref.read(commonUIDelegateNotifierProvider.notifier).cupertinoDialog(
            header: header,
            body: body,
          );
    }
  }

  void _handleDetailsMapStateChanges(DetailsMapState value) {
    value.when(
      empty: _cleanMap,
      data: _updateMap,
    );
  }

  void _handleDetailsSheetState(DetailsSheetState value) {
    value.when(
      pure: _hideAllBottomSheets,
      details: (_) => _showDetailsModalBottomSheet(),
      memory: (_) => _showMemoryDetails(),
    );
  }

  Future<void> _hideAllBottomSheets() async {
    await _hideMemoryDetails(duration: Duration(milliseconds: 100));
    await _hideDetailsBottomSheet(duration: Duration(milliseconds: 100));
  }

  Future<void> _cleanMap() async {
    final emptyPositionsList = List<PositionData>.empty();
    final emptyMemoriesList = List<Memory>.empty();

    _updateLines(positionsData: emptyPositionsList);
    _updateCircles(positionsData: emptyPositionsList);
    await _updateMemories(memories: emptyMemoriesList);

    _detailsBottomPadding = 0.0;

    setState(() {});
  }

  Future<void> _updateMap(Track track, bool firstTime) async {
    if (!mounted) return;

    final positions = track.positions ?? List<PositionData>.empty();
    final memories = track.memories ?? List<Memory>.empty();

    _updateLines(positionsData: positions);
    await _updateMemories(memories: memories);
    _updateCircles(positionsData: positions);

    if (firstTime) {
      await _showDetailsModalBottomSheet();
    }

    if (firstTime && positions.isNotEmpty) {
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
    final store = context.read<DetailsStore>();

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
            onTap: () => store.showMemoryDetails(item),
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
      width: AppDiments.dm4.toInt(),
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
    final points = positions.calculateSouthWestAndNortheastPoints();

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

  Future<void> _showDetailsModalBottomSheet() async {
    final track = _store.trackDetailsStream.value?.$2;

    if (!_detailsBottomSheetShowed && _detailsBottomSheetController == null) {
      _detailsBottomSheetShowed = true;

      await _hideMemoryDetails();

      final stream = _store.trackDetailsStream.map((item) {
        return item.$2;
      });

      _detailsBottomSheetController =
          _scaffoldKey.currentState?.showBottomSheet(
        (context) {
          return DetailsModalBottomSheet(
            initialTrack: track,
            trackStream: stream,
            onAddToFavouritesPressed: _store.addTrackToFavourites,
            onRemoveFromFavouritesPressed: _store.removeTrackFromFavourites,
            onDeletePressed: _store.deleteTrack,
            onMemoryPressed: _store.showMemoryDetails,
            onRepeatPressed: () {
              final value = _store.trackDetailsStream.value;
              _navCallbackStore.navigateToRecordTrack(value?.$2?.track);
            },
            onDeleteMemoryPressed: _store.deleteMemory,
            onEditPressed: _navCallbackStore.navigateToEditTrack,
            onHeightDefined: _onHeightDefinedForDetails,
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

  Future<void> _showMemoryDetails() async {
    final _store = context.read<DetailsStore>();
    final _navStore = context.read<DetailsNavCallbackStore>();

    final memoryDetailsStream = _store.memoryDetailsStream;
    final initialMemoryData = memoryDetailsStream.value?.memory;

    final initialUserCreatorData =
        memoryDetailsStream.value?.currentUserCreator;

    final duration = const Duration(milliseconds: 300);

    if (!_memoryBottomSheetShowed && _memoryBottomSheetController == null) {
      _memoryBottomSheetShowed = true;

      await _hideDetailsBottomSheet();

      final memoryStream = memoryDetailsStream
          .map((item) => item?.memory)
          .debounceTime(Duration(milliseconds: 300));

      final userCreatorStream = memoryDetailsStream
          .map((item) => item?.currentUserCreator)
          .debounceTime(Duration(milliseconds: 300));

      Future.delayed(duration, () {
        _memoryBottomSheetController = MemoryDetailsBottomSheet.show(
          context: context,
          scaffoldKey: _scaffoldKey,
          initialData: initialMemoryData,
          memoryStream: memoryStream,
          initialUserCreatorData: initialUserCreatorData,
          userCreatorStream: userCreatorStream,
          navigateToPhotoViewer: _navStore.navigateToPhotoViewer,
          onNavigateBackPressed: _store.hideMemoryDetails,
          onDeletePressed: _store.deleteMemory,
          onEditMemoryPressed: _navigateToEditMemory,
          onHeightDefined: _onHeightDefinedForMemory,
        );
      });
    }
  }

  void _navigateToEditMemory(Memory memory) {
    final _store = context.read<DetailsStore>();
    final _navStore = context.read<DetailsNavCallbackStore>();
    final track = _store.trackDetailsStream.value?.$2?.track;

    if (track == null) return;
    _navStore.navigateToEditMemory?.call(track, memory);
  }

  Future<void> _hideDetailsBottomSheet({Duration? duration}) async {
    final _duration = duration ?? const Duration(milliseconds: 300);

    if (_detailsBottomSheetShowed && _detailsBottomSheetController != null) {
      _detailsBottomSheetShowed = false;

      _detailsBottomSheetController?.close();
      _detailsBottomSheetController = null;

      await Future.delayed(_duration);
    }
  }

  Future<void> _hideMemoryDetails({Duration? duration}) async {
    final _duration = duration ?? const Duration(milliseconds: 300);

    if (_memoryBottomSheetShowed && _memoryBottomSheetController != null) {
      _memoryBottomSheetShowed = false;

      _memoryBottomSheetController?.close();
      _memoryBottomSheetController = null;

      await Future.delayed(_duration);
    }
  }

  void _handleActionsChanges(Activity<DetailsActions>? activity) {
    final action = activity?.get();
    if (action == null) return;

    action.when(
      navigateBack: _navigateBack,
      animateCamera: _animateCamera,
    );
  }

  void _navigateBack() {
    context.read<DetailsNavCallbackStore>().navigateBack();
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

  void _onHeightDefinedForDetails(double height) {
    final duration = const Duration(milliseconds: 500);

    setState(() {
      _detailsBottomPadding = height;
    });

    Future.delayed(duration, () {
      _store.animateCameraByTrack();
    });
  }

  void _onHeightDefinedForMemory(double height) {
    final duration = const Duration(milliseconds: 500);

    setState(() {
      _detailsBottomPadding = height;
    });

    Future.delayed(duration, () {
      _store.animateCameraByMemory();
    });
  }

  @override
  void dispose() {
    _detailsMapStreamSubscription.cancel();
    _detailsSheetStreamSubscription.cancel();
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
              initialData: _store.mapDataUI.value,
              mapDataStream: _store.mapDataUI,
              onAnimateToTrackShowPressed: _store.animateCameraByTrack,
              onAnimateToMemoryPressed: _store.animateCameraByMemory,
            ),
          ],
        ),
      ),
    );
  }
}
