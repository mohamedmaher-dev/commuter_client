import '../controllers/nearby_commuters_tabs/nearby_commuters_tabs_cubit.dart';
import 'models/nearby_commuters_response_model.dart';

abstract class NearbyCommutersFilter {
  List<NearbyCommutersModel> filter(
    List<NearbyCommutersModel> commuterWithoutTabs,
    NearbyCommutersTabs tab,
  );

  List<NearbyCommutersModel> filterWithTab(
      List<NearbyCommutersModel> commuters, NearbyCommutersTabs tab) {
    if (tab == NearbyCommutersTabs.online) {
      return commuters
          .where((element) => element.commute.status == CommuteStatus.online)
          .toList();
    } else if (tab == NearbyCommutersTabs.upcoming) {
      return commuters
          .where((element) => element.commute.status == CommuteStatus.upcoming)
          .toList();
    } else if (tab == NearbyCommutersTabs.offline) {
      return commuters
          .where((element) => element.commute.status == CommuteStatus.offline)
          .toList();
    } else {
      return commuters;
    }
  }

  NearbyCommutersFilter changeFilter(Type filterTye) {
    return switch (filterTye) {
      const (BestMatchNearbyCommuters) => BestMatchNearbyCommuters(),
      const (CarpoolNearbyCommuters) => CarpoolNearbyCommuters(),
      const (FemaleOnlyNearbyCommuters) => FemaleOnlyNearbyCommuters(),
      const (OneWayNearbyCommuters) => OneWayNearbyCommuters(),
      const (TwoWayNearbyCommuters) => TwoWayNearbyCommuters(),
      _ => BestMatchNearbyCommuters()
    };
  }
}

class BestMatchNearbyCommuters extends NearbyCommutersFilter {
  @override
  List<NearbyCommutersModel> filter(
      List<NearbyCommutersModel> commuterWithoutTabs, NearbyCommutersTabs tab) {
    commuterWithoutTabs = filterWithTab(commuterWithoutTabs, tab);
    return commuterWithoutTabs
        .where((element) => element.commute.commuteMatch != null)
        .toList();
  }
}

class CarpoolNearbyCommuters extends NearbyCommutersFilter {
  @override
  List<NearbyCommutersModel> filter(
      List<NearbyCommutersModel> commuterWithoutTabs, NearbyCommutersTabs tab) {
    commuterWithoutTabs = filterWithTab(commuterWithoutTabs, tab);
    return commuterWithoutTabs
        .where((element) => element.commute.carpool)
        .toList();
  }
}

class FemaleOnlyNearbyCommuters extends NearbyCommutersFilter {
  @override
  List<NearbyCommutersModel> filter(
      List<NearbyCommutersModel> commuterWithoutTabs, NearbyCommutersTabs tab) {
    commuterWithoutTabs = filterWithTab(commuterWithoutTabs, tab);
    return commuterWithoutTabs
        .where((element) => element.commute.isFemaleOnly)
        .toList();
  }
}

class OneWayNearbyCommuters extends NearbyCommutersFilter {
  @override
  List<NearbyCommutersModel> filter(
      List<NearbyCommutersModel> commuterWithoutTabs, NearbyCommutersTabs tab) {
    commuterWithoutTabs = filterWithTab(commuterWithoutTabs, tab);
    return commuterWithoutTabs
        .where((element) => element.commute.isRoundTrip == false)
        .toList();
  }
}

class TwoWayNearbyCommuters extends NearbyCommutersFilter {
  @override
  List<NearbyCommutersModel> filter(
      List<NearbyCommutersModel> commuterWithoutTabs, NearbyCommutersTabs tab) {
    commuterWithoutTabs = filterWithTab(commuterWithoutTabs, tab);
    return commuterWithoutTabs
        .where((element) => element.commute.isRoundTrip == true)
        .toList();
  }
}
