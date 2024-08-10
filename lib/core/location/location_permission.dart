import 'package:geolocator/geolocator.dart';

Future<bool> checkPermission() async {
  final permission = await Geolocator.checkPermission();
  final gpsIsEnable = await Geolocator.isLocationServiceEnabled();

  Future<LocationPermission> requestPermission() async {
    return await Geolocator.requestPermission();
  }

  Future<bool> checkLocationPermission(LocationPermission permission) async {
    if (permission == LocationPermission.whileInUse ||
        permission == LocationPermission.always) {
      return true;
    } else {
      final request = await requestPermission();
      if (request == LocationPermission.whileInUse ||
          request == LocationPermission.always) {
        return true;
      } else {
        return false;
      }
    }
  }

  if (gpsIsEnable) {
    return await checkLocationPermission(permission);
  } else {
    return false;
  }
}
