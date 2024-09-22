part of 'nearby_commuters_bloc.dart';

@freezed
class NearbyCommutersEvent with _$NearbyCommutersEvent {
  const factory NearbyCommutersEvent.started() = _Started;
  const factory NearbyCommutersEvent.changeTab(NearbyCommutersTabs tab) =
      _ChangeTab;
  const factory NearbyCommutersEvent.changeFilter(Type filter) = _ChangeFilter;
}
