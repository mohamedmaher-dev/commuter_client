import 'package:bloc/bloc.dart';
import 'package:commuter_client/modules/auth/sign_in/controllers/sign_in_bloc/sign_in_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'main_event.dart';
part 'main_state.dart';
part 'main_bloc.freezed.dart';

class MainBloc extends Bloc<MainEvent, MainState> {
  late SignInBloc signInBloc;
  MainBloc() : super(const _Initial()) {
    on<MainEvent>(
      (event, emit) {
        event.when(
          started: () {},
        );
      },
    );
  }
}
