import 'package:flutter/material.dart';
import 'package:tickets/presentation/pages/login/login_page.dart';

import '../pages/home/home_page.dart';

class Routes {
  static const login = '/';
  static const home = '/home';

  static Route<dynamic> generateRoute(RouteSettings routeSettings) {
    try {
      final Map<String, dynamic>? args =
          routeSettings.arguments as Map<String, dynamic>?;
      args ?? <String, dynamic>{};
      switch (routeSettings.name) {
        case login:
          return MaterialPageRoute(
            settings: routeSettings,
            builder: (_) => const LoginPage(),
          );
        case home:
          return MaterialPageRoute(
            settings: routeSettings,
            builder: (_) => const HomePage(),
          );
        default:
          return MaterialPageRoute(
            settings: routeSettings,
            builder: (_) => const HomePage(),
          );
      }
    } catch (e) {
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const HomePage(),
      );
    }
  }
}
