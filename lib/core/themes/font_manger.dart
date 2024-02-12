part of 'app_theme.dart';

class FontManger {
  FontManger._();
  static String get font =>
      di<MainBloc>().locale.languageCode == 'en' ? 'Lato' : 'Changa';
}
