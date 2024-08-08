part of 'pick_location_bloc.dart';

@freezed
class PickLocationState with _$PickLocationState {
  const factory PickLocationState.initial() = _Initial;
  const factory PickLocationState.loading() = Loading;
  const factory PickLocationState.ploading() = PLoading;
  const factory PickLocationState.failure() = Failure;
  const factory PickLocationState.success(int id) = Success;
}
