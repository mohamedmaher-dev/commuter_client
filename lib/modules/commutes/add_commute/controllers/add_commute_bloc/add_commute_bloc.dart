import 'package:bloc/bloc.dart';
import 'package:commuter_client/core/local_storage/models/local_commute_model.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geocoding/geocoding.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../data/rebos/add_commute_rebo.dart';

part 'add_commute_event.dart';
part 'add_commute_state.dart';
part 'add_commute_bloc.freezed.dart';

class AddCommuteBloc extends Bloc<AddCommuteEvent, AddCommuteState> {
  final AddCommuteRebo _addCommuteRebo;
  late List<LocalCommuteModel> localCommutes;
  TextEditingController commuteName = TextEditingController();
  LatLng? location;
  String? locationName;

  AddCommuteBloc(this._addCommuteRebo) : super(const _Initial()) {
    on<AddCommuteEvent>(
      (event, emit) async {
        await event.when(
          started: () async {
            await startMethod(emit);
          },
          addCommute: () async {
            await addCommuteMethod(emit);
          },
          selectLocation: (location, placemark) {
            selectLocationMethod(location, placemark);
          },
        );
      },
    );
  }

  void selectLocationMethod(LatLng location, Placemark placemark) {
    this.location = location;
    locationName = placemark.street;
    add(const AddCommuteEvent.started());
  }

  Future<void> addCommuteMethod(Emitter<AddCommuteState> emit) async {
    if (location != null) {
      if (commuteName.text.trim().isNotEmpty) {
        final addLocalCommuteResult = await _addCommuteRebo.addLocalCommute(
          localCommuteModel: LocalCommuteModel(
            commuteName: commuteName.text,
            latitude: location!.latitude,
            longitude: location!.longitude,
          ),
        );
        addLocalCommuteResult.when(
          success: (result) {
            commuteName.clear();
            location = null;
            locationName = null;
            add(const AddCommuteEvent.started());
          },
          failure: (error) {
            emit(AddCommuteState.failure(
                'Failed to add commute', state.hashCode));
          },
        );
      } else {
        emit(AddCommuteState.failure(
            'Please enter commute name', state.hashCode));
      }
    } else {
      emit(AddCommuteState.failure('Please select location', state.hashCode));
    }
  }

  Future<void> startMethod(Emitter<AddCommuteState> emit) async {
    emit(const AddCommuteState.loading());
    final getCommutesResult = await _addCommuteRebo.getLocalCommutes();
    getCommutesResult.when(
      success: (data) {
        localCommutes = data ?? [];
        if (localCommutes.isNotEmpty) {
          emit(const AddCommuteState.success());
        } else {
          emit(const AddCommuteState.empty());
        }
      },
      failure: (error) {
        emit(
          AddCommuteState.failure(
            'Failed to load your commutes',
            state.hashCode,
          ),
        );
      },
    );
  }
}
