import 'package:bloc2_5/presentation/screen/detail/cubit/detail_cubit.dart';
import 'package:bloc2_5/presentation/screen/detail/cubit/detail_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DetailScreen extends StatelessWidget {
  DetailScreen({super.key, required this.id});
  static const routeDetailScreen = '/DetailScreen';
  final int id;
  final _cubit = DetailCubit();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              title: Text("Product id: $id"),
            ),
            BlocBuilder<DetailCubit, DetailState>(
              bloc: _cubit,
              builder: (context, state) {
                return SliverToBoxAdapter();
              },
            ),
          ],
        ),
      ),
    );
  }
}
