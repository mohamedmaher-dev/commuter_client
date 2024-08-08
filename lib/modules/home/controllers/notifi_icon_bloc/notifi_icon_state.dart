part of 'notifi_icon_bloc.dart';

@freezed
class NotifiIconState with _$NotifiIconState {
  const factory NotifiIconState.initial() = _Initial;
  const factory NotifiIconState.loading() = _Loading;
  const factory NotifiIconState.hasNotifications(int count) = HasNotifications;
  const factory NotifiIconState.noNotifications() = _NoNotifications;
  const factory NotifiIconState.error() = _Error;
}
