part of 'app_theme_controller.dart';

class AppTheme {
  static const String fontFamily = 'Changa';
  static ThemeMode get themeMode => AppThemeController._themeMode;
  static String? get mapStyle =>
      themeMode == ThemeMode.dark ? AppThemeController._darkMapStyle : null;
  static ThemeData get theme => ThemeData(
        colorScheme: ColorManger.colorScheme,
        fontFamily: fontFamily,
        filledButtonTheme: _filledButtonThemeData,
        outlinedButtonTheme: _outlinedButtonThemeData,
        elevatedButtonTheme: _elevatedButtonThemeData,
        textButtonTheme: _textButtonThemeData,
        inputDecorationTheme: _inputDecorationTheme,
        pageTransitionsTheme: _pageTransitionsTheme,
        iconButtonTheme: _iconButtonThemeData,
        chipTheme: _chipThemeData,
        expansionTileTheme: _expansionTileThemeData,
        bottomSheetTheme: _bottomSheetThemeData,
        appBarTheme: _appBarThemeData,
      );

  static AppBarTheme get _appBarThemeData => AppBarTheme(
        backgroundColor: ColorManger.transparent,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarIconBrightness:
              themeMode == ThemeMode.dark ? Brightness.light : Brightness.dark,
        ),
      );

  static BottomSheetThemeData get _bottomSheetThemeData => BottomSheetThemeData(
        backgroundColor: themeMode == ThemeMode.dark ? null : ColorManger.white,
        showDragHandle: true,
      );

  static final _expansionTileThemeData = ExpansionTileThemeData(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(100.r),
    ),
  );

  static ChipThemeData get _chipThemeData => ChipThemeData(
        color: MaterialStatePropertyAll(ColorManger.primary),
        iconTheme: IconThemeData(color: ColorManger.primaryContainer),
        labelStyle: TextStyle(
          color: ColorManger.primaryContainer,
          fontWeight: FontWeight.bold,
          fontFamily: AppTheme.fontFamily,
        ),
        side: BorderSide(color: ColorManger.primaryContainer),
        labelPadding: EdgeInsets.symmetric(horizontal: 10.w),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            10.r,
          ),
        ),
      );

  static final IconButtonThemeData _iconButtonThemeData = IconButtonThemeData(
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
  static final FilledButtonThemeData _filledButtonThemeData =
      FilledButtonThemeData(
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
          fontFamily: fontFamily,
        ),
      ),
    ),
  );

  static final OutlinedButtonThemeData _outlinedButtonThemeData =
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

  static final ElevatedButtonThemeData _elevatedButtonThemeData =
      ElevatedButtonThemeData(
    style: ButtonStyle(
      shape: MaterialStatePropertyAll(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.r),
        ),
      ),
    ),
  );
  static final TextButtonThemeData _textButtonThemeData = TextButtonThemeData(
    style: ButtonStyle(
      shape: MaterialStatePropertyAll(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.r),
        ),
      ),
    ),
  );

  static final InputDecorationTheme _inputDecorationTheme =
      InputDecorationTheme(
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10.r),
    ),
    filled: false,
  );

  static const PageTransitionsTheme _pageTransitionsTheme =
      PageTransitionsTheme(
    builders: {
      TargetPlatform.android: CupertinoPageTransitionsBuilder(),
      TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
    },
  );
}
