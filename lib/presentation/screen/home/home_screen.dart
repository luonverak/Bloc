import 'package:bloc2_5/data/model/product_model.dart';
import 'package:bloc2_5/presentation/screen/detail/detail_screen.dart';
import 'package:bloc2_5/presentation/screen/home/cubit/home_cubit.dart';
import 'package:bloc2_5/presentation/screen/home/cubit/home_state.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../widget/widget_loading.dart';

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
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: BlocBuilder<HomeCubit, HomeState>(
          bloc: _cubit,
          builder: (context, state) {
            final records = _cubit.state.listProduct ?? [];

            if (state.loading) {
              return const WidgetLoading();
            }
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomScrollView(
                slivers: [
                  const SliverAppBar(
                    centerTitle: true,
                    title: Text("Bloc with Api"),
                  ),
                  _buildBody(records)
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  _buildBody(List<ProductModel> records) {
    return SliverGrid.builder(
      itemCount: records.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        childAspectRatio: 1 / 1.4,
        mainAxisSpacing: 10,
      ),
      itemBuilder: (context, index) {
        final record = records[index];
        return Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black26,
                  offset: Offset(0, 0),
                  blurRadius: 3,
                )
              ]),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(10),
                    topLeft: Radius.circular(10),
                  ),
                  image: DecorationImage(
                    fit: BoxFit.contain,
                    image: CachedNetworkImageProvider(record.image),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(
                      context,
                      DetailScreen.routeDetailScreen,
                      arguments: record.id,
                    );
                  },
                  child: Text(
                    record.title,
                    maxLines: 2,
                    style: const TextStyle(
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
