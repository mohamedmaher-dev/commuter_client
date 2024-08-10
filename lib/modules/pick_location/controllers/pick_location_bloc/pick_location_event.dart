part of 'pick_location_bloc.dart';

@freezed
class PickLocationEvent with _$PickLocationEvent {
  const factory PickLocationEvent.started() = _Started;
  const factory PickLocationEvent.onMapCreated(
    GoogleMapController googleMapController,
  ) = OnMapCreated;

  const factory PickLocationEvent.onMapTap(LatLng latLng) = OnMapTap;
  const factory PickLocationEvent.goToMe() = GoToMe;
}
