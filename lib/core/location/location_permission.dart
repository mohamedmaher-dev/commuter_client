import 'package:location/location.dart';

class CheckLocationPermission {
  final Location _location;
  CheckLocationPermission(this._location);
  Future<bool> get getServiceEnabled async => await _location.serviceEnabled();
  Future<PermissionStatus> get getLocationPermissionStatus async =>
      await _location.hasPermission();
  Future<bool> get getLocationPermissionIsGranted async {
    final status = await _location.hasPermission();
    if (status == PermissionStatus.granted ||
        status == PermissionStatus.grantedLimited) {
      return true;
    } else {
      return false;
    }
  }

  Future<bool> init() async {
    if (await getServiceEnabled) {
      return await requestLocationPermission();
    } else {
      if (await requestLocationService()) {
        return await requestLocationPermission();
      } else {
        return false;
      }
    }
  }

  Future<bool> requestLocationPermission() async {
    await _location.requestPermission();
    return await getLocationPermissionIsGranted;
  }

  Future<bool> requestLocationService() async {
    return await _location.requestService();
  }
}
