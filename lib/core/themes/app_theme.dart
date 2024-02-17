part of 'controller/app_theme_bloc.dart';

class _AppTheme {
  static const String _fontFamily = 'Changa';
  ThemeData get theme => ThemeData(
        colorScheme: ColorManger.colorScheme,
        fontFamily: _fontFamily,
        filledButtonTheme: _filledButtonThemeData,
        outlinedButtonTheme: _outlinedButtonThemeData,
        elevatedButtonTheme: _elevatedButtonThemeData,
        textButtonTheme: _textButtonThemeData,
        inputDecorationTheme: _inputDecorationTheme,
        pageTransitionsTheme: _pageTransitionsTheme,
      );
  final FilledButtonThemeData _filledButtonThemeData = FilledButtonThemeData(
    style: ButtonStyle(
      minimumSize: MaterialStatePropertyAll(
        Size(
          double.infinity,
          40.h,
        ),
      ),
      shape: MaterialStatePropertyAll(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.r),
        ),
      ),
      textStyle: MaterialStatePropertyAll(
        TextStyle(
          fontSize: 15.sp,
          fontWeight: FontWeight.bold,
          fontFamily: _fontFamily,
        ),
      ),
    ),
  );

  final OutlinedButtonThemeData _outlinedButtonThemeData =
      OutlinedButtonThemeData(
    style: ButtonStyle(
      minimumSize: MaterialStatePropertyAll(
        Size(
          double.infinity,
          40.h,
        ),
      ),
      shape: MaterialStatePropertyAll(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.r),
        ),
      ),
    ),
  );

  final ElevatedButtonThemeData _elevatedButtonThemeData =
      ElevatedButtonThemeData(
    style: ButtonStyle(
      shape: MaterialStatePropertyAll(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.r),
        ),
      ),
    ),
  );
  final TextButtonThemeData _textButtonThemeData = TextButtonThemeData(
    style: ButtonStyle(
      shape: MaterialStatePropertyAll(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.r),
        ),
      ),
    ),
  );

  final InputDecorationTheme _inputDecorationTheme = InputDecorationTheme(
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10.r),
      borderSide: BorderSide.none,
    ),
    filled: true,
  );

  final PageTransitionsTheme _pageTransitionsTheme = const PageTransitionsTheme(
    builders: {
      TargetPlatform.android: CupertinoPageTransitionsBuilder(),
    },
  );
}
