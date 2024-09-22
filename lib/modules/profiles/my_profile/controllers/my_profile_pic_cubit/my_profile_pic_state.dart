part of 'my_profile_pic_cubit.dart';

@freezed
class MyProfilePicState with _$MyProfilePicState {
  const factory MyProfilePicState.initial() = _Initial;
  const factory MyProfilePicState.imageSelected({required File image}) =
      _ImageSelected;
}
