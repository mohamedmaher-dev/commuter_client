part of 'where_to_bloc.dart';

@freezed
class WhereToState with _$WhereToState {
  const factory WhereToState.initial() = _Initial;
  const factory WhereToState.popLoading() = _PopLoading;
  const factory WhereToState.readyToSendRideRequest() = _ReadyToSendRideRequest;
  const factory WhereToState.sendRideRequestSuccess() = _SendRideRequestSuccess;
  const factory WhereToState.sendRideRequestFailure() = _SendRideRequestFailure;
  const factory WhereToState.setOnMap() = _SetOnMap;
}
