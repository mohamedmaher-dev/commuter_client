part of 'check_permission_bloc.dart';

@freezed
class CheckPermissionEvent with _$CheckPermissionEvent {
  const factory CheckPermissionEvent.started() = _Started;
  const factory CheckPermissionEvent.allow() = _allow;
}
