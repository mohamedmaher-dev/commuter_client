import 'package:commuter_client/modules/notifications/data/models/notifi_response_model.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

import '../../../core/networking/api_consts.dart';
import '../data/models/send_fcm_token_model.dart';
part 'notifi_api_service.g.dart';

@RestApi()
abstract class NotifiApiService {
  factory NotifiApiService(Dio dio, {required String baseUrl}) =
      _NotifiApiService;
  @GET(ApiConsts.getUnreadNotifisEndPoint)
  Future<List<NotifiResponseModel>> getUnReadNotifis(
    @Path('id') String id,
  );
  @GET(ApiConsts.getReadNotifisEndPoint)
  Future<List<NotifiResponseModel>> getReadNotifis(
    @Path('id') String id,
  );

  @PATCH(ApiConsts.readNotifisEndPoint)
  Future<void> readNotifi(
    @Path('notifiId') String notifiId,
  );

  @DELETE(ApiConsts.delNotifiEndPoint)
  Future<void> deleteNotifi(
    @Path('userId') String userId,
    @Path('notifiId') String notifiId,
  );
  @POST(ApiConsts.sendFcmToken)
  Future<void> sendFcmToken(
    @Path('id') String id,
    @Body() SendFcmTokenRequestModel sendFcmTokenRequestModel,
  );
}
