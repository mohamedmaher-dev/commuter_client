import 'package:bloc/bloc.dart';
import 'package:commuter_client/core/extensions/bool_ext.dart';
import 'package:commuter_client/core/local_storage/models/local_commute_model.dart';
import 'package:commuter_client/core/utils/uuid_gen.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geocoding/geocoding.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../../data/rebos/add_commute_rebo.dart';
part 'commutes_event.dart';
part 'commutes_state.dart';
part 'commutes_bloc.freezed.dart';

class CommutesBloc extends Bloc<CommutesEvent, CommutesState> {
  final AddCommuteRebo _addCommuteRebo;
  TextEditingController commuteName = TextEditingController();
  LatLng? location;
  String? locationName;

  CommutesBloc(this._addCommuteRebo) : super(const _Initial()) {
    on<CommutesEvent>(
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
          changePin: (commute) async {
            emit(const CommutesState.loading());
            final changePinResult = await _addCommuteRebo.changePinCommute(
                localCommuteModel: commute);
            await changePinResult.when(
              success: (result) async {
                await startMethod(emit);
              },
              failure: (error) {
                emit(
                  CommutesState.failure(
                    'Failed to change commute pin',
                    state.hashCode,
                  ),
                );
              },
            );
          },
          deleteCommute: (commute) async {
            emit(const CommutesState.loading());
            final deleteCommuteResult =
                await _addCommuteRebo.deleteCommute(localCommuteModel: commute);
            await deleteCommuteResult.when(
              success: (result) async {
                await startMethod(emit);
              },
              failure: (error) {
                emit(
                  CommutesState.failure(
                    'Failed to delete commute',
                    state.hashCode,
                  ),
                );
              },
            );
          },
        );
      },
    );
  }

  void selectLocationMethod(LatLng location, Placemark placemark) {
    this.location = location;
    locationName = placemark.street;
    add(const CommutesEvent.started());
  }

  Future<void> addCommuteMethod(Emitter<CommutesState> emit) async {
    if (location != null && commuteName.text.trim().isNotEmpty) {
      emit(const CommutesState.loading());
      final addLocalCommuteResult = await _addCommuteRebo.addLocalCommute(
        localCommuteModel: LocalCommuteModel(
          id: UuidGen.fromTimeBase,
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
          add(const CommutesEvent.started());
        },
        failure: (error) {
          emit(
            CommutesState.failure(
              'Failed to add commute',
              state.hashCode,
            ),
          );
        },
      );
    }
  }

  Future<void> startMethod(Emitter<CommutesState> emit) async {
    emit(const CommutesState.loading());
    final getCommutesResult = await _addCommuteRebo.getLocalCommutes();
    getCommutesResult.when(
      success: (data) {
        if (data != null && data.isNotEmpty) {
          data.sort(
            (a, b) => b.isPinned.toint.compareTo(a.isPinned.toint),
          );
          emit(CommutesState.success(localCommutes: data));
        } else {
          emit(const CommutesState.empty());
        }
      },
      failure: (error) {
        emit(
          CommutesState.failure(
            'Failed to load your commutes',
            state.hashCode,
          ),
        );
      },
    );
  }
}
