part of 'join_commute_bloc.dart';

@freezed
class JoinCommuteEvent with _$JoinCommuteEvent {
  const factory JoinCommuteEvent.joinCommute(
      {required NearbyCommutersModel commute}) = _JoinCommute;
}
