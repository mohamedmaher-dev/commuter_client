import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'where_to_switch_state.dart';
part 'where_to_switch_cubit.freezed.dart';

class WhereToSwitchCubit extends Cubit<WhereToSwitchState> {
  bool femaleOnly = false;
  bool carPooling = false;
  bool visibility = false;
  WhereToSwitchCubit() : super(const WhereToSwitchState.initial(0));
  void changeValue({required WhereToSwitchType type}) {
    switch (type) {
      case WhereToSwitchType.femaleOnly:
        femaleOnly = !femaleOnly;
        break;
      case WhereToSwitchType.carPooling:
        carPooling = !carPooling;
        break;
    }
    emit(WhereToSwitchState.initial(state.hashCode));
  }

  void changeVisibility() {
    visibility = !visibility;
    emit(WhereToSwitchState.initial(state.hashCode));
  }
}

enum WhereToSwitchType { femaleOnly, carPooling }
