import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ride_request_switch_state.dart';
part 'ride_request_switch_cubit.freezed.dart';

class RideRequestSwitchCubit extends Cubit<RideRequestSwitchState> {
  bool femaleOnly = false;
  bool carPooling = false;
  RideRequestSwitchCubit() : super(RideRequestSwitchState.initial(0));

  void toggleFemaleOnly() {
    femaleOnly = !femaleOnly;
    emit(RideRequestSwitchState.initial(state.hashCode));
  }

  void toggleCarPooling() {
    carPooling = !carPooling;
    emit(RideRequestSwitchState.initial(state.hashCode));
  }
}
