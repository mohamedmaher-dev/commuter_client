part of 'app_theme_bloc.dart';

@freezed
class AppThemeState with _$AppThemeState {
  const factory AppThemeState.initial() = _Initial;
  const factory AppThemeState.refresh({required ThemeMode themeMode}) =
      _Refresh;
}
