part of 'commutes_bloc.dart';

@freezed
class CommutesEvent with _$CommutesEvent {
  const factory CommutesEvent.started() = _Started;
  const factory CommutesEvent.addCommute() = AddCommute;
  const factory CommutesEvent.changePin({
    required LocalCommuteModel commute,
  }) = _ChangePin;
  const factory CommutesEvent.deleteCommute({
    required LocalCommuteModel commute,
  }) = _DeleteCommute;

  const factory CommutesEvent.selectLocation({
    required LatLng location,
    required Placemark placemark,
  }) = SelectLocation;
}
