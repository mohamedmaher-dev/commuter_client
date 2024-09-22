// ignore_for_file: library_private_types_in_public_api, unused_element

import 'package:commuter_client/core/local_storage/models/local_commute_model.dart';
import 'package:commuter_client/modules/profiles/my_profile/data/models/get_me_response_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'nearby_commuters_response_model.g.dart';

@JsonSerializable(createToJson: false)
class NearbyCommutersResponseModel {
  @JsonKey(name: 'commutes')
  final List<NearbyCommutersModel> commuters;
  NearbyCommutersResponseModel({
    required this.commuters,
  });
  factory NearbyCommutersResponseModel.fromJson(Map<String, dynamic> json) =>
      _$NearbyCommutersResponseModelFromJson(json);
}

@JsonSerializable(createToJson: false)
class NearbyCommutersModel {
  final _NearbyCommutersDriverModel driver;
  final _NearbyCommutersCommuteModel commute;
  @JsonKey(includeFromJson: false)
  late final GetMeResponseModel driverModel;
  NearbyCommutersModel({
    required this.driver,
    required this.commute,
  });
  factory NearbyCommutersModel.fromJson(Map<String, dynamic> json) =>
      _$NearbyCommutersModelFromJson(json);
}

@JsonSerializable(createToJson: false)
class _NearbyCommutersDriverModel {
  final String name;
  final String email;
  final String id;
  final String? phone;
  final String? image;
  final double ratingsQuantity;

  _NearbyCommutersDriverModel({
    required this.name,
    required this.email,
    required this.id,
    required this.phone,
    required this.image,
    required this.ratingsQuantity,
  });
  factory _NearbyCommutersDriverModel.fromJson(Map<String, dynamic> json) =>
      _$NearbyCommutersDriverModelFromJson(json);
}

@JsonSerializable(createToJson: false)
class _NearbyCommutersCommuteModel {
  @JsonKey(includeFromJson: false)
  late CommuteStatus status;
  @JsonKey(includeFromJson: false)
  late int timeLeft;
  @JsonKey(includeFromJson: false)
  late String pickupLocationName;
  @JsonKey(includeFromJson: false)
  late String dropoffLocationName;
  @JsonKey(includeFromJson: false)
  LocalCommuteModel? commuteMatch;
  final String id;
  final String commuteName;
  final bool isActive;
  final bool isRoundTrip;
  final bool isFemaleOnly;
  final bool carpool;
  final double distance;

  final _LocationModel landingLocation;
  final _LocationModel pickupLocation;
  final _TimeWindowModel pickupTimeWindow;
  final _TimeWindowModel landingTimeWindow;
  final _TimeWindowModel? roundTripPickupTimeWindow;
  final _TimeWindowModel? roundTripLandingTimeWindow;

  _NearbyCommutersCommuteModel({
    required this.id,
    required this.commuteName,
    required this.isActive,
    required this.isRoundTrip,
    required this.isFemaleOnly,
    required this.carpool,
    required this.distance,
    required this.landingLocation,
    required this.pickupLocation,
    required this.pickupTimeWindow,
    required this.landingTimeWindow,
    required this.roundTripPickupTimeWindow,
    required this.roundTripLandingTimeWindow,
  });

  factory _NearbyCommutersCommuteModel.fromJson(Map<String, dynamic> json) =>
      _$NearbyCommutersCommuteModelFromJson(json);
}

@JsonSerializable(createToJson: false)
class _TimeWindowModel {
  DateTime start;
  DateTime end;

  _TimeWindowModel({
    required this.start,
    required this.end,
  });
  factory _TimeWindowModel.fromJson(Map<String, dynamic> json) =>
      _$TimeWindowModelFromJson(json);
}

@JsonSerializable(createToJson: false)
class _LocationModel {
  final double latitude;
  final double longitude;

  _LocationModel({
    required this.latitude,
    required this.longitude,
  });

  factory _LocationModel.fromJson(Map<String, dynamic> json) =>
      _$LocationModelFromJson(json);
}

enum CommuteStatus {
  online,
  upcoming,
  offline,
}
