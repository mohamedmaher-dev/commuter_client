part of 'my_profile_bloc.dart';

@freezed
class MyProfileEvent with _$MyProfileEvent {
  const factory MyProfileEvent.started() = _Started;
  const factory MyProfileEvent.changeData({
    required GetMeResponseModel newUserData,
  }) = _ChangeData;
  const factory MyProfileEvent.signOut(BuildContext context) = _SignOut;
  const factory MyProfileEvent.updateProfile({
    required GetMeResponseModel userData,
    required String imagePath,
  }) = _UpdateProfile;
}
