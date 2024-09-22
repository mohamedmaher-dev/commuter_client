import 'package:bloc/bloc.dart';
import 'package:commuter_client/modules/nearby_commuters/data/rebos/nearby_commuters_rebo.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'join_commute_event.dart';
part 'join_commute_state.dart';
part 'join_commute_bloc.freezed.dart';

class JoinCommuteBloc extends Bloc<JoinCommuteEvent, JoinCommuteState> {
  final NearbyCommutersRebo _rebo;
  JoinCommuteBloc(this._rebo) : super(const _Initial()) {
    on<JoinCommuteEvent>(
      (event, emit) async {
        await event.when(
          joinCommute: (driverId, commuteId) async {
            emit(const JoinCommuteState.loading());
            final result = await _rebo.joinCommute(driverId, commuteId);
            result.when(
              success: (response) {
                emit(const JoinCommuteState.success());
              },
              failure: (error) {
                emit(JoinCommuteState.failure(error.msg));
              },
            );
          },
        );
      },
    );
  }
}
