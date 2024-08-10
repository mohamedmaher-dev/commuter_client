import 'package:bloc/bloc.dart';
import 'package:commuter_client/modules/where_to/data/rebos/where_to_rebo.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/location/models/places_model_auto_complete/predictions_response_model.dart';

part 'search_for_place_event.dart';
part 'search_for_place_state.dart';
part 'search_for_place_bloc.freezed.dart';

class SearchForPlaceBloc
    extends Bloc<SearchForPlaceEvent, SearchForPlaceState> {
  final WhereToRebo _whereToRebo;
  SearchForPlaceBloc(this._whereToRebo) : super(const _Initial()) {
    on<SearchForPlaceEvent>((event, emit) async {
      await event.when(
        started: () {},
        search: (text) async {
          if (text.isEmpty) {
            emit(const SearchForPlaceState.empty());
          } else {
            emit(const SearchForPlaceState.loading());
            final placesResult = await _whereToRebo.getPredictions(text);
            placesResult.when(
              success: (predictions) {
                if (predictions.isEmpty) {
                  emit(const SearchForPlaceState.empty());
                } else {
                  emit(SearchForPlaceState.success(places: predictions));
                }
              },
              failure: (error) {
                emit(const SearchForPlaceState.failure());
              },
            );
          }
        },
      );
    });
  }
}
