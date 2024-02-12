import 'package:flutter/material.dart';

enum Pages {
  splash(
    view: Scaffold(
      body: Center(
        child: Text('Splash'),
      ),
    ),
  ),
  home(
    view: Scaffold(
      body: Center(
        child: Hero(tag: '1', child: Text('Home')),
      ),
    ),
  );

  final Widget view;
  const Pages({required this.view});
}

class AppRouter {
  const AppRouter._();
  static _getRoute(Pages page) =>
      MaterialPageRoute(builder: (context) => page.view);

  static push({required BuildContext context, required Pages page}) =>
      Navigator.of(context).push(_getRoute(page));
}
