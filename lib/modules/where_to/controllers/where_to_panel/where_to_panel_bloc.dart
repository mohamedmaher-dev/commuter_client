import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../../../core/location/models/places_model_auto_complete/predictions_response_model.dart';
import '../../data/location_field_type.dart';
import '../../data/rebos/where_to_rebo.dart';

part 'where_to_panel_event.dart';
part 'where_to_panel_state.dart';
part 'where_to_panel_bloc.freezed.dart';

class WhereToPanelBloc extends Bloc<WhereToPanelEvent, WhereToPanelState> {
  final WhereToRebo _whereToRebo;
  WhereToFieldState pickupState = WhereToFieldState.empty;
  WhereToFieldState landingState = WhereToFieldState.empty;
  ({String locationName, LatLng location})? pickupLocation;
  ({String locationName, LatLng location})? landingLocation;
  WhereToPanelBloc(this._whereToRebo) : super(const _Initial(0)) {
    on<WhereToPanelEvent>((event, emit) async {
      await event.when(
        started: () {
          pickupLocation = landingLocation = null;
          pickupState = landingState = WhereToFieldState.empty;
          emit(const _Initial(0));
        },
        onSelectPlace: (predictionModel, locationType) async {
          _setState(
            emit: emit,
            locationFieldType: locationType,
            state: WhereToFieldState.loading,
          );
          final placeLocationResult =
              await _whereToRebo.getPlaceDetails(predictionModel.placeId);
          placeLocationResult.when(
            success: (data) {
              _setLocationData(
                emit: emit,
                locationFieldType: locationType,
                locationName: predictionModel.description,
                location: LatLng(
                  data.geometry.location.lat,
                  data.geometry.location.lng,
                ),
              );
            },
            failure: (apiErrorModel) {
              _setState(
                emit: emit,
                locationFieldType: locationType,
                state: WhereToFieldState.failure,
              );
            },
          );
        },
        onSelectCurrentLocation: (locationType) async {
          _setState(
            emit: emit,
            locationFieldType: locationType,
            state: WhereToFieldState.loading,
          );
          final currentLocation = await _whereToRebo.getCurrentLocation();
          if (currentLocation != null) {
            final locationName =
                await _whereToRebo.getLocationName(location: currentLocation);
            _setLocationData(
              locationFieldType: locationType,
              locationName: locationName,
              location: currentLocation,
              emit: emit,
            );
          } else {
            _setState(
              emit: emit,
              locationFieldType: locationType,
              state: WhereToFieldState.failure,
            );
          }
        },
        deleteLocationData: (locationFieldType) {
          _deleteLocationData(emit: emit, locationFieldType: locationFieldType);
          _setState(
            emit: emit,
            locationFieldType: locationFieldType,
            state: WhereToFieldState.empty,
          );
        },
        onSelectFromMap: (location, locationType) async {
          _setState(
            emit: emit,
            locationFieldType: locationType,
            state: WhereToFieldState.loading,
          );
          final locationName =
              await _whereToRebo.getLocationName(location: location);
          _setLocationData(
            locationFieldType: locationType,
            locationName: locationName,
            location: location,
            emit: emit,
          );
        },
      );
    });
  }

  void _setLocationData({
    required LocationFieldType locationFieldType,
    required String locationName,
    required LatLng location,
    required Emitter<WhereToPanelState> emit,
  }) {
    if (locationFieldType == LocationFieldType.pickup) {
      pickupLocation = (locationName: locationName, location: location);
    } else {
      landingLocation = (locationName: locationName, location: location);
    }
    _setState(
      emit: emit,
      locationFieldType: locationFieldType,
      state: WhereToFieldState.success,
    );
  }

  void _deleteLocationData({
    required Emitter<WhereToPanelState> emit,
    required LocationFieldType locationFieldType,
  }) {
    if (locationFieldType == LocationFieldType.pickup) {
      pickupLocation = null;
    } else {
      landingLocation = null;
    }
    emit(WhereToPanelState.initial(state.hashCode));
  }

  void _setState({
    required Emitter<WhereToPanelState> emit,
    required LocationFieldType locationFieldType,
    required WhereToFieldState state,
  }) {
    locationFieldType == LocationFieldType.pickup
        ? pickupState = state
        : landingState = state;

    emit(WhereToPanelState.initial(state.hashCode));
  }
}

enum WhereToFieldState {
  empty,
  loading,
  failure,
  success,
}
