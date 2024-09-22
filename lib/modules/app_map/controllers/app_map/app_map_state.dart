part of 'app_map_bloc.dart';

@freezed
class AppMapState with _$AppMapState {
  const factory AppMapState.initial() = _Initial;
  const factory AppMapState.loading() = _Loading;
  const factory AppMapState.success(int id) = _Success;
  const factory AppMapState.failure() = _Failure;
}
