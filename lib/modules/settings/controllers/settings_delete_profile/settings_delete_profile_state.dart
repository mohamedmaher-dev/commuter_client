part of 'settings_delete_profile_cubit.dart';

@freezed
class SettingsDeleteProfileState with _$SettingsDeleteProfileState {
  const factory SettingsDeleteProfileState.initial() = _Initial;
  const factory SettingsDeleteProfileState.loading() = _Loading;
  const factory SettingsDeleteProfileState.success() = _Success;
  const factory SettingsDeleteProfileState.failure(String error) = _Failure;
}
