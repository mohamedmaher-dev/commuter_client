part of 'nearby_commuters_bloc.dart';

@freezed
class NearbyCommutersState with _$NearbyCommutersState {
  const factory NearbyCommutersState.initial() = _Initial;
  const factory NearbyCommutersState.loading() = _Loading;
  const factory NearbyCommutersState.success(
      List<NearbyCommutersModel> list, int id) = _Success;
  const factory NearbyCommutersState.empty() = _Empty;
  const factory NearbyCommutersState.failure(String msg) = _Failure;
}
