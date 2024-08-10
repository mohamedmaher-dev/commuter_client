part of 'search_for_place_bloc.dart';

@freezed
class SearchForPlaceState with _$SearchForPlaceState {
  const factory SearchForPlaceState.initial() = _Initial;
  const factory SearchForPlaceState.loading() = _Loading;
  const factory SearchForPlaceState.success(
      {required List<PredictionModel> places}) = _Success;
  const factory SearchForPlaceState.failure() = _Failure;
  const factory SearchForPlaceState.empty() = _Empty;
}
