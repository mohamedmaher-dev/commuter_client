import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

import '../../../../core/networking/api_consts.dart';
import '../../sign_in/data/models/sign_in_response_model.dart';
import '../data/models/sign_with_google_response_model.dart';

part 'sign_with_google_service.g.dart';

@RestApi()
abstract class SignWithGoogleService {
  factory SignWithGoogleService(
    Dio dio, {
    required String baseUrl,
  }) = _SignWithGoogleService;

  @POST(ApiConsts.signWithGoogle)
  Future<SignWithGoogleResponseModel> signInWithGoogle(
    @Header("Authorization") String token,
  );
}
