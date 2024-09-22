part of 'commutes_bloc.dart';

@freezed
class CommutesState with _$CommutesState {
  const factory CommutesState.initial() = _Initial;
  const factory CommutesState.loading() = Loading;
  const factory CommutesState.success(
      {required List<LocalCommuteModel> localCommutes}) = Success;
  const factory CommutesState.empty() = Empty;

  const factory CommutesState.failure(String message, int id) = Failure;
}
