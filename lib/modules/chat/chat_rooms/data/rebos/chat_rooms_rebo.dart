import 'dart:async';

import 'package:commuter_client/core/local_storage/models/user_secret_data_model.dart';
import 'package:commuter_client/core/networking/api_result.dart';
import 'package:commuter_client/modules/chat/chat_rooms/data/models/chat_room_model.dart';
import 'package:commuter_client/modules/chat/chat_rooms/service/api_chat_service.dart';
import 'package:dio/dio.dart';

import '../../../../../core/networking/api_error_model.dart';

class ChatRoomRebo {
  final ApiChatService _apiChatService;
  final UserSecretDataModel _userSecretDataModel;
  ChatRoomRebo(
      {required ApiChatService apiChatService,
      required UserSecretDataModel userSecretDataModel})
      : _apiChatService = apiChatService,
        _userSecretDataModel = userSecretDataModel;

  Future<ApiResult<List<ChatRoomModel>>> getRooms() async {
    try {
      final response =
          await _apiChatService.getRooms(_userSecretDataModel.userId);
      return ApiResult.success(response);
    } on DioException catch (e) {
      return ApiResult.failure(ApiErrorModel.fromDioException(dioException: e));
    } catch (e) {
      return ApiResult.failure(ApiErrorModel.fromUnknown(e: e));
    }
  }
}
