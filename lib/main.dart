import 'package:bloc2_5/core/app_navigator.dart';
import 'package:bloc2_5/core/app_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bloc2_5/core/injection.dart' as get_it;

void main() {
  get_it.setup();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: appProvider,
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        onGenerateRoute: AppNavigator.navigator,
      ),
    );
  }
}
