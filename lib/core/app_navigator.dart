import 'package:bloc2_5/presentation/screen/detail/detail_screen.dart';
import 'package:bloc2_5/presentation/screen/home/home_screen.dart';
import 'package:flutter/material.dart';

class AppNavigator {
  static Route<dynamic>? navigator(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (context) => const HomeScreen(),
        );
      case DetailScreen.routeDetailScreen:
        final arg = settings.arguments as int;
        return MaterialPageRoute(
          builder: (context) => DetailScreen(
            id: arg,
          ),
        );
      default:
        return MaterialPageRoute(
          builder: (context) => const HomeScreen(),
        );
    }
  }
}
