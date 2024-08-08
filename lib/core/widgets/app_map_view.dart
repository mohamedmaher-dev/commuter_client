import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class AppMapView extends StatelessWidget {
  const AppMapView({
    super.key,
    required this.target,
    this.polylines,
    this.markers,
    this.onMapCreated,
    this.onTap,
    this.circles,
  });
  final LatLng target;
  final Set<Polyline>? polylines;
  final Set<Marker>? markers;
  final Set<Circle>? circles;
  final void Function(GoogleMapController)? onMapCreated;
  final void Function(LatLng)? onTap;
  @override
  Widget build(BuildContext context) {
    return GoogleMap(
      initialCameraPosition: CameraPosition(
        target: target,
        zoom: 17,
      ),
      polylines: polylines ?? {},
      markers: markers ?? {},
      circles: circles ?? {},
      myLocationEnabled: true,
      myLocationButtonEnabled: true,
      zoomControlsEnabled: false,
      onMapCreated: onMapCreated,
      onTap: onTap,
    );
  }
}
