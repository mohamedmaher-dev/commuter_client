part of 'join_commute_bloc.dart';

@freezed
class JoinCommuteState with _$JoinCommuteState {
  const factory JoinCommuteState.initial() = _Initial;
  const factory JoinCommuteState.success() = _Success;
  const factory JoinCommuteState.loading() = _Loading;
  const factory JoinCommuteState.failure(String error) = _Failure;
}
