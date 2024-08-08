import 'package:json_annotation/json_annotation.dart';
part 'join_room_model.g.dart';

@JsonSerializable(createFactory: false)
class JoinRoomModel {
  final String userId;
  final String driverId;

  JoinRoomModel({required this.userId, required this.driverId});
  Map<String, dynamic> toJson() => _$JoinRoomModelToJson(this);
}
