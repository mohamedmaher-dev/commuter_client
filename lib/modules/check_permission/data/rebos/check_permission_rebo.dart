import 'package:commuter_client/core/location/location_permission.dart';
import '../../../../core/notifications/check_notifi_permission.dart';
import 'package:location/location.dart' as location;

class CheckPermissionRebo {
  final CheckLocationPermission _locationPermission;
  final CheckNotifiPermission _notifiPermission;
  CheckPermissionRebo({
    required CheckLocationPermission locationPermission,
    required CheckNotifiPermission notifiPermission,
  })  : _locationPermission = locationPermission,
        _notifiPermission = notifiPermission;

  Future<bool> check() async {
    return (await locationServiceEnabled() &&
        await locationisGranted() &&
        await notifiisGranted());
  }

  Future<bool> locationServiceEnabled() async {
    return await _locationPermission.getServiceEnabled;
  }

  Future<bool> requestLocationService() async {
    return await _locationPermission.requestLocationService();
  }

  Future<bool> locationisGranted() async {
    return await _locationPermission.getLocationPermissionIsGranted;
  }

  Future<bool> requestLocationPermission() async {
    return await _locationPermission.requestLocationPermission();
  }

  Future<location.PermissionStatus> locationPermissionStatus() async {
    return await _locationPermission.getLocationPermissionStatus;
  }

  Future<bool> notifiisGranted() async {
    return await _notifiPermission.isGranted;
  }

  Future<bool> requstNotifiPermission() async {
    final result = await _notifiPermission.request();
    if (result) {
      return true;
    } else {
      return false;
    }
  }
}
