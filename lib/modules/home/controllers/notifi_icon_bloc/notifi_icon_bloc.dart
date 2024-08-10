import 'package:bloc/bloc.dart';
import 'package:commuter_client/modules/home/data/rebos/home_rebo.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'notifi_icon_event.dart';
part 'notifi_icon_state.dart';
part 'notifi_icon_bloc.freezed.dart';

class NotifiIconBloc extends Bloc<NotifiIconEvent, NotifiIconState> {
  final HomeRebo homeRebo;
  NotifiIconBloc(this.homeRebo) : super(const _Initial()) {
    on<NotifiIconEvent>(
      (event, emit) async {
        await event.when(
          started: () async {
            emit(const NotifiIconState.loading());
            final notifiResult = await homeRebo.getUnReadNotifis();
            notifiResult.when(
              success: (value) {
                if (value.isNotEmpty) {
                  emit(NotifiIconState.hasNotifications(value.length));
                } else {
                  emit(const NotifiIconState.noNotifications());
                }
              },
              failure: (error) => emit(const NotifiIconState.error()),
            );
          },
          read: () {
            emit(const NotifiIconState.noNotifications());
          },
        );
      },
    );
  }
}
