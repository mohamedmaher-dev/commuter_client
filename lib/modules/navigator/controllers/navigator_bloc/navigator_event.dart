part of 'navigator_bloc.dart';

@freezed
class NavigatorEvent with _$NavigatorEvent {
  const factory NavigatorEvent.started() = _Started;
}