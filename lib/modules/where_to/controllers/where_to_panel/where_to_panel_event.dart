part of 'where_to_panel_bloc.dart';

@freezed
class WhereToPanelEvent with _$WhereToPanelEvent {
  const factory WhereToPanelEvent.started() = _Started;

  const factory WhereToPanelEvent.onSelectPlace({
    required PredictionModel predictionModel,
    required LocationFieldType locationFieldType,
  }) = _OnSelectPlace;

  const factory WhereToPanelEvent.onSelectCurrentLocation({
    required LocationFieldType locationFieldType,
  }) = _OnSelectCurrentLocation;

  const factory WhereToPanelEvent.onSelectFromMap({
    required LatLng location,
    required LocationFieldType locationFieldType,
  }) = _OnSelectFromMap;

  const factory WhereToPanelEvent.deleteLocationData({
    required LocationFieldType locationFieldType,
  }) = _DeleteLocationData;
}
