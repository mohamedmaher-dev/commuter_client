part of 'main_bloc.dart';

@freezed
class MainEvent with _$MainEvent {
  const factory MainEvent.started() = _Started;
  const factory MainEvent.changeLan() = _ChangeLan;
  const factory MainEvent.changeTheme() = _ChangeTheme;
}
