import 'package:json_annotation/json_annotation.dart';
part 'place_details_model.g.dart';

@JsonSerializable(createToJson: false)
class PlaceDetailsResponseModel {
  final PlaceDetailsModel result;
  const PlaceDetailsResponseModel(this.result);

  factory PlaceDetailsResponseModel.fromJson(Map<String, dynamic> json) =>
      _$PlaceDetailsResponseModelFromJson(json);
}

@JsonSerializable(createToJson: false)
class PlaceDetailsModel {
  final _Geometry geometry;
  PlaceDetailsModel({required this.geometry});
  factory PlaceDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$PlaceDetailsModelFromJson(json);
}

@JsonSerializable(createToJson: false)
class _Geometry {
  final _Location location;
  _Geometry({required this.location});

  factory _Geometry.fromJson(Map<String, dynamic> json) =>
      _$GeometryFromJson(json);
}

@JsonSerializable(createToJson: false)
class _Location {
  final double lat;
  final double lng;
  const _Location(this.lat, this.lng);

  factory _Location.fromJson(Map<String, dynamic> json) =>
      _$LocationFromJson(json);
}
