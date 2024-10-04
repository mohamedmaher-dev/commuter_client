import 'package:envied/envied.dart';

part 'env.g.dart';

@Envied(useConstantCase: true)
abstract class Env {
  @EnviedField()
  static const String signWithGoogleBaseUrl = _Env.signWithGoogleBaseUrl;
  @EnviedField()
  static const String apiBaseUrl = _Env.apiBaseUrl;
  @EnviedField()
  static const String socketIoBaseUrl = _Env.socketIoBaseUrl;
  @EnviedField()
  static const String apiChatBaseUrl = _Env.apiChatBaseUrl;
  @EnviedField()
  static const String apiNearbyCommutersBaseUrl =
      _Env.apiNearbyCommutersBaseUrl;
  @EnviedField()
  static const String apiNotifiBaseUrl = _Env.apiNotifiBaseUrl;
  @EnviedField()
  static const String fcmSenderId = _Env.fcmSenderId;
  @EnviedField()
  static const String firebaseCliToken = _Env.firebaseCliToken;
  @EnviedField()
  static const String firebaseAndroidAppId = _Env.firebaseAndroidAppId;
  @EnviedField()
  static const String firebaseAndroidApiKey = _Env.firebaseAndroidApiKey;
  @EnviedField()
  static const String firebaseIosAppId = _Env.firebaseIosAppId;
  @EnviedField()
  static const String firebaseIosApiKey = _Env.firebaseIosApiKey;
  @EnviedField()
  static const String firebaseIosClientId = _Env.firebaseIosClientId;
  @EnviedField()
  static const String routesApiKey = _Env.routesApiKey;
  @EnviedField()
  static const String placesApiKey = _Env.placesApiKey;
}
