part of 'profile_bloc.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState.initial() = _Initial;
  const factory ProfileState.refresh(int id) = Refresh;
  const factory ProfileState.loading() = Loading;
  const factory ProfileState.failure({required String msg}) = Failure;
  const factory ProfileState.getMeLoading() = GetMeLoading;
  const factory ProfileState.getMeSuccess() = GetMeSuccess;
  const factory ProfileState.getMefailure({required String msg}) = GetMeFailure;
  const factory ProfileState.deleteMeSuccess() = DeleteMeSuccess;
  const factory ProfileState.updateMeSuccess() = UpdateMeSuccess;
}
