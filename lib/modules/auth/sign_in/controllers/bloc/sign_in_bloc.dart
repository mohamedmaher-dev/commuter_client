import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:commuter_client/core/bloc/main_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_in_event.dart';
part 'sign_in_state.dart';
part 'sign_in_bloc.freezed.dart';

class SignInBloc extends Bloc<SignInEvent, SignInState> {
  final MainBloc mainBloc;
  SignInBloc({required this.mainBloc}) : super(const _Initial()) {
    on<SignInEvent>(
      (event, emit) {
        refresh() {
          emit(SignInState.refresh(id: (Random().nextInt(100) + 1)));
        }

        event.whenOrNull(
          changeTheme: () {
            mainBloc.add(const MainEvent.changeTheme());
            refresh();
          },
          changeLanguage: () {
            mainBloc.add(const MainEvent.changeLan());
            refresh();
          },
        );
      },
    );
  }
}
