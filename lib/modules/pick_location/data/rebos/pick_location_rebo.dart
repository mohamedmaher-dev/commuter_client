import 'package:geocoding/geocoding.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../../../core/location/location_service.dart';

class PickLocationRebo {
  final LocationService _locationService;
  const PickLocationRebo(this._locationService);

  Future<LatLng> getCurrentPosition() async {
    return await _locationService.getCurrentPosition() ?? const LatLng(0, 0);
  }

  Future<Placemark> getLocationName({required LatLng latLng}) {
    return _locationService.getLocationName(latLng: latLng);
  }
}
