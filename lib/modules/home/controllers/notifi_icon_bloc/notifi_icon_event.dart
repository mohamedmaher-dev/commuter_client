part of 'notifi_icon_bloc.dart';

@freezed
class NotifiIconEvent with _$NotifiIconEvent {
  const factory NotifiIconEvent.started() = _Started;
  const factory NotifiIconEvent.read() = _Read;
}
