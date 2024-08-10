import 'package:firebase_messaging/firebase_messaging.dart';

class FCMManger {
  final FirebaseMessaging _fcm;
  FCMManger(this._fcm);
  Future<void> init() async {
    await _requestPermission();
    await _backgroundFCM();
    await _subscribeToAll();
  }

  Future<void> _requestPermission() async {
    await _fcm.requestPermission(
      alert: true,
      announcement: false,
      badge: true,
      carPlay: false,
      criticalAlert: false,
      provisional: false,
      sound: true,
    );
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
