import 'package:json_annotation/json_annotation.dart';
part 'send_ride_request_model.g.dart';

@JsonSerializable(createFactory: false, explicitToJson: true)
class SendRideRequestModel {
  final String userId;
  final LoactionSendRideRequestModel pickupLocation;
  final LoactionSendRideRequestModel dropoffLocation;
  final int fare;
  final bool carpool;
  final bool isFemaleOnly;
  SendRideRequestModel({
    required this.userId,
    required this.pickupLocation,
    required this.dropoffLocation,
    required this.fare,
    required this.carpool,
    required this.isFemaleOnly,
  });

  Map<String, dynamic> toJson() => _$SendRideRequestModelToJson(this);
}

@JsonSerializable(createFactory: false)
class LoactionSendRideRequestModel {
  final double longitude;
  final double latitude;
  LoactionSendRideRequestModel(
      {required this.latitude, required this.longitude});

  Map<String, dynamic> toJson() => _$LoactionSendRideRequestModelToJson(this);
}
