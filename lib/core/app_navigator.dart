import 'package:bloc2_5/presentation/home/home_screen.dart';
import 'package:flutter/material.dart';

class AppNavigator {
  static Route<dynamic>? navigator(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (context) => const HomeScreen(),
        );
      default:
        return MaterialPageRoute(
          builder: (context) => const HomeScreen(),
        );
    }
  }
}
