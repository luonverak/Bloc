import 'package:bloc2_5/presentation/home/cubit/home_cubit.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _cubit = HomeCubit();

  @override
  void initState() {
    _cubit.onGetProduct();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
