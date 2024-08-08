part of 'add_commute_bloc.dart';

@freezed
class AddCommuteState with _$AddCommuteState {
  const factory AddCommuteState.initial() = _Initial;
  const factory AddCommuteState.loading() = Loading;
  const factory AddCommuteState.success() = Success;
  const factory AddCommuteState.empty() = Empty;

  const factory AddCommuteState.failure(String message, int id) = Failure;
}
