import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:commuter_client/core/localization/controller/localization_bloc.dart';
import 'package:commuter_client/core/themes/controller/app_theme_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'main_event.dart';
part 'main_state.dart';
part 'main_bloc.freezed.dart';

class MainBloc extends Bloc<MainEvent, MainState> {
  final AppThemeBloc appThemeBloc;
  final LocalizationBloc localizationBloc;
  MainBloc({
    required this.appThemeBloc,
    required this.localizationBloc,
  }) : super(const _Initial()) {
    on<MainEvent>(
      (event, emit) {
        event.whenOrNull(
          changeLan: () {
            localizationBloc.add(const LocalizationEvent.change());
            emit(MainState.refresh(id: (Random().nextInt(100) + 1)));
          },
          changeTheme: () async {
            appThemeBloc.add(const AppThemeEvent.changeTheme());
            emit(MainState.refresh(id: (Random().nextInt(100) + 1)));
          },
        );
      },
    );
  }
}
