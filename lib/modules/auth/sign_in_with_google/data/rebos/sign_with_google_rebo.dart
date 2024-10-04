import 'package:commuter_client/core/local_storage/local_storage_service.dart';
import 'package:commuter_client/core/notifications/notifi_service.dart';
import 'package:commuter_client/modules/auth/sign_in_with_google/service/sign_with_google_result.dart';
import 'package:commuter_client/modules/auth/sign_in_with_google/service/sign_with_google_service.dart';
import 'package:commuter_client/modules/notifications/service/notifi_api_service.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../../../../../core/local_storage/local_storage_result.dart';
import '../../../../../core/local_storage/models/user_secret_data_model.dart';
import '../../../../../core/networking/dio_factory.dart';
import '../../../../notifications/data/models/send_fcm_token_model.dart';

class SignWithGoogleRebo {
  final NotifiService _fcmManger;
  final NotifiApiService _notifiApiService;
  final LocalStorageService _localStorageService;
  final SignWithGoogleService _signWithGoogleService;
  final GoogleSignIn _googleSignIn;
  final FirebaseAuth _authService;
  SignWithGoogleRebo({
    required NotifiService fcmManger,
    required NotifiApiService notifiApiService,
    required LocalStorageService localStorageService,
    required SignWithGoogleService signWithGoogleService,
    required GoogleSignIn googleSignIn,
    required FirebaseAuth authService,
  })  : _googleSignIn = googleSignIn,
        _fcmManger = fcmManger,
        _notifiApiService = notifiApiService,
        _localStorageService = localStorageService,
        _signWithGoogleService = signWithGoogleService,
        _authService = authService;

  Future<SignWithGoogleResult<String>> startGoogleSignIn() async {
    try {
      final googleUser = await _googleSignIn.signIn();
      if (googleUser != null) {
        final googleAuth = await googleUser.authentication;
        final credential = GoogleAuthProvider.credential(
          accessToken: googleAuth.accessToken,
          idToken: googleAuth.idToken,
        );
        final userCredential =
            await _authService.signInWithCredential(credential);
        final idToken = await userCredential.user!.getIdToken();
        return SignWithGoogleResult.success(idToken!);
      } else {
        return const SignWithGoogleResult.failure("Google user is null");
      }
    } on FirebaseAuthException catch (e) {
      return SignWithGoogleResult.failure(e.message.toString());
    } catch (e) {
      return SignWithGoogleResult.failure(e.toString());
    }
  }

  Future<SignWithGoogleResult<void>> sign(String token) async {
    try {
      final response = await _signWithGoogleService.signInWithGoogle(token);
      DioFactory.setToken(token);
      await _notifiApiService.sendFcmToken(
        response.id,
        SendFcmTokenRequestModel(
          fcmToken: await _fcmManger.getToken(),
        ),
      );
      return const SignWithGoogleResult.success(null);
    } catch (e) {
      return SignWithGoogleResult.failure(e.toString());
    }
  }

  Future<LocalStorageResult<UserSecretDataModel>> saveUserAuthInfo({
    required String email,
    required String password,
    required String id,
    required String token,
  }) async {
    try {
      final userSecretDataModel = await _localStorageService.saveUserSecretData(
        userEmail: email,
        userPassword: password,
        userId: id,
        userToken: token,
      );
      return LocalStorageResult.success(result: userSecretDataModel);
    } catch (e) {
      return LocalStorageResult.failure(error: e.toString());
    }
  }
}
