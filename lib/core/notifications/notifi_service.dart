import 'package:commuter_client/core/notifications/check_notifi_permission.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

class NotifiService {
  final FirebaseMessaging _fcm;
  final CheckNotifiPermission _checkNotifiPermission;
  NotifiService(this._fcm, this._checkNotifiPermission);
  Future<void> init() async {
    await _checkNotifiPermission.request();
    await _backgroundFCM();
    await _subscribeToAll();
  }

  Future<void> _backgroundFCM() async {
    FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
  }

  Future<void> _subscribeToAll() async {
    await _fcm.subscribeToTopic("all");
  }

  Future<String> getToken() async {
    return await _fcm.getToken() ?? 'null';
  }
}

@pragma('vm:entry-point')
Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {}
