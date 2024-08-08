import 'package:bloc/bloc.dart';
import 'package:commuter_client/modules/pick_location/data/rebos/pick_location_rebo.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geocoding/geocoding.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

part 'pick_location_event.dart';
part 'pick_location_state.dart';
part 'pick_location_bloc.freezed.dart';

class PickLocationBloc extends Bloc<PickLocationEvent, PickLocationState> {
  late CameraPosition cameraPosition;
  late LatLng currentLatLng;
  late Set<Marker> marker;
  late GoogleMapController googleMapController;
  late Placemark placemark;
  final PickLocationRebo _pickLocationRebo;
  PickLocationBloc(this._pickLocationRebo) : super(const _Initial()) {
    on<PickLocationEvent>(
      (event, emit) async {
        await event.when(
          started: () async {
            emit(const PickLocationState.loading());
            currentLatLng = await _pickLocationRebo.getCurrentPosition();
            placemark =
                await _pickLocationRebo.getLocationName(latLng: currentLatLng);
            cameraPosition = CameraPosition(target: currentLatLng, zoom: 15);
            marker = {
              Marker(
                markerId: MarkerId(currentLatLng.toString()),
                position: currentLatLng,
              )
            };
            emit(PickLocationState.success(state.hashCode));
          },
          onMapCreated: (googleMapController) {
            this.googleMapController = googleMapController;
          },
          onMapTap: (newLatlng) async {
            currentLatLng = newLatlng;
            await _changeMyLocationMethod(newLatlng, emit);
          },
          goToMe: () async {
            emit(const PickLocationState.ploading());
            currentLatLng = await _pickLocationRebo.getCurrentPosition();
            emit(PickLocationState.success(state.hashCode));
            await _changeMyLocationMethod(currentLatLng, emit);
          },
        );
      },
    );
  }

  Future<void> _changeMyLocationMethod(
      LatLng newLatlng, Emitter<PickLocationState> emit) async {
    placemark = await _pickLocationRebo.getLocationName(latLng: currentLatLng);
    marker = {
      Marker(
        markerId: MarkerId(currentLatLng.toString()),
        position: currentLatLng,
      )
    };
    googleMapController.animateCamera(CameraUpdate.newLatLng(currentLatLng));
    emit(PickLocationState.success(state.hashCode));
  }
}
