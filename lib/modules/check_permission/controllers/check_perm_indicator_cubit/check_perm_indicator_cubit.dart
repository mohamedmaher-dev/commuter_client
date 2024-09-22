import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'check_perm_indicator_state.dart';
part 'check_perm_indicator_cubit.freezed.dart';

class CheckPermIndicatorCubit extends Cubit<CheckPermIndicatorState> {
  CheckPermIndicatorCubit() : super(const CheckPermIndicatorState.initial(0));

  void next(int newPage) {
    emit(CheckPermIndicatorState.initial(newPage));
  }
}
