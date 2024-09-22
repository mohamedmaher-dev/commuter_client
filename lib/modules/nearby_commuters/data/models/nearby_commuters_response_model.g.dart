// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nearby_commuters_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NearbyCommutersResponseModel _$NearbyCommutersResponseModelFromJson(
        Map<String, dynamic> json) =>
    NearbyCommutersResponseModel(
      commuters: (json['commutes'] as List<dynamic>)
          .map((e) => NearbyCommutersModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

NearbyCommutersModel _$NearbyCommutersModelFromJson(
        Map<String, dynamic> json) =>
    NearbyCommutersModel(
      driver: _NearbyCommutersDriverModel.fromJson(
          json['driver'] as Map<String, dynamic>),
      commute: _NearbyCommutersCommuteModel.fromJson(
          json['commute'] as Map<String, dynamic>),
    );

_NearbyCommutersDriverModel _$NearbyCommutersDriverModelFromJson(
        Map<String, dynamic> json) =>
    _NearbyCommutersDriverModel(
      name: json['name'] as String,
      email: json['email'] as String,
      id: json['id'] as String,
      phone: json['phone'] as String?,
      image: json['image'] as String?,
      ratingsQuantity: (json['ratingsQuantity'] as num).toDouble(),
    );

_NearbyCommutersCommuteModel _$NearbyCommutersCommuteModelFromJson(
        Map<String, dynamic> json) =>
    _NearbyCommutersCommuteModel(
      id: json['id'] as String,
      commuteName: json['commuteName'] as String,
      isActive: json['isActive'] as bool,
      isRoundTrip: json['isRoundTrip'] as bool,
      isFemaleOnly: json['isFemaleOnly'] as bool,
      carpool: json['carpool'] as bool,
      distance: (json['distance'] as num).toDouble(),
      landingLocation: _LocationModel.fromJson(
          json['landingLocation'] as Map<String, dynamic>),
      pickupLocation: _LocationModel.fromJson(
          json['pickupLocation'] as Map<String, dynamic>),
      pickupTimeWindow: _TimeWindowModel.fromJson(
          json['pickupTimeWindow'] as Map<String, dynamic>),
      landingTimeWindow: _TimeWindowModel.fromJson(
          json['landingTimeWindow'] as Map<String, dynamic>),
      roundTripPickupTimeWindow: json['roundTripPickupTimeWindow'] == null
          ? null
          : _TimeWindowModel.fromJson(
              json['roundTripPickupTimeWindow'] as Map<String, dynamic>),
      roundTripLandingTimeWindow: json['roundTripLandingTimeWindow'] == null
          ? null
          : _TimeWindowModel.fromJson(
              json['roundTripLandingTimeWindow'] as Map<String, dynamic>),
    );

_TimeWindowModel _$TimeWindowModelFromJson(Map<String, dynamic> json) =>
    _TimeWindowModel(
      start: DateTime.parse(json['start'] as String),
      end: DateTime.parse(json['end'] as String),
    );

_LocationModel _$LocationModelFromJson(Map<String, dynamic> json) =>
    _LocationModel(
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
    );
