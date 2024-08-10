import 'package:json_annotation/json_annotation.dart';
part 'get_routes_response_model.g.dart';

@JsonSerializable(createToJson: false)
class GetRoutesResponseModel {
  final List<_Route> routes;

  GetRoutesResponseModel({required this.routes});
  factory GetRoutesResponseModel.fromJson(Map<String, dynamic> json) =>
      _$GetRoutesResponseModelFromJson(json);
}

@JsonSerializable(createToJson: false)
class _Route {
  final int distanceMeters;
  final String duration;
  final _Polyline polyline;

  _Route({
    required this.distanceMeters,
    required this.duration,
    required this.polyline,
  });
  factory _Route.fromJson(Map<String, dynamic> json) => _$RouteFromJson(json);
}

@JsonSerializable(createToJson: false)
class _Polyline {
  final String encodedPolyline;

  _Polyline({required this.encodedPolyline});
  factory _Polyline.fromJson(Map<String, dynamic> json) =>
      _$PolylineFromJson(json);
}
