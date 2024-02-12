import 'package:bloc/bloc.dart';
import 'package:commuter_client/core/bloc/bloc_observer.dart';
import 'package:commuter_client/core/di/di.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'main_event.dart';
part 'main_state.dart';
part 'main_bloc.freezed.dart';

class MainBloc extends Bloc<MainEvent, MainState> {
  final Locale locale = const Locale('ar');
  MainBloc() : super(const _Initial()) {
    on<MainEvent>(
      (event, emit) {
        event.when(
          started: () {
            Bloc.observer = di<MyBlocObserver>();
          },
        );
      },
    );
  }
}
