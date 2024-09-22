part of 'my_profile_bloc.dart';

@freezed
class MyProfileState with _$MyProfileState {
  const factory MyProfileState.initial(int id) = _Initial;
  const factory MyProfileState.loading() = _Loading;
  const factory MyProfileState.success(GetMeResponseModel userData) = _Success;
  const factory MyProfileState.failure(String error) = _Failure;
}
