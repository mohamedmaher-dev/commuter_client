import 'package:json_annotation/json_annotation.dart';
part 'join_commute_request_model.g.dart';

@JsonSerializable(createFactory: false)
class JoinCommuteRequestModel {
  final String userId;
  JoinCommuteRequestModel({required this.userId});
  Map<String, dynamic> toJson() => _$JoinCommuteRequestModelToJson(this);
}
