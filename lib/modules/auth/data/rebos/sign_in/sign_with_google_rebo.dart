import 'package:commuter_client/core/networking/api_result.dart';
import 'package:commuter_client/modules/auth/data/models/sign_with_google_response_model.dart';
import 'package:commuter_client/modules/auth/data/rebos/sign_in/abstract_sign_in_rebo.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import '../../../../../core/networking/api_try_catch.dart';
import '../../../services/sign_with_google_service.dart';

class SignInWithGoogleRebo
    extends AbstractSignInRebo<String, SignWithGoogleResponseModel> {
  final GoogleSignIn googleSignIn;
  final FirebaseAuth firebaseAuthService;
  final SignWithGoogleService signWithGoogleService;
  SignInWithGoogleRebo({
    required this.googleSignIn,
    required this.firebaseAuthService,
    required this.signWithGoogleService,
    required super.notifiApiService,
    required super.apiAuthService,
    required super.localStorageService,
  });

  @override
  Future<ApiResult<SignWithGoogleResponseModel>> signIn(
      String requestBodyModel) async {
    final signInResult = await apiTryCatch(
        apiCall: signWithGoogleService.signInWithGoogle(requestBodyModel));
    return await signInResult.when(
      success: (data) async {
        await saveUserAuthInfo(id: data.id, token: requestBodyModel);
        return ApiResult.success(data);
      },
      failure: (apiErrorModel) => ApiResult.failure(apiErrorModel),
    );
  }

  Future<String?> choseAccount() async {
    final googleUser = await googleSignIn.signIn();
    if (googleUser != null) {
      final googleAuth = await googleUser.authentication;
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );
      final userCredential =
          await firebaseAuthService.signInWithCredential(credential);
      final idToken = await userCredential.user!.getIdToken();
      return idToken;
    }
    return null;
  }
}
