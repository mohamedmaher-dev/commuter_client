part of 'search_for_place_bloc.dart';

@freezed
class SearchForPlaceEvent with _$SearchForPlaceEvent {
  const factory SearchForPlaceEvent.started() = _Started;
  const factory SearchForPlaceEvent.search({required String text}) = _Search;
}
