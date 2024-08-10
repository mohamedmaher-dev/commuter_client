part of 'notifi_bloc.dart';

@freezed
class NotifiEvent with _$NotifiEvent {
  const factory NotifiEvent.started() = _Started;
  const factory NotifiEvent.changePage({required NotifiPage newPage}) =
      _ChangePage;
  const factory NotifiEvent.readNotifi({required String notifiId}) =
      _ReadNotifi;

  const factory NotifiEvent.deleteNotifiEvent({required String notifiId}) =
      _DeleteNotifiEvent;
}
