part of 'di.dart';

_utilsDiInit() {
  di.registerLazySingleton<Language>(() => Language());
  di.registerLazySingleton<DebugPrint>(() => const DebugPrint());
}
