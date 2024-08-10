import 'package:json_annotation/json_annotation.dart';

part 'notifi_response_model.g.dart';

@JsonSerializable(createToJson: false)
class NotifiResponseModel {
  @JsonKey(name: '_id')
  final String notificationId;
  final String title;
  final String body;
  final DateTime createdAt;
  @JsonKey(name: 'read')
  final bool isRead;

  NotifiResponseModel(
    this.notificationId, {
    required this.title,
    required this.body,
    required this.createdAt,
    required this.isRead,
  });

  factory NotifiResponseModel.fromJson(Map<String, dynamic> json) =>
      _$NotifiResponseModelFromJson(json);
}
