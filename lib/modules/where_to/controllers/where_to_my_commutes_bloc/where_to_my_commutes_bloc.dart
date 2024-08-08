import 'package:bloc/bloc.dart';
import 'package:commuter_client/core/local_storage/models/local_commute_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/rebos/where_to_rebo.dart';

part 'where_to_my_commutes_event.dart';
part 'where_to_my_commutes_state.dart';
part 'where_to_my_commutes_bloc.freezed.dart';

class WhereToMyCommutesBloc
    extends Bloc<WhereToMyCommutesEvent, WhereToMyCommutesState> {
  final WhereToRebo _whereToRebo;
  WhereToMyCommutesBloc(this._whereToRebo) : super(const _Initial()) {
    on<WhereToMyCommutesEvent>((event, emit) async {
      await event.when(
        started: () async {
          emit(const WhereToMyCommutesState.loading());
          final dataResult = await _whereToRebo.getLocalCommutes();
          dataResult.when(
            success: (result) {
              if (result != null && result.isNotEmpty) {
                emit(WhereToMyCommutesState.success(result));
              } else {
                emit(const WhereToMyCommutesState.empty());
              }
            },
            failure: (error) {
              emit(const WhereToMyCommutesState.failure());
            },
          );
        },
      );
    });
  }
}
