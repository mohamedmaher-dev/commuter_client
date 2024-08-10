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
        iconButtonTheme: _iconButtonThemeData,
        chipTheme: _chipThemeData,
      );

  final ChipThemeData _chipThemeData = ChipThemeData(
    color: MaterialStatePropertyAll(ColorManger.primary),
    iconTheme: IconThemeData(color: ColorManger.primaryContainer),
    labelStyle: TextStyle(
      color: ColorManger.primaryContainer,
      fontWeight: FontWeight.bold,
    ),
    side: BorderSide(color: ColorManger.primaryContainer),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(
        100.r,
      ),
    ),
  );

  final IconButtonThemeData _iconButtonThemeData = IconButtonThemeData(
    style: ButtonStyle(
      shape: MaterialStatePropertyAll(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            10.r,
          ),
        ),
      ),
    ),
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
    ),
    filled: false,
  );

  final PageTransitionsTheme _pageTransitionsTheme = const PageTransitionsTheme(
    builders: {
      TargetPlatform.android: CupertinoPageTransitionsBuilder(),
    },
  );
}
