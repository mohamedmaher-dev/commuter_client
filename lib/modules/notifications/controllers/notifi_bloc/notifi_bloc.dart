import 'package:bloc/bloc.dart';
import 'package:commuter_client/modules/notifications/data/rebos/notifi_rebo.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/networking/api_result.dart';
import '../../data/models/notifi_response_model.dart';

part 'notifi_event.dart';
part 'notifi_state.dart';
part 'notifi_bloc.freezed.dart';

class NotifiBloc extends Bloc<NotifiEvent, NotifiState> {
  NotifiPage currentPage = NotifiPage.newNotifi;
  final NotifiRebo _notifiRebo;
  NotifiBloc(this._notifiRebo) : super(const _Initial()) {
    on<NotifiEvent>(
      (event, emit) async {
        await event.when(
          started: () async {
            await _getNotifisMethod(emit, currentPage);
          },
          changePage: (newPage) async {
            currentPage = newPage;
            await _getNotifisMethod(emit, newPage);
          },
          readNotifi: (notifiId) async {
            emit(const NotifiState.loading());
            final readNotifiResult =
                await _notifiRebo.readNotifi(notifiId: notifiId);

            readNotifiResult.when(
              success: (data) {
                add(const NotifiEvent.started());
              },
              failure: (apiErrorModel) {
                emit(const NotifiState.failure());
              },
            );
          },
          deleteNotifiEvent: (notifiId) async {
            emit(const NotifiState.loading());
            final deleteNotifiResult =
                await _notifiRebo.deleteNotifi(notifiId: notifiId);
            deleteNotifiResult.when(
              success: (data) {
                add(const NotifiEvent.started());
              },
              failure: (apiErrorModel) {
                emit(const NotifiState.failure());
              },
            );
          },
        );
      },
    );
  }

  Future<void> _getNotifisMethod(
      Emitter<NotifiState> emit, NotifiPage currentPage) async {
    emit(const NotifiState.loading());
    ApiResult<List<NotifiResponseModel>> notifisResult;
    if (currentPage == NotifiPage.newNotifi) {
      notifisResult = await _notifiRebo.getUnreadNotifis();
    } else {
      notifisResult = await _notifiRebo.getReadNotifis();
    }
    notifisResult.when(
      success: (data) {
        if (data.isNotEmpty) {
          emit(NotifiState.success(newPage: currentPage, notifis: data));
        } else {
          emit(const NotifiState.empty());
        }
      },
      failure: (apiErrorModel) {
        emit(const NotifiState.failure());
      },
    );
  }
}

enum NotifiPage {
  newNotifi,
  readedNotifi,
}
