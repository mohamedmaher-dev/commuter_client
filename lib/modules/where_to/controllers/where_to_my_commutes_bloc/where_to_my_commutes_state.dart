part of 'where_to_my_commutes_bloc.dart';

@freezed
class WhereToMyCommutesState with _$WhereToMyCommutesState {
  const factory WhereToMyCommutesState.initial() = _Initial;
  const factory WhereToMyCommutesState.loading() = _Loading;
  const factory WhereToMyCommutesState.success(List<LocalCommuteModel> data) =
      _Success;
  const factory WhereToMyCommutesState.empty() = _Empty;
  const factory WhereToMyCommutesState.failure() = _Failure;
}
