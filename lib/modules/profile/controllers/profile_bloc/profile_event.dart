part of 'profile_bloc.dart';

@freezed
class ProfileEvent with _$ProfileEvent {
  const factory ProfileEvent.started() = _Started;
  const factory ProfileEvent.deleteMe() = DeleteMe;
  const factory ProfileEvent.updateMe() = UpdateMe;
  const factory ProfileEvent.pickImage({required ImageSource imageSourse}) =
      PickImage;
}
