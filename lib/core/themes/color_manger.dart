part of 'app_theme_controller.dart';

class ColorManger {
  ColorManger._();
  static const Color transparent = Colors.transparent;
  static const Color white = Colors.white;
  static const Color black = Colors.black;
  static const Color myBlue = Color(0xff001c51);
  static const Color myGold = Color(0xffcabe90);
  static const Color green = Colors.green;
  static const Color orange = Colors.orange;
  static const Color grey = Colors.grey;
  static Color get primary => colorScheme.primary;
  static Color get primaryContainer => colorScheme.primaryContainer;
  static Color get secondary => colorScheme.secondary;
  static Color get secondaryContainer => colorScheme.secondaryContainer;
  static Color get red => colorScheme.error;
  static Color get textFormbBackground => colorScheme.surfaceVariant;
  static Color get background => colorScheme.background;
  static Color get cardBackground => colorScheme.surface;
  static ColorScheme get colorScheme => AppTheme.themeMode == ThemeMode.light
      ? const ColorScheme(
          brightness: Brightness.light,
          primary: Color(0xff001c51),
          onPrimary: Color(0xffffffff),
          primaryContainer: Color(0xffcabe90),
          onPrimaryContainer: Color(0xff111314),
          secondary: Color(0xffac3306),
          onSecondary: Color(0xffffffff),
          secondaryContainer: Color(0xffffdbcf),
          onSecondaryContainer: Color(0xff141211),
          tertiary: Color(0xff006875),
          onTertiary: Color(0xffffffff),
          tertiaryContainer: Color(0xff95f0ff),
          onTertiaryContainer: Color(0xff0d1414),
          error: Color(0xffb00020),
          onError: Color(0xffffffff),
          errorContainer: Color(0xfffcd8df),
          onErrorContainer: Color(0xff141213),
          background: Color(0xfff8f9fb),
          onBackground: Color(0xff090909),
          surface: Color(0xffcabe90),
          onSurface: Color(0xff090909),
          surfaceVariant: Color(0xffe0e4e8),
          onSurfaceVariant: Color(0xff111112),
          outline: Color(0xff7c7c7c),
          outlineVariant: Color(0xffc8c8c8),
          shadow: Color(0xff000000),
          scrim: Color(0xff000000),
          inverseSurface: Color(0xff101214),
          onInverseSurface: Color(0xfff5f5f5),
          inversePrimary: Color(0xff92c5ee),
          surfaceTint: Color(0xff004881),
        )
      : const ColorScheme(
          brightness: Brightness.dark,
          primary: Color(0xffcabe90),
          onPrimary: Color(0xff101314),
          primaryContainer: Color(0xff001c51),
          onPrimaryContainer: Color(0xffdfe7ee),
          secondary: Color(0xffffb59d),
          onSecondary: Color(0xff141210),
          secondaryContainer: Color(0xff872100),
          onSecondaryContainer: Color(0xfff4e4df),
          tertiary: Color(0xff86d2e1),
          onTertiary: Color(0xff0e1414),
          tertiaryContainer: Color(0xff004e59),
          onTertiaryContainer: Color(0xffdfeced),
          error: Color(0xffcf6679),
          onError: Color(0xff140c0d),
          errorContainer: Color(0xffb1384e),
          onErrorContainer: Color(0xfffbe8ec),
          background: Color(0xff181a1d),
          onBackground: Color(0xffeceded),
          surface: Color(0xff181a1d),
          onSurface: Color(0xffeceded),
          surfaceVariant: Color(0xff3d4146),
          onSurfaceVariant: Color(0xffe0e1e1),
          outline: Color(0xff767d7d),
          outlineVariant: Color(0xff2c2e2e),
          shadow: Color(0xff000000),
          scrim: Color(0xff000000),
          inverseSurface: Color(0xfffafcff),
          onInverseSurface: Color(0xff131314),
          inversePrimary: Color(0xff536577),
          surfaceTint: Color(0xff9fc9ff),
        );

  static Color get random {
    List<Color> colors = [
      Colors.red,
      Colors.blue,
      Colors.green,
      Colors.purple,
      Colors.orange,
      Colors.pink,
      Colors.brown,
      Colors.teal,
      Colors.amber,
      Colors.indigo,
      Colors.cyan,
      Colors.deepPurple,
      Colors.deepOrange,
      Colors.blueGrey,
      Colors.lightBlueAccent,
      Colors.deepPurpleAccent,
      Colors.indigoAccent,
      Colors.purpleAccent,
    ];

    return colors[Random().nextInt(colors.length)];
  }
}
