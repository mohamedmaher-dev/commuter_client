import 'package:bloc/bloc.dart';
import 'package:commuter_client/core/local_storage/models/local_commute_model.dart';
import 'package:commuter_client/modules/where_to/data/location_field_type.dart';
import 'package:commuter_client/modules/where_to/data/rebos/where_to_rebo.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

part 'where_to_event.dart';
part 'where_to_state.dart';
part 'where_to_bloc.freezed.dart';

class WhereToBloc extends Bloc<WhereToEvent, WhereToState> {
  late GoogleMapController controller;
  late CameraPosition cameraPosition;
  late LocationFieldType locationFieldType;
  final WhereToRebo whereToRebo;
  WhereToBloc(this.whereToRebo) : super(const _Initial()) {
    on<WhereToEvent>((event, emit) async {
      await event.when(
        started: () {},
        onSetOnMap: () {
          emit(const WhereToState.setOnMap());
        },
        onCancelSetOnMap: () {
          emit(const WhereToState.initial());
        },
        onCameraPositionChanged: (cameraPosition) {
          this.cameraPosition = cameraPosition;
        },
        onSendRideRequest: (pickup, landing) async {
          emit(const WhereToState.popLoading());
          final sendRideRequestResult = await whereToRebo.sendRideRequest(
            dropoff: landing,
            pickup: pickup,
          );

          sendRideRequestResult.when(
            success: (data) {
              emit(const WhereToState.sendRideRequestSuccess());
            },
            failure: (apiErrorModel) {
              emit(const WhereToState.sendRideRequestFailure());
            },
          );
        },
        onSendRideRequestFromLocalCommute: (commute) async {
          emit(const WhereToState.popLoading());
          final sendRideRequestResult = await whereToRebo
              .sendRideRequestFromLocalCommute(commute: commute);
          sendRideRequestResult.when(
            success: (data) {
              emit(const WhereToState.sendRideRequestSuccess());
            },
            failure: (apiErrorModel) {
              emit(const WhereToState.sendRideRequestFailure());
            },
          );
        },
      );
    });
  }
}
