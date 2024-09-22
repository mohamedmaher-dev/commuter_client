part of 'app_map_bloc.dart';

@freezed
class AppMapEvent with _$AppMapEvent {
  const factory AppMapEvent.started({required bool autoMove}) = _Started;
  const factory AppMapEvent.onMapCreated(GoogleMapController controller) =
      _OnMapCreated;
  const factory AppMapEvent.onMapMove(CameraPosition cameraPosition) =
      _OnMapMove;
  const factory AppMapEvent.onLocationChanged(LocationData locationData) =
      _OnLocationChanged;
  const factory AppMapEvent.setMarkers(Set<Marker> markers) = _SetMarkers;
}
