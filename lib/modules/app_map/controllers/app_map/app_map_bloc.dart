import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:commuter_client/core/location/location_service.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';

part 'app_map_event.dart';
part 'app_map_state.dart';
part 'app_map_bloc.freezed.dart';

class AppMapBloc extends Bloc<AppMapEvent, AppMapState> {
  final LocationService locationService;
  late CameraPosition initialCameraPosition;
  late GoogleMapController controller;
  late StreamSubscription<LocationData> onLocationChanged;
  late LatLng currentPosition;
  Set<Marker> markers = {};
  AppMapBloc({required this.locationService}) : super(const _Initial()) {
    on<AppMapEvent>((event, emit) async {
      await event.when(
        started: (automove) async {
          emit(const AppMapState.loading());
          currentPosition = locationService.currentLatLng;
          onLocationChanged = locationService.location.onLocationChanged.listen(
            (event) {
              if (automove) {
                add(AppMapEvent.onLocationChanged(event));
              }
            },
          );
          initialCameraPosition =
              CameraPosition(target: currentPosition, zoom: 17);
          emit(AppMapState.success(state.hashCode));
        },
        onMapCreated: (controller) {
          this.controller = controller;
        },
        onMapMove: (cameraPosition) {},
        onLocationChanged: (locationData) {
          controller.animateCamera(
            CameraUpdate.newCameraPosition(
              CameraPosition(
                target: LatLng(
                  locationData.latitude!,
                  locationData.longitude!,
                ),
                bearing: locationData.heading!,
                zoom: 17,
              ),
            ),
          );
        },
        setMarkers: (markers) {
          this.markers = markers;
          emit(AppMapState.success(state.hashCode));
        },
      );
    });
  }

  @override
  Future<void> close() {
    onLocationChanged.cancel();
    return super.close();
  }
}
