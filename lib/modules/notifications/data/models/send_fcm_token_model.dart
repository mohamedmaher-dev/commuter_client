import 'package:json_annotation/json_annotation.dart';

part 'send_fcm_token_model.g.dart';

@JsonSerializable(createFactory: false)
class SendFcmTokenRequestModel {
  final String fcmToken;

  SendFcmTokenRequestModel({required this.fcmToken});

  Map<String, dynamic> toJson() => _$SendFcmTokenRequestModelToJson(this);
}
