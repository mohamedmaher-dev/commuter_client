import 'package:app_settings/app_settings.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:permission_handler/permission_handler.dart';

class CheckNotifiPermission {
  final FirebaseMessaging firebaseMessaging;
  CheckNotifiPermission(this.firebaseMessaging);

  Future<bool> get isGranted async {
    return await Permission.notification.isGranted;
  }

  Future<bool> request() async {
    if (!await isGranted) {
      await AppSettings.openAppSettings(type: AppSettingsType.notification);
    }
    return isGranted;
  }
}
