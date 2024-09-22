import 'package:bloc/bloc.dart';
import 'package:commuter_client/core/localization/app_localization_controller.dart';
import 'package:commuter_client/core/themes/app_theme_controller.dart';
import 'package:commuter_client/modules/auth/sign_in/controllers/sign_in_bloc/sign_in_bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'main_event.dart';
part 'main_state.dart';
part 'main_bloc.freezed.dart';

class MainBloc extends Bloc<MainEvent, MainState> {
  late SignInBloc signInBloc;
  final AppThemeController appThemeController;
  final AppLocalizationController appLocalizationController;
  MainBloc(this.appThemeController, this.appLocalizationController)
      : super(const _Initial(id: 0)) {
    on<MainEvent>(
      (event, emit) async {
        await event.when(
          started: () {},
          changeTheme: () async {
            await appThemeController.changeThemeMode();
            emit(MainState.initial(id: state.hashCode));
          },
          changeLanguage: (locale) async {
            await appLocalizationController.changeLanguage(locale);
            emit(MainState.initial(id: state.hashCode));
          },
        );
      },
    );
  }
}
