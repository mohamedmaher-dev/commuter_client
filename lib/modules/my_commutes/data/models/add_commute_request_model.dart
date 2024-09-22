// ignore_for_file: library_private_types_in_public_api

import 'package:json_annotation/json_annotation.dart';
part 'add_commute_request_model.g.dart';

@JsonSerializable(createFactory: false, explicitToJson: true)
class AddCommuteRequestModel {
  final AddStage pickup;
  final AddStage landing;
  final AddRoundTripModel? roundTrip;
  final String commuteName;
  final bool isActive;
  final bool isRoundTrip;
  final List<String> days;

  AddCommuteRequestModel({
    required this.pickup,
    required this.landing,
    required this.roundTrip,
    required this.commuteName,
    required this.isActive,
    required this.isRoundTrip,
    required this.days,
  });

  Map<String, dynamic> toJson() => _$AddCommuteRequestModelToJson(this);
}

@JsonSerializable(createFactory: false, explicitToJson: true)
class AddStage {
  final AddCommuteLocation location;
  @JsonKey(name: 'time_window')
  final AddCommuteTimeWindow timeWindow;
  final int range;

  AddStage(
      {required this.location, required this.timeWindow, required this.range});

  Map<String, dynamic> toJson() => _$AddStageToJson(this);
}

@JsonSerializable(createFactory: false, explicitToJson: true)
class AddRoundTripModel {
  final AddRoundTripStageModel pickup;
  final AddRoundTripStageModel landing;

  AddRoundTripModel({required this.pickup, required this.landing});
  Map<String, dynamic> toJson() => _$AddRoundTripModelToJson(this);
}

@JsonSerializable(createFactory: false, explicitToJson: true)
class AddRoundTripStageModel {
  @JsonKey(name: 'time_window')
  final AddCommuteTimeWindow timeWindow;

  AddRoundTripStageModel({required this.timeWindow});

  Map<String, dynamic> toJson() => _$AddRoundTripStageModelToJson(this);
}

@JsonSerializable(createFactory: false)
class AddCommuteLocation {
  final double lat;
  final double long;

  AddCommuteLocation({required this.lat, required this.long});
  Map<String, dynamic> toJson() => _$AddCommuteLocationToJson(this);
}

@JsonSerializable(createFactory: false)
class AddCommuteTimeWindow {
  final String start;
  final String end;

  AddCommuteTimeWindow({required this.start, required this.end});

  Map<String, dynamic> toJson() => _$AddCommuteTimeWindowToJson(this);
}
