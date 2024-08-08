part of 'where_to_bloc.dart';

@freezed
class WhereToEvent with _$WhereToEvent {
  const factory WhereToEvent.started() = _Started;
  const factory WhereToEvent.onSetOnMap() = _OnSetOnMap;
  const factory WhereToEvent.onCancelSetOnMap() = _OnCancelSetOnMap;
  const factory WhereToEvent.onCameraPositionChanged(
      {required CameraPosition cameraPosition}) = _OnCameraPositionChanged;
  const factory WhereToEvent.onSendRideRequest(
      {required LatLng pickup, required LatLng landing}) = _OnSendRideRequest;
  const factory WhereToEvent.onSendRideRequestFromLocalCommute(
          {required LocalCommuteModel commute}) =
      _OnSendRideRequestFromLocalCommute;
}
