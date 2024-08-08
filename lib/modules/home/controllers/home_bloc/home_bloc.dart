import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  int currentPage = 0;

  HomeBloc() : super(const _Initial()) {
    on<HomeEvent>((event, emit) {
      event.when(
        started: () {},
        changePage: (newPage) {
          currentPage = newPage;
          emit(HomeState.refresh(state.hashCode));
        },
      );
    });
  }
}
