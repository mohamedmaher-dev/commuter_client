import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'my_commmutes_tab_state.dart';
part 'my_commmutes_tab_cubit.freezed.dart';

class MyCommmutesTabCubit extends Cubit<MyCommmutesTabState> {
  MyCommmutesTabCubit() : super(const MyCommmutesTabState.initial());
  MyCommutesTab page = MyCommutesTab.myCommutes;

  void changePage(MyCommutesTab page) {
    this.page = page;
    emit(MyCommmutesTabState.changePage(page: page));
  }
}

enum MyCommutesTab {
  myCommutes,
  scheduledTrips,
}
