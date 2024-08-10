import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'localization_event.dart';
part 'localization_state.dart';
part 'localization_bloc.freezed.dart';

class LocalizationBloc extends Bloc<LocalizationEvent, LocalizationState> {
  Locale locale = const Locale('ar');
  LocalizationBloc() : super(const _Initial()) {
    on<LocalizationEvent>(
      (event, emit) {
        event.whenOrNull(
          changeLanguage: () {
            if (locale.languageCode == 'ar') {
              locale = const Locale('en');
            } else {
              locale = const Locale('ar');
            }
            emit(LocalizationState.refresh(locale: locale));
          },
        );
      },
    );
  }
}
