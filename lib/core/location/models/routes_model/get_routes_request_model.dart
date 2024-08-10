import 'package:json_annotation/json_annotation.dart';
part 'get_routes_request_model.g.dart';

@JsonSerializable(createFactory: false, explicitToJson: true)
class GetRoutesRequestModel {
  final GetRoutesAddPoint origin;
  final GetRoutesAddPoint destination;
  GetRoutesRequestModel({required this.origin, required this.destination});
  Map<String, dynamic> toJson() => _$GetRoutesRequestModelToJson(this);
}

@JsonSerializable(createFactory: false, explicitToJson: true)
class GetRoutesAddPoint {
  final GetRoutesAddLocation location;

  GetRoutesAddPoint({required this.location});
  Map<String, dynamic> toJson() => _$GetRoutesAddPointToJson(this);
}

@JsonSerializable(createFactory: false, explicitToJson: true)
class GetRoutesAddLocation {
  final GetRoutesAddLatLng latLng;
  GetRoutesAddLocation({required this.latLng});
  Map<String, dynamic> toJson() => _$GetRoutesAddLocationToJson(this);
}

@JsonSerializable(createFactory: false, explicitToJson: true)
class GetRoutesAddLatLng {
  final double latitude;
  final double longitude;
  GetRoutesAddLatLng({required this.latitude, required this.longitude});
  Map<String, dynamic> toJson() => _$GetRoutesAddLatLngToJson(this);
}
