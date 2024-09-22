part of 'check_permission_bloc.dart';

@freezed
class CheckPermissionState with _$CheckPermissionState {
  const factory CheckPermissionState.initial() = _Initial;
  const factory CheckPermissionState.loading() = _Loading;
  const factory CheckPermissionState.success() = _Success;
  const factory CheckPermissionState.failure() = _Failure;
  const factory CheckPermissionState.navigate() = _Navigate;
}
