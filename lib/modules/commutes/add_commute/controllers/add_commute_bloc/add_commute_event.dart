part of 'add_commute_bloc.dart';

@freezed
class AddCommuteEvent with _$AddCommuteEvent {
  const factory AddCommuteEvent.started() = _Started;
  const factory AddCommuteEvent.addCommute() = AddCommute;
  const factory AddCommuteEvent.selectLocation({
    required LatLng location,
    required Placemark placemark,
  }) = SelectLocation;
}
