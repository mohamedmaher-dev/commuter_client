part of 'notifi_bloc.dart';

@freezed
class NotifiState with _$NotifiState {
  const factory NotifiState.initial() = _Initial;
  const factory NotifiState.loading() = _Loading;
  const factory NotifiState.success(
      {required NotifiPage newPage,
      required List<NotifiResponseModel> notifis}) = _Success;
  const factory NotifiState.empty() = _Empty;
  const factory NotifiState.failure() = _Failure;
}
