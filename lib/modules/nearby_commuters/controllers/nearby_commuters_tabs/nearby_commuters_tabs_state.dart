part of 'nearby_commuters_tabs_cubit.dart';

@freezed
class NearbyCommutersTabsState with _$NearbyCommutersTabsState {
  const factory NearbyCommutersTabsState.initial() = _Initial;
  const factory NearbyCommutersTabsState.success(NearbyCommutersTabs tab) =
      _Success;
}
